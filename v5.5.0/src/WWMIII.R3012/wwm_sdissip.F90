      SUBROUTINE SDISSIP (F, FL, IJS, IJL, IG, SL, F1MEAN, XKMEAN, &
     &                    PHIEPS, TAUWD, MIJ, SSDS, DSSDS)

! ----------------------------------------------------------------------

!**** *SDISSIP* - COMPUTATION OF DISSIPATION SOURCE FUNCTION.

!     S.D.HASSELMANN.
!     MODIFIED TO SHALLOW WATER : G. KOMEN , P. JANSSEN
!     OPTIMIZATION : L. ZAMBRESKY
!     J. BIDLOT   ECMWF  FEBRUARY 1997   ADD SL IN SUBROUTINE CALL
!     J. BIDLOT   ECMWF  NOVEMBER 2004  REFORMULATION BASED ON XKMEAN
!                                       AND F1MEAN.
!     P. JANSSEN  ECMWF  JANUARY 2006   ADD BOTTOM-INDUCED DISSIPATION.

!*    PURPOSE.
!     --------
!       COMPUTE DISSIPATION SOURCE FUNCTION AND STORE ADDITIVELY INTO
!       NET SOURCE FUNCTION ARRAY. ALSO COMPUTE FUNCTIONAL DERIVATIVE
!       OF DISSIPATION SOURCE FUNCTION.

!**   INTERFACE.
!     ----------

!       *CALL* *SDISSIP (F, FL, IJS, IJL, SL, F1MEAN, XKMEAN,)*
!                        PHIEPS, TAUWD, MIJ, LCFLX)
!          *F*   - SPECTRUM.
!          *FL*  - DIAGONAL MATRIX OF FUNCTIONAL DERIVATIVE
!          *IJS* - INDEX OF FIRST GRIDPOINT
!          *IJL* - INDEX OF LAST GRIDPOINT
!          *IG*  - BLOCK NUMBER
!          *SL*  - TOTAL SOURCE FUNCTION ARRAY
!          *F1MEAN* - MEAN FREQUENCY BASED ON 1st MOMENT.
!          *XKMEAN* - MEAN WAVE NUMBER BASED ON 1st MOMENT.
!          *PHIEPS* - ENERGY FLUX FROM WAVES TO OCEAN INTEGRATED OVER 
!                     THE PROGNOSTIC RANGE.
!          *TAUWD*  - DISSIPATION STRESS INTEGRATED OVER
!                     THE PROGNOSTIC RANGE.
!          *MIJ*    - LAST FREQUENCY INDEX OF THE PROGNOSTIC RANGE.
!          *LCFLX*  - TRUE IF THE CALCULATION FOR THE FLUXES ARE 
!                     PERFORMED.


!     METHOD.
!     -------

!       SEE REFERENCES.

!     EXTERNALS.
!     ----------

!       NONE.

!     REFERENCE.
!     ----------

!       G.KOMEN, S. HASSELMANN AND K. HASSELMANN, ON THE EXISTENCE
!          OF A FULLY DEVELOPED WINDSEA SPECTRUM, JGR, 1984.

! ----------------------------------------------------------------------

!      USE YOWFRED  , ONLY : FR       ,DELTH    ,DFIM     ,FRATIO
!      USE YOWMEAN  , ONLY : EMEAN
!      USE YOWPARAM , ONLY : NANG     ,NFRE
!      USE YOWPCONS , ONLY : G        ,ZPI      ,ROWATER
!      USE YOWSHAL  , ONLY : DEPTH    ,TFAK     ,INDEP
!      USE YOWSTAT  , ONLY : ISHALLO  ,LBIWBK
!      USE YOMHOOK   ,ONLY : LHOOK    ,DR_HOOK
!      USE YOWTEST  , ONLY : IU06     ,ITEST

       USE DATAPOOL, ONLY : FR, WETAIL, FRTAIL, WP1TAIL, ISHALLO, EMEAN, &
     &                      DFIM, DFIMOFR, DFFR, DFFR2, WK, RKIND, LCFLX, &
     &                      IUSTAR, IALPHA, USTARM, TAUT, STAT, IU06, ICOMP, &
     &                      DELUST, DELALP, LBIWBK, DEP, LBIWBK, ITEST, FRATIO, &
     &                      DELTH => DDIR, LOUTWAM, TESTNODE, &
     &                      G => G9, &
     &                      ZPI => PI2, &
     &                      EPSMIN => SMALL, &
     &                      NFRE => MSC, &
     &                      NANG => MDC, &
     &                      INDEP => DEP, &
     &                      ROWATER => RHOW 
      IMPLICIT NONE

! ----------------------------------------------------------------------

      INTEGER :: IJ, IJS, IJL, M, K, MIJ(IJS:IJL), IC, IG
      REAL(rkind) :: SCDFM, ROG, ALPH, ARG, CONSD, CONSS, X, SDISS, EMAX, Q_OLD, Q, REL_ERR
      REAL(rkind),DIMENSION(IJS:IJL,NANG,NFRE) :: F,FL,SL
      REAL(rkind),DIMENSION(NANG,NFRE) :: SSDS,DSSDS 
      REAL(rkind),DIMENSION(IJS:IJL) :: F1MEAN, XKMEAN, PHIEPS, TAUWD, CM
      REAL(rkind),DIMENSION(IJS:IJL) :: TEMP1, SDS
      REAL(rkind),DIMENSION(NFRE) :: FAC
      REAL(rkind),DIMENSION(IJS:IJL,NFRE) :: CONSTFM

      REAL(rkind), PARAMETER :: CDIS = 1.33d0
      REAL(rkind), PARAMETER :: DELTA = 0.5d0
      REAL(rkind), PARAMETER :: ALPH_B_J = 1.d0
      REAL(rkind), PARAMETER :: GAM_B_J = 0.8d0
      REAL(rkind), PARAMETER :: COEF_B_J=2*ALPH_B_J
      REAL(rkind), PARAMETER :: DEPTHTRS = 50.d0


      IF (LOUTWAM .AND. IJS == TESTNODE) WRITE(111119,*) '------- STARTING DISSIPATION -------'

      !REAL ZHOOK_HANDLE

      !IF (LHOOK) CALL DR_HOOK('SDISSIP',0,ZHOOK_HANDLE)
! ----------------------------------------------------------------------

!*    1. ADDING DISSIPATION AND ITS FUNCTIONAL DERIVATIVE TO NET SOURCE
!*       FUNCTION AND NET SOURCE FUNCTION DERIVATIVE.
!        --------------------------------------------------------------
      IF (LOUTWAM .AND. IJS == TESTNODE) WRITE(111119,'(5F20.10)') SUM(F), SUM(FL), SUM(SL), &
     &                F1MEAN, XKMEAN
                       

      ROG = ROWATER*G

      IF (LCFLX) THEN
        PHIEPS(IJS:IJL) = 0.
        TAUWD(IJS:IJL) = 0.
!       !!!! CONSTFM is only defined up to M=MIJ(IJ)
        SCDFM = 0.5*DELTH*(1.-1./FRATIO)
        DO IJ=IJS,IJL
          DO M=1,MIJ(IJ)-1
            CONSTFM(IJ,M) = ROG*DFIM(M)
          ENDDO
          CONSTFM(IJ,MIJ(IJ)) = ROG*SCDFM*FR(MIJ(IJ))
        ENDDO
      ENDIF

      IF (ISHALLO.EQ.1) THEN
        CONSD = -CDIS*ZPI**9/G**4
        DO IJ=IJS,IJL
          SDS(IJ)=CONSD*F1MEAN(IJ)*EMEAN(IJ)**2*F1MEAN(IJ)**8
        ENDDO
        DO M=1,NFRE
          FAC(M) = ZPI*FR(M)
          CM(IJS)  = FAC(M)/G
          DO IJ=IJS,IJL
            X         = (FR(M)/F1MEAN(IJ))**2
            TEMP1(IJ) = SDS(IJ)*( (1.-DELTA)*X + DELTA*X**2)
          ENDDO
          DO K=1,NANG
            DO IJ=IJS,IJL
              SDISS = TEMP1(IJ)*F(IJ,K,M)
              SL(IJ,K,M) = SL(IJ,K,M)+TEMP1(IJ)*F(IJ,K,M)
              FL(IJ,K,M) = FL(IJ,K,M)+TEMP1(IJ)
              IF (LCFLX.AND.M.LE.MIJ(IJ)) THEN
                PHIEPS(IJ) = PHIEPS(IJ)+SDISS*CONSTFM(IJ,M)
                TAUWD(IJ)  = TAUWD(IJ)+CM(IJS)*SDISS*CONSTFM(IJ,M)
              ENDIF
            ENDDO
          ENDDO     
        ENDDO
      ELSE !SHALLOW
        IF (ITEST.GE.2) THEN
          WRITE(IU06,*) '   SUB. SDISSIP: START DO-LOOP (ISHALLO=0)'
          CALL FLUSH (IU06)
        ENDIF
        CONSS = -CDIS*ZPI
        DO IJ=IJS,IJL
          SDS(IJ)=CONSS*F1MEAN(IJ)*EMEAN(IJ)**2*XKMEAN(IJ)**4
        ENDDO

        DO M=1,NFRE
          FAC(M) = ZPI*FR(M)
          DO IJ=IJS,IJL
            !X         = TFAK(INDEP(IJ),M)/XKMEAN(IJ)
            X         = WK(M,IJ)/XKMEAN(IJ)
            TEMP1(IJ) = SDS(IJ)*( (1.-DELTA)*X + DELTA*X**2)
            !CM(IJ)    = TFAK(INDEP(IJ),M)/FAC(M)
            CM(IJ)    = WK(M,IJ)/FAC(M)
          ENDDO
          DO K=1,NANG
            DO IJ=IJS,IJL
              SDISS = TEMP1(IJ)*F(IJ,K,M)
              SL(IJ,K,M) = SL(IJ,K,M)+TEMP1(IJ)*F(IJ,K,M)
              FL(IJ,K,M) = FL(IJ,K,M)+TEMP1(IJ)
              SSDS(K,M)  = TEMP1(IJ)*F(IJ,K,M)
              DSSDS(K,M) = TEMP1(IJ)
              IF (LCFLX.AND.M.LE.MIJ(IJ)) THEN
                PHIEPS(IJ) = PHIEPS(IJ)+SDISS*CONSTFM(IJ,M)
                TAUWD(IJ)  = TAUWD(IJ)+CM(IJS)*SDISS*CONSTFM(IJ,M)
              ENDIF
            ENDDO
          ENDDO
        ENDDO
    
        DO IJ=IJS,IJL 
          IF (LOUTWAM .AND. IJS == TESTNODE) WRITE(111119,'(5F20.10)')SDS(IJ),TEMP1(IJ),&
     &                   CM(IJ)
        ENDDO
!
!*    2. COMPUTATION OF BOTTOM-INDUCED DISSIPATION COEFFICIENT.
!        ----------- -- -------------- -----------------------
!
!       (FOLLOWING BATTJES-JANSSEN AND BEJI)
        IF(LBIWBK .and. .false.) THEN
          DO IJ=IJS,IJL
             IF(DEP(IJ).LT.DEPTHTRS) THEN
               EMAX = (GAM_B_J*DEP(IJ))**2/16.
               ALPH = 2.*EMAX/(EMEAN(IJ))
               ARG  = MIN(ALPH,50.)
               Q_OLD = EXP(-ARG)
               DO IC=1,15
                 Q = EXP(-ARG*(1.-Q_OLD))
                 REL_ERR=ABS(Q-Q_OLD)/Q_OLD
                 IF(REL_ERR.LT.0.01) EXIT
                 Q_OLD = Q
               ENDDO
               SDS(IJ) = COEF_B_J*ALPH*Q*F1MEAN(IJ)
               !IF (IJ == 339) write(*,'(I10,8F20.10)') IJ, DEP(IJ), SDS(IJ), Q, COEF_B_J, ALPH, F1MEAN(IJ), 4*SQRT(EMAX), 4*SQRT(EMEAN(IJ))
             ENDIF
          ENDDO 
   
          DO M=1,NFRE
             DO K=1,NANG
                DO IJ=IJS,IJL
                  IF(DEP(IJ).LT.DEPTHTRS) THEN
                    !SL(IJ,K,M) = SL(IJ,K,M)-SDS(IJ)*F(IJ,K,M)
                    !FL(IJ,K,M) = FL(IJ,K,M)-SDS(IJ)
                    !SSDS(K,M)  = -SDS(IJ)*F(IJ,K,M)
                    !DSSDS(K,M) = -SDS(IJ)
                  ENDIF
                ENDDO
             ENDDO
          ENDDO
        ENDIF
     
!SHALLOW
      ENDIF

      IF (LOUTWAM .AND. IJS == TESTNODE) WRITE(111119,'(2F30.20)') SUM(FL), SUM(SL)
      IF (LOUTWAM .AND. IJS == TESTNODE) WRITE(111119,*) '------- FINISHED DISSIPATION -------' 

      !IF (LHOOK) CALL DR_HOOK('SDISSIP',1,ZHOOK_HANDLE)

      RETURN
      END SUBROUTINE SDISSIP

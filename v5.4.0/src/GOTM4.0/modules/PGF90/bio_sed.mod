V26 bio_sed
11 bio_sed.F90 S582 0
04/13/2014  16:45:11
enduse
D 208 21 9 2 261 267 0 0 1 0 0
 3 262 3 3 263 263
 2 264 263 2 265 266
D 211 21 9 3 268 270 0 0 1 0 0
 3 262 3 3 263 263
 3 262 263 3 263 263
 2 264 269 2 265 266
D 214 21 9 3 268 270 0 0 1 0 0
 3 262 3 3 263 263
 3 262 263 3 263 263
 2 264 269 2 265 266
S 582 24 0 0 0 8 1 0 4658 10015 0 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 bio_sed
S 766 6 4 0 0 6 767 582 6242 0 1000 A 0 0 0 0 0 0 0 0 0 0 0 0 777 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 init_bio_sed
S 767 6 4 0 0 6 768 582 6255 0 1000 A 0 0 0 0 0 4 0 0 0 0 0 0 777 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 init_var_sed
S 768 6 4 0 0 8 769 582 6268 0 1000 A 0 0 0 0 0 8 0 0 0 0 0 0 777 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 var_info_sed
S 769 6 4 0 0 8 770 582 6281 0 1000 A 0 0 0 0 0 12 0 0 0 0 0 0 777 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 do_bio_sed
S 770 6 4 0 0 8 1 582 6292 0 1000 A 0 0 0 0 0 16 0 0 0 0 0 0 777 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 end_bio_sed
S 771 6 4 0 0 9 773 582 6304 80001c 0 A 0 0 0 0 0 0 0 0 0 0 0 0 778 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 c_initial
S 773 6 4 0 0 9 1 582 6318 80001c 0 A 0 0 0 0 0 8 0 0 0 0 0 0 778 0 0 0 0 0 0 0 0 0 0 582 0 0 0 0 w_c
S 777 11 0 0 0 8 765 582 6335 40800000 801000 A 0 0 0 0 0 20 0 0 766 770 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _bio_sed$0
S 778 11 0 0 0 8 777 582 6346 40800010 801000 A 0 0 0 0 0 16 0 0 771 773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _bio_sed$14
S 779 23 5 0 0 0 783 582 6242 0 0 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_bio_sed
S 780 1 3 1 0 6 1 779 6358 14 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 namlst
S 781 1 3 1 0 28 1 779 6365 14 43000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fname
S 782 1 3 1 0 6 1 779 3864 14 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 unit
S 783 14 5 0 0 0 1 779 6242 0 400000 A 0 0 0 0 0 0 0 2 3 0 0 0 0 0 0 0 0 0 0 0 0 75 0 582 0 0 0 0 init_bio_sed
F 783 3 780 781 782
S 784 23 5 0 0 0 786 582 6255 0 0 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_var_sed
S 785 1 3 1 0 6 1 784 6371 14 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nlev
S 786 14 5 0 0 0 1 784 6255 0 400000 A 0 0 0 0 0 0 0 6 1 0 0 0 0 0 0 0 0 0 0 0 0 127 0 582 0 0 0 0 init_var_sed
F 786 1 785
S 787 23 5 0 0 0 788 582 6268 0 0 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 var_info_sed
S 788 14 5 0 0 0 1 787 6268 0 400000 A 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 168 0 582 0 0 0 0 var_info_sed
F 788 0
S 789 23 5 0 0 0 796 582 6281 0 0 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 do_bio_sed
S 790 1 3 1 0 16 1 789 6376 14 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 first
S 791 6 3 1 0 6 1 789 6371 800014 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nlev
S 792 7 3 2 0 211 1 789 6382 800214 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 pp
S 793 7 3 2 0 214 1 789 6385 800214 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dd
S 794 6 3 1 0 6 1 789 4684 800014 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 numc
S 795 7 3 1 0 208 1 789 4792 800214 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cc
S 796 14 5 0 0 0 1 789 6281 200 400000 A 0 0 0 0 0 0 0 9 6 0 0 0 0 0 0 0 0 0 0 0 0 198 0 582 0 0 0 0 do_bio_sed
F 796 6 790 794 791 795 792 793
S 797 6 1 0 0 6 1 789 6388 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_261
S 798 6 1 0 0 6 1 789 6396 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_262
S 799 6 1 0 0 6 1 789 6404 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_265
S 800 6 1 0 0 6 1 789 6412 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_267
S 801 6 1 0 0 6 1 789 6420 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3
S 802 6 1 0 0 6 1 789 6426 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_270
S 803 6 1 0 0 6 1 789 6434 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_272
S 804 6 1 0 0 6 1 789 6442 40800016 3000 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_274
S 805 23 5 0 0 0 806 582 6292 0 0 A 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 end_bio_sed
S 806 14 5 0 0 0 1 805 6292 0 400000 A 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 237 0 582 0 0 0 0 end_bio_sed
F 806 0
A 261 1 0 0 0 6 801 0 0 0 0 0 0 0 0 0 0 0 0 0
A 262 1 0 0 0 6 794 0 0 0 0 0 0 0 0 0 0 0 0 0
A 263 1 0 0 0 6 797 0 0 0 0 0 0 0 0 0 0 0 0 0
A 264 1 0 0 0 6 791 0 0 0 0 0 0 0 0 0 0 0 0 0
A 265 1 0 0 198 6 798 0 0 0 0 0 0 0 0 0 0 0 0 0
A 266 1 0 0 0 6 799 0 0 0 0 0 0 0 0 0 0 0 0 0
A 267 1 0 0 0 6 800 0 0 0 0 0 0 0 0 0 0 0 0 0
A 268 1 0 0 0 6 804 0 0 0 0 0 0 0 0 0 0 0 0 0
A 269 1 0 0 0 6 802 0 0 0 0 0 0 0 0 0 0 0 0 0
A 270 1 0 0 0 6 803 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z

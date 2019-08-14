/*
 * Copyright 1997, Regents of the University of Minnesota
 *
 * par_metis.h
 *
 * This file includes all necessary header files
 *
 * Started 8/27/94
 * George
 *
 * $Id: parmetislib.h,v 1.1.2.1 2005/04/04 17:06:27 tjcamp Exp $
 */

/*
#define DEBUG			1
#define DMALLOC			1
*/

#include <stdheaders.h>
#include "../parmetis.h"

#ifdef DMALLOC
#include <dmalloc.h>
#endif

#include <rename.h>
#include <defs.h>
#include <struct.h>
#include <macros.h>
#include <proto.h>

"""
The following Cython script (http:www.cython.org) was run using cython version 0.20 based on python 2.7.6 (http://www.python.org), numpy 1.8.1 (http:www.SciPy.org), and scipy 0.13.3 (http://www.SciPy.org). This code was run on a workstation comprised of 16 2.9GHz E5-2690 Xeon CPU cores (32 cores with hyperthreading) and 128GB DDR3 1600Mhz memory running Gentoo Linux. With this configuration, the script runs in approximately 14 minutes.

"""

cimport cython
from time import time as what_time
from random import choice, gauss
import numpy as np
cimport numpy as np
from numpy.random import *
from scipy.stats.mstats import *
from scipy.interpolate import interp1d
seed()

DTYPE = np.float
ctypedef np.float_t DTYPE_T

cdef extern from "math.h":
	double exp(double x)
	double log(double x)
	double sin(double x)
	double cos(double x)

begin = what_time()
print begin

# MAPS
### MAP 1 ###

cdef list rows=[range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	range(40),
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[]]

#map 1, one quarter all in upper left
#test=fav+ufav
cdef list tmap1x10 = []
cdef list temp = []
cdef list r
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap1x10.append(temp)
	temp=[]

### MAP 1 ###
cdef list tmap1x8 = []
rows = []

rows=[range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	range(32),
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[]]

#map 1, one quarter all in upper left
#test=fav+ufav

temp = []

for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap1x8.append(temp)
	temp=[]

### MAP 1 ###
cdef list tmap1x6 = []
rows = []

rows=[range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	range(24),
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[]]

#map 1, one quarter all in upper left
#test=fav+ufav

temp = []

for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap1x6.append(temp)
	temp=[]

### MAP 1 ###
cdef list tmap1x4 = []
rows = []

rows=[range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	range(16),
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[],
	[]]

#map 1, one quarter all in upper left
#test=fav+ufav

temp = []

for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap1x4.append(temp)
	temp=[]


### MAP 4 ##
cdef list tmap4x10 = []
rows = []

rows=[[], #1
	[], #2
	[], #3
	[], #4
	[], #5
	[], #6
	range(6,26)+range(38,58), #7
	range(6,26)+range(38,58), #8
	range(6,26)+range(38,58), #9
	range(6,26)+range(38,58), #10
	range(6,26)+range(38,58), #11
	range(6,26)+range(38,58), #12
	range(6,26)+range(38,58), #13
	range(6,26)+range(38,58), #14
	range(6,26)+range(38,58), #15
	range(6,26)+range(38,58), #16
	range(6,26)+range(38,58), #17
	range(6,26)+range(38,58), #18
	range(6,26)+range(38,58), #19
	range(6,26)+range(38,58), #20
	range(6,26)+range(38,58), #21
	range(6,26)+range(38,58), #22
	range(6,26)+range(38,58), #23
	range(6,26)+range(38,58), #24
	range(6,26)+range(38,58), #25
	range(6,26)+range(38,58), #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	[], #33
	[], #34
	[], #35
	[], #36
	[], #37
	[], #38
	range(6,26)+range(38,58), #39
	range(6,26)+range(38,58), #40
	range(6,26)+range(38,58), #41
	range(6,26)+range(38,58), #42
	range(6,26)+range(38,58), #43
	range(6,26)+range(38,58), #44
	range(6,26)+range(38,58), #45
	range(6,26)+range(38,58), #46
	range(6,26)+range(38,58), #47
	range(6,26)+range(38,58), #48
	range(6,26)+range(38,58), #49
	range(6,26)+range(38,58), #50
	range(6,26)+range(38,58), #51
	range(6,26)+range(38,58), #52
	range(6,26)+range(38,58), #53
	range(6,26)+range(38,58), #54
	range(6,26)+range(38,58), #55
	range(6,26)+range(38,58), #56
	range(6,26)+range(38,58), #57
	range(6,26)+range(38,58), #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #64

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap4x10.append(temp)
	temp=[]


### MAP 4 ##
cdef list tmap4x8 = []
rows = []

rows=[[], #1
	[], #2
	[], #3
	[], #4
	[], #5
	[], #6
	[], #7
	[], #8
	range(8,24)+range(40,56), #9
	range(8,24)+range(40,56), #10
	range(8,24)+range(40,56), #11
	range(8,24)+range(40,56), #12
	range(8,24)+range(40,56), #13
	range(8,24)+range(40,56), #14
	range(8,24)+range(40,56), #15
	range(8,24)+range(40,56), #16
	range(8,24)+range(40,56), #17
	range(8,24)+range(40,56), #18
	range(8,24)+range(40,56), #19
	range(8,24)+range(40,56), #20
	range(8,24)+range(40,56), #21
	range(8,24)+range(40,56), #22
	range(8,24)+range(40,56), #23
	range(8,24)+range(40,56), #24
	[], #25
	[], #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	[], #33
	[], #34
	[], #35
	[], #36
	[], #37
	[], #38
	[], #39
	[], #40
	range(8,24)+range(40,56), #41
	range(8,24)+range(40,56), #42
	range(8,24)+range(40,56), #43
	range(8,24)+range(40,56), #44
	range(8,24)+range(40,56), #45
	range(8,24)+range(40,56), #46
	range(8,24)+range(40,56), #47
	range(8,24)+range(40,56), #48
	range(8,24)+range(40,56), #49
	range(8,24)+range(40,56), #50
	range(8,24)+range(40,56), #51
	range(8,24)+range(40,56), #52
	range(8,24)+range(40,56), #53
	range(8,24)+range(40,56), #54
	range(8,24)+range(40,56), #55
	range(8,24)+range(40,56), #56
	[], #57
	[], #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #4

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap4x8.append(temp)
	temp=[]


### MAP 4 ##
cdef list tmap4x6 = []
rows = []

rows=[[], #1
	[], #2
	[], #3
	[], #4
	[], #5
	[], #6
	[], #7
	[], #8
	[], #9
	[], #10
	range(10,22)+range(42,54), #11
	range(10,22)+range(42,54), #12
	range(10,22)+range(42,54), #13
	range(10,22)+range(42,54), #14
	range(10,22)+range(42,54), #15
	range(10,22)+range(42,54), #16
	range(10,22)+range(42,54), #17
	range(10,22)+range(42,54), #18
	range(10,22)+range(42,54), #19
	range(10,22)+range(42,54), #20
	range(10,22)+range(42,54), #21
	range(10,22)+range(42,54), #22
	[], #23
	[], #24
	[], #25
	[], #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	[], #33
	[], #34
	[], #35
	[], #36
	[], #37
	[], #38
	[], #39
	[], #40
	[], #41
	[], #42
	range(10,22)+range(42,54), #43
	range(10,22)+range(42,54), #44
	range(10,22)+range(42,54), #45
	range(10,22)+range(42,54), #46
	range(10,22)+range(42,54), #47
	range(10,22)+range(42,54), #48
	range(10,22)+range(42,54), #49
	range(10,22)+range(42,54), #50
	range(10,22)+range(42,54), #51
	range(10,22)+range(42,54), #52
	range(10,22)+range(42,54), #53
	range(10,22)+range(42,54), #54
	[], #55
	[], #56
	[], #57
	[], #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #4

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap4x6.append(temp)
	temp=[]


### MAP 4 ##
cdef list tmap4x4 = []
rows = []

rows=[[], #1
	[], #2
	[], #3
	[], #4
	[], #5
	[], #6
	[], #7
	[], #8
	[], #9
	[], #10
	[], #11
	[], #12
	range(12,20)+range(44,52), #13
	range(12,20)+range(44,52), #14
	range(12,20)+range(44,52), #15
	range(12,20)+range(44,52), #16
	range(12,20)+range(44,52), #17
	range(12,20)+range(44,52), #18
	range(12,20)+range(44,52), #19
	range(12,20)+range(44,52), #20
	[], #21
	[], #22
	[], #23
	[], #24
	[], #25
	[], #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	[], #33
	[], #34
	[], #35
	[], #36
	[], #37
	[], #38
	[], #39
	[], #40
	[], #41
	[], #42
	[], #43
	[], #44
	range(12,20)+range(44,52), #45
	range(12,20)+range(44,52), #46
	range(12,20)+range(44,52), #47
	range(12,20)+range(44,52), #48
	range(12,20)+range(44,52), #49
	range(12,20)+range(44,52), #50
	range(12,20)+range(44,52), #51
	range(12,20)+range(44,52), #52
	[], #53
	[], #54
	[], #55
	[], #56
	[], #57
	[], #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #4

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap4x4.append(temp)
	temp=[]
	
	
### MAP 16x10 ##
cdef list tmap16x10 = []
rows = []



rows=[range(0,10)+range(15,25)+range(31,41)+range(47,57), #1
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #2
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #3
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #4
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #5
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #6
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #7
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #8
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #9
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #10
	[], #11
	[], #12
	[], #13
	[], #14
	[], #15
	[], #16
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #17
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #18
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #19
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #20
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #21
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #22
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #23
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #24
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #25
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #33
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #34
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #35
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #36
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #37
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #38
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #39
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #40
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #41
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #42
	[], #43
	[], #44
	[], #45
	[], #46
	[], #47
	[], #48
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #49
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #50
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #51
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #52
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #53
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #54
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #55
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #56
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #57
	range(0,10)+range(15,25)+range(31,41)+range(47,57), #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #64

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap16x10.append(temp)
	temp=[]

### MAP 16x8 ##
cdef list tmap16x8 = []
rows = []

rows=[range(0,8)+range(16,24)+range(32,40)+range(48,56), #1
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #2
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #3
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #4
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #5
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #6
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #7
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #8
	[], #9
	[], #10
	[], #11
	[], #12
	[], #13
	[], #14
	[], #15
	[], #16
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #17
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #18
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #19
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #20
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #21
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #22
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #23
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #24
	[], #25
	[], #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #33
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #34
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #35
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #36
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #37
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #38
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #39
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #40
	[], #41
	[], #42
	[], #43
	[], #44
	[], #45
	[], #46
	[], #47
	[], #48
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #49
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #50
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #51
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #52
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #53
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #54
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #55
	range(0,8)+range(16,24)+range(32,40)+range(48,56), #56
	[], #57
	[], #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #16

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap16x8.append(temp)
	temp=[]

### MAP 16x6 ##
cdef list tmap16x6 = []
rows = []

rows=[[], #1
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #2
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #3
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #4
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #5
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #6
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #7
	[], #8
	[], #9
	[], #10
	[], #11
	[], #12
	[], #13
	[], #14
	[], #15
	[], #16
	[], #17
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #18
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #19
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #20
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #21
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #22
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #23
	[], #24
	[], #25
	[], #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	[], #33
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #34
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #35
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #36
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #37
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #38
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #39
	[], #40
	[], #41
	[], #42
	[], #43
	[], #44
	[], #45
	[], #46
	[], #47
	[], #48
	[], #49
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #50
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #51
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #52
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #53
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #54
	range(1,7)+range(17,23)+range(33,39)+range(49,55), #55
	[], #56
	[], #57
	[], #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #16

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap16x6.append(temp)
	temp=[]

### MAP 16x6 ##
cdef list tmap16x4 = []
rows = []

rows=[[], #1
	[], #2
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #3
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #4
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #5
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #6
	[], #7
	[], #8
	[], #9
	[], #10
	[], #11
	[], #12
	[], #13
	[], #14
	[], #15
	[], #16
	[], #17
	[], #18
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #19
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #20
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #21
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #22
	[], #23
	[], #24
	[], #25
	[], #26
	[], #27
	[], #28
	[], #29
	[], #30
	[], #31
	[], #32
	[], #33
	[], #34
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #35
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #36
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #37
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #38
	[], #39
	[], #40
	[], #41
	[], #42
	[], #43
	[], #44
	[], #45
	[], #46
	[], #47
	[], #48
	[], #49
	[], #50
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #51
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #52
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #53
	range(2,6)+range(18,22)+range(34,38)+range(50,54), #54
	[], #55
	[], #56
	[], #57
	[], #58
	[], #59
	[], #60
	[], #61
	[], #62
	[], #63
	[]] #16

#fav = list(f_temps)
#ufav = list(u_temps)
for r in rows:
	for i in range(64):
		#if i > 63: continue
		if i in r: temp.append(1)
		if i not in r: temp.append(0)
		#print i
	tmap16x4.append(temp)
	temp=[]

# lizard object
cdef class Individual:
	cpdef public double x_min, x_max, act_duration, fitness, alpha, beta
	cpdef public double y_min, y_max, db, energy_balance, moved, orientation, k, tlow, thigh, size, dist, h_t, c_t
	cpdef public double mu, kappa, d_max, beta_alpha, beta_beta, p1
	cpdef public double mu_l, kappa_l, d_max_l, beta_alpha_l, beta_beta_l, p3, tot_dist_moved, tb
	cpdef public double mu_h, kappa_h, d_max_h, beta_alpha_h, beta_beta_h, p2
	cpdef public double t_target
	cdef public int active, decisions, tsize, minutes
	cdef public dict position
	cdef public list deviations,tmaps
	cdef public list traits
		
	def __init__(self, double mu = 0. , double mu_l = 0. , double mu_h = 0. , double kappa = 1., double kappa_l = 1., double kappa_h = 1., double alpha = 1., double alpha_l = 1., double alpha_h = 1., double beta = 4., double beta_l = 4., double beta_h = 4., double d_max = 21., double d_max_l = 21., double d_max_h = 21., double x_max = 63., double y_max= 63., double size=10., double tb = 34.,  int tsize=18, int minutes=30):#,  tmaps=maps):
		self.x_min, self.y_min = 0., 0.
		self.x_max, self.y_max = x_max, y_max
		self.position = {'x':rand() * self.x_max, 'y': rand() * self.y_max}
		self.t_target = tb
		self.mu, self.kappa = mu, kappa
		self.mu_l, self.kappa_l = mu_l, kappa_l
		self.mu_h, self.kappa_h = mu_h, kappa_h
		self.orientation = vonmises(self.mu, self.kappa) #SAME AS SELF.ANGLE?
		self.d_max = 8.*(np.log10(size)+1.) #d_max
		self.d_max_l = 8.*(np.log10(size)+1.) #d_max_l
		self.d_max_h = 8.*(np.log10(size)+1.) #d_max_h
		self.beta_alpha = alpha
		self.beta_alpha_l = alpha_l
		self.beta_alpha_h = alpha_h
		self.beta_beta = beta
		self.beta_beta_l = beta_l
		self.beta_beta_h = beta_h
		self.p1, self.p2, self.p3 = 0.25, 0.0, 0.0
		self.size = size #uniform(15,30)
		self.tb = tb
		self.tlow = 32.# 32.7 #31. #33.
		self.thigh = 36. #34.9 #34.6 #37.
		self.active = 1
		self.decisions = 6
		
		self.dist = 0.
		self.h_t = 0.
		self.c_t = 0.
		self.deviations = []
		self.db = 0.
		self.energy_balance = 0.
		self.moved = 0.
		self.tsize = tsize
		self.tot_dist_moved = 0.
		self.traits=[0] * tsize
		self.fitness = 0.
		self.minutes = minutes
		self.act_duration = 0.
	
	cpdef tprops(self): #thermal preoperties
		self.h_t = exp(log(self.size) * 0.36 + 0.72)
		self.c_t = exp(0.42 + 0.44 * log(self.size))
		return
	
	cpdef double update_tb(self, double te):
		if self.tb <= te: 
			return self.tb + (1. - exp(-1. / self.h_t)) * (te - self.tb) #heating
		if self.tb  > te: 
			return self.tb + (1. - exp(-1. / self.c_t)) * (te - self.tb) #cooling	
	
	cpdef calcDb(self):
		d=np.array(self.deviations)
		self.db=sum(abs(d-self.t_target)/len(self.deviations))	
	
	cpdef double mei(self):
		cdef double max_con, act_con, asin_de, de
		max_con=-328.7+22.82*self.tb-0.32*self.tb**2
		act_con= max_con * self.size /24.
		asin_de= 85.34-0.5*self.tb
		de = (sin((3.14159/180)*asin_de))**2
		return (act_con * 0.25*de/1000.*25600.)/60.
	cpdef double smr(self):
		cdef double act_scope
		act_scope = 1. + 4. * self.moved/self.d_max #* 0.5
		return (act_scope*20.2*10**(0.038*self.tb-1.771)*self.size**0.82)/60.
	
	cpdef double net(self):
		return (self.moved/self.d_max)*self.smr()+(1.-self.dist/self.d_max)*self.smr()

	cpdef getDisp(self):
		if self.thigh >= self.tb >= self.tlow:
			MU=self.mu
			KAPPA=self.kappa
			BETA=self.beta_beta
			ALPHA=self.beta_alpha
			DMAX=self.d_max
		elif self.tb > self.thigh:
			MU=self.mu_h
			KAPPA=self.kappa_h
			BETA=self.beta_beta_h
			ALPHA=self.beta_alpha_h
			DMAX=self.d_max_h
		elif self.tb < self.tlow:
			MU=self.mu_l
			KAPPA=self.kappa_l
			BETA=self.beta_beta_l
			ALPHA=self.beta_alpha_l
			DMAX=self.d_max_l
		cdef double incre, a, b, c
		incre = vonmises(MU, KAPPA)
		c = beta(ALPHA, BETA) * DMAX
		a, b = c * sin(self.orientation + incre), c * cos(self.orientation + incre)
		return a, b, c, incre
		
	cpdef move_reg(self, list arrangement):
		cdef double incre, x1, y1, te, diff_tb, diff_tb_new, temp_c, a, b, c, temp_x1, temp_y1, up_tb
		cdef int l
		incre, x1, y1 = 0., self.position['x'], self.position['y'] 
		self.active = 1
		te = arrangement[int(self.position['x'])][int(self.position['y'])] 
		diff_tb = 50.
		temp_c = 32.
		if self.thigh >= self.tb >= self.tlow:
			if binomial(1, self.p1): # remain still
				self.active = 0 
				self.moved = 0.
			else: # move
				for l in range(self.decisions): 
					a, b, c, incre = self.getDisp()
					if (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
						while (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
							a, b, c, incre = self.getDisp()
					x1 = self.position['x'] + a
					y1 = self.position['y'] + b
					up_tb =  self.update_tb(arrangement[int(x1)][int(y1)])
					diff_tb_new = abs(self.t_target - up_tb)
					if diff_tb_new <= diff_tb: 
						diff_tb = diff_tb_new
						temp_c = c
						temp_x1, temp_y1 = x1, y1
					else:
						pass	
					if l == (self.decisions -1):
						self.position['x'], self.position['y'], c = temp_x1, temp_y1, temp_c
						self.dist += temp_c
						self.orientation += incre
						self.moved = c
						
		elif self.tb > self.thigh:
			if self.tb > self.thigh > arrangement[int(x1)][int(y1)]:
				if binomial(1, self.p2):
					self.active = 0 #remain still
					self.moved = 0.
				else: # move
					for l in range(self.decisions):
						a, b, c, incre = self.getDisp()
						if (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
							while (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
								a, b, c, incre = self.getDisp()
						x1 = self.position['x'] + a
						y1 = self.position['y'] + b
						up_tb =  self.update_tb(arrangement[int(x1)][int(y1)])
						diff_tb_new = abs(self.t_target - up_tb)
						if diff_tb_new <= diff_tb: 
							diff_tb = diff_tb_new
							temp_c = c
							temp_x1, temp_y1 = x1, y1
						else:
							pass			
						if l == (self.decisions -1):
							self.position['x'], self.position['y'], c = temp_x1, temp_y1, temp_c
							self.dist += temp_c
							self.orientation += incre
							self.moved = c
			else: # move
				for l in range(self.decisions): 
					a, b, c, incre = self.getDisp()
					if (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
						while (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
							a, b, c, incre = self.getDisp()
					x1 = self.position['x'] + a
					y1 = self.position['y'] + b
					up_tb =  self.update_tb(arrangement[int(x1)][int(y1)])
					diff_tb_new = abs(self.t_target - up_tb)
					if diff_tb_new <= diff_tb:
						diff_tb = diff_tb_new
						temp_c = c
						temp_x1, temp_y1 = x1, y1
					else:
						pass	
					if l == (self.decisions -1):
						self.position['x'], self.position['y'], c = temp_x1, temp_y1, temp_c
						self.dist += temp_c
						self.orientation += incre
						self.moved = c

		else: 
			if self.tb < self.tlow < arrangement[int(x1)][int(y1)]:
				if binomial(1, self.p3):
					self.active = 0 #remain still
					self.moved = 0.
				else: # move
					for l in range(self.decisions): 
						a, b, c, incre = self.getDisp()
						if (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
							while (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
								a, b, c, incre = self.getDisp()
						x1 = self.position['x'] + a
						y1 = self.position['y'] + b
						up_tb =  self.update_tb(arrangement[int(x1)][int(y1)])		
						diff_tb_new = abs(self.t_target - up_tb)
						if diff_tb_new <= diff_tb: 
							diff_tb = diff_tb_new
							temp_c = c
							temp_x1, temp_y1 = x1, y1
						else:
							pass	
						if l == (self.decisions - 1):
							self.position['x'], self.position['y'], c = temp_x1, temp_y1, temp_c
							self.dist += temp_c
							self.orientation += incre
							self.moved = c
			else:
				for l in range(self.decisions):
					a, b, c, incre = self.getDisp()
					if (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
						while (not (0.<=self.position['x']+a<=63.)) or  (not (0.<=self.position['y']+b<=63.)):
							a, b, c, incre = self.getDisp()
					x1 = self.position['x'] + a
					y1 = self.position['y'] + b
					up_tb =  self.update_tb(arrangement[int(x1)][int(y1)])
					diff_tb_new = abs(self.t_target - up_tb)
					if diff_tb_new <= diff_tb: 
						diff_tb = diff_tb_new
						temp_c = c
						temp_x1, temp_y1 = x1, y1
					else:
						pass			
					if l == (self.decisions - 1):
						self.position['x'], self.position['y'], c = temp_x1, temp_y1, temp_c
						self.dist += temp_c
						self.orientation += incre
						self.moved = c	


	cpdef move_con(self, list arrangement):
		cdef double incre, x1, y1, te, diff_tb, diff_tb_new, temp_c, a, b, c, temp_x1, temp_y1, up_tb, p
		cdef int l
		incre, x1, y1 = 0., self.position['x'], self.position['y'] 
		self.active = 1
		te = arrangement[int(self.position['x'])][int(self.position['y'])] 
		p = 0.25
		a, b, c, incre = self.getDisp()
		if binomial(1,p):   
			self.position['x'], self.position['y'] = self.position['x'], self.position['y']
			c = 0.
		else:
			if (self.position['x'] + a) > 63.:
				x1 = self.position['x'] + a - 63.
			if (self.position['x'] + a) < 0.:
				x1 = self.position['x'] + a + 63.
			if 0. < (self.position['x'] + a) < 63.: 
				x1 = self.position['x'] + a
			if (self.position['y'] + b) > 63.:
				y1 = self.position['y'] + b - 63.
			if (self.position['y'] + b) < 0.:
				y1 = self.position['y'] + b + 63.
			if 0. < (self.position['y'] + b) < 63.: 
				y1 = self.position['y'] + b
		self.dist += c
		self.orientation += incre
		self.position['x'], self.position['y'] = x1, y1
		self.moved = c

cdef list tmaps 
tmaps = [tmap1x10, tmap1x8, tmap1x6, tmap1x4, tmap4x10, tmap4x8, tmap4x6, tmap4x4, tmap16x10, tmap16x8, tmap16x6, tmap16x4]

cdef list _te(list _tmap, double maxt, double mint, double sdmax, double sdmin):
	cdef int i, j
	for i in range(len(_tmap)):
		for j in range(len(_tmap[i])):
			if _tmap[i][j]==0:
				_tmap[i][j] = gauss(maxt,sdmax)
			else:
				_tmap[i][j] = gauss(mint, sdmin)
	return _tmap

cdef int val, idl, counter, dcns, pop_size
cdef list arrangement, population, _sdmin, _sdmax
cdef list t_map, tmap, arr, masses
cdef Individual lizard
cdef double tmps, mx, mn

pop_size=1000
masses = [1.0, 10., 100., 1000.]
_sdmin = [0.25, 0.5, 1.0, 2.0]
_sdmax = [0.5, 1.0, 2.0, 4.0]

cdef int minutes = 15

output = open("general_result1000.csv", 'w')
output.write("type\tmap\tT\ttemp\tsdmx\tsdmn\tmass\tmeandb\t95db\tmeandist\t95dist\tmeanenergy\t95energy\n")
output2 = open("gen_result_inds1000x.csv", 'w')
output2.write("type\tmap\tT\ttemp\tsdmx\tsdmn\tmass\tind\tdb\ttotdist\tenergy\n")

for val, arrangement in enumerate(tmaps):
	for m in masses:
		for tmps in [34., 35., 36., 37., 38., 39., 40., 41., 42, 43., 44., 45., 46, 47., 48., 49., 50.]:
			for mx, mn in zip(_sdmax, _sdmin): #
				population = [Individual(size = m, tb = 34.) for i in range(pop_size)]
				for lizard in population:
					lizard.tprops()
				arr = [elem[:] for elem in arrangement]
				tmap = _te(arr, tmps, 34., mx, mn) #NOTE
				db_list = []
				dist_list = []
				energy_list = []
				for idl, lizard in enumerate(population):
					for minute in range(minutes):	
						lizard.move_reg(tmap)
						lizard.tb = lizard.update_tb(tmap[int(lizard.position['x'])][int(lizard.position['y'])])
						lizard.deviations.append(lizard.tb)
						lizard.energy_balance += lizard.smr()
						lizard.tot_dist_moved += lizard.moved
					lizard.calcDb()
					db_list.append(lizard.db)
					dist_list.append(lizard.tot_dist_moved)
					energy_list.append(lizard.energy_balance)
					output2.write("reg\t" + str(val) + "\t" + str(tmps)+"\t"+ str(0.25 * 34. + 0.75 * tmps) + "\t" + str(mx) + "\t" + str(mn) + "\t" + str(m) + "\t" +  str(idl) + "\t" + str(lizard.db) + "\t" + str(lizard.tot_dist_moved)+ "\t" + str(lizard.energy_balance)+"\n")
				output.write("reg\t" + str(val) + "\t" +str(tmps)+"\t"+ str(0.25 * 34. + 0.75 * tmps) + "\t" + str(mx) + "\t" + str(mn) + "\t" + str(m) + "\t"  + str(np.mean(db_list)) + "\t" + str(1.96 * np.std(db_list)/np.sqrt(1000)) + "\t" + str(np.mean(dist_list)) + "\t" + str(1.96 * np.std(dist_list)/np.sqrt(1000)) + "\t" + str(np.mean(energy_list)) + "\t" + str(1.96 * np.std(energy_list)/np.sqrt(1000)) + "\n")	
				print "reg", val, 0.25 * 34. + 0.75 * tmps, mx, mn, m 

for val, arrangement in enumerate(tmaps):
	for m in masses:
		for tmps in [34., 35., 36., 37., 38., 39., 40., 41., 42, 43., 44., 45., 46, 47., 48., 49., 50.]:
			for mx, mn in zip(_sdmax, _sdmin):
				population = [Individual(size = m, tb = 34.) for i in range(pop_size)]
				for lizard in population:
					lizard.tprops()
				arr = [elem[:] for elem in arrangement]
				tmap = _te(arr, tmps, 34., mx, mn)
				db_list = []
				dist_list = []
				energy_list = []
				for idl, lizard in enumerate(population):
					for minute in range(minutes):	
						lizard.move_con(tmap)
						lizard.tb = lizard.update_tb(tmap[int(lizard.position['x'])][int(lizard.position['y'])])
						lizard.deviations.append(lizard.tb)
						lizard.energy_balance += lizard.smr()
						lizard.tot_dist_moved += lizard.moved
					lizard.calcDb()
					db_list.append(lizard.db)
					dist_list.append(lizard.tot_dist_moved)
					energy_list.append(lizard.energy_balance)
					output2.write("con\t" + str(val) + "\t" + str(tmps)+"\t"+str(0.25 * 34. + 0.75 * tmps) + "\t" + str(mx) + "\t" + str(mn) + "\t" + str(m) + "\t" + str(idl) + "\t" +str(lizard.db) + "\t" + str(lizard.tot_dist_moved)+ "\t" + str(lizard.energy_balance)+"\n")	
				output.write("con\t" + str(val) + "\t" + str(tmps)+"\t"+str(0.25 * 34. + 0.75 * tmps) + "\t" + str(mx) + "\t" + str(mn) + "\t" + str(m) + "\t" + str(np.mean(db_list)) + "\t" + str(1.96 * np.std(db_list)/np.sqrt(1000)) + "\t" + str(np.mean(dist_list)) + "\t" + str(1.96 * np.std(dist_list)/np.sqrt(1000)) + "\t" + str(np.mean(energy_list)) + "\t" + str(1.96 * np.std(energy_list)/np.sqrt(1000)) + "\n") 
				print "con", val, 0.25 * 34. + 0.75 * tmps, mx, mn, m
				
output.close()
output2.close()
end = what_time()
print "ELAPSED TIME = ", (end-begin)/60., " minutes"	
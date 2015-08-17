# MLS Junk GeneratR (R Implementation of the MLS Junk Generator)
by Scumdog Steev / Steve Myles

License:  [MIT License](https://github.com/scumdogsteev/mls-junk-generatR/blob/master/LICENSE)

About:  This is a pseudo-random number generator implemented in R and [Excel/VBA](https://github.com/scumdogsteev/mls-junk-generator).  This version
has been replaced by [the R package version (mlsjunkgen)](https://github.com/scumdogsteev/mlsjunkgen).

Project Home:  http://steve.mylesandmyles.info/projects/mls-junk-generator/

**Algorithm:**

For any seed values of w, x, y, z:

r<sub>i</sub> = 5.980217w<sup>2</sup> + 9.446377x<sup>0.25</sup> + 
4.81379y<sup>0.33</sup> + 8.91197z<sup>0.5</sup>  

r<sub>i</sub> = r<sub>i</sub> - Int(r<sub>i</sub>)   

For r<sub>i</sub>+1:

w = x  
    
x = y  
    
y = z  
    
z = r<sub>i</sub>

**Files:**

1. [mlsjunkgen.R](https://github.com/scumdogsteev/mls-junk-generatR/blob/master/mlsjunkgen.R) - R implementation that creates
either a vector or a data frame of pseudo-random numbers.

**Project Info:**

* Converted to R package [mlsjunkgen](https://github.com/scumdogsteev/mlsjunkgen):  2015.08.16
* R Source last updated: 2015.02.01
 

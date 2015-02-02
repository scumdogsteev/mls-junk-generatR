# MLS Junk GeneratR (R Implementation of the MLS Junk Generator)
by Scumdog Steev / Steve Myles

License:  [MIT License](https://github.com/scumdogsteev/mls-junk-generatR/blob/master/LICENSE)

About:  This is a pseudo-random number generator implemented in R and [Excel/VBA](https://github.com/scumdogsteev/mls-junk-generator).

Project Home:  http://steve.mylesandmyles.info/projects/mls-junk-generator/

Algorithm:
```
For any seed values of w, x, y, z:
r_i = 5.980217w^2 + 9.446377x^0.25 + 4.81379y^0.33 + 8.91197z^0.5
r_i = r_i - Int(r_i) For r_i+1:
w = x
x = y
y = z
z = r_i
```

Files:

1. [mlsjunkgen.R](https://github.com/scumdogsteev/mls-junk-generatR/blob/master/mlsjunkgen.R) - R implementation that creates
either a vector or a data frame of pseudo-random numbers.

Project Info:

* R Source last updated: 2015.02.01
 

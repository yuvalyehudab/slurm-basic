
# name: script.r
# author: yuvalyehudab

print('hello world')
.libPaths( c("/usr/lib/R/library", .libPaths()) )

options(repos=structure(c(CRAN='http://cran.r-project.org')))
install.packages('tidyr')

library('tidyr')
# after installation for Rscript
print(Sys.getenv('PATH'))
print('success!')

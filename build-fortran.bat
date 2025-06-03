@echo off


set f=fortran


  :: assembly
gfortran %f%.f90  -S

  :: object file
gfortran %f%.f90  -c  -Wall -O2

  :: linking into executable
gfortran %f%.o  -o %f%.exe  -s


pause
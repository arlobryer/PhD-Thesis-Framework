#!/usr/bin/env bash

echo "Do you want to build and copy (P)DF, (D)VItoPDF or (B)oth?"
read type
echo $type
if [ $type == "P" ]; then
    scons pdf
    scp thesis.pdf aeg04@lx06.hep.ph.ic.ac.uk:/home/hep/aeg04/public_html/PhD_Thesis/
elif [ $type == "D" ]; then
    scons
    scp thesisDvi2.pdf aeg04@lx06.hep.ph.ic.ac.uk:/home/hep/aeg04/public_html/PhD_Thesis/
elif [ $type == "B" ]; then
    scons
    scons pdf
    scp thesisDvi2.pdf thesis.pdf aeg04@lx06.hep.ph.ic.ac.uk:/home/hep/aeg04/public_html/PhD_Thesis/
fi
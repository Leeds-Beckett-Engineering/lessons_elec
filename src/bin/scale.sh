#!/bin/sh
if [ $# -lt "2" ]; then
  echo 'Usage: ./scale.sh ScaleFactor_% SourceFile DesinationFile'
  exit 1
fi

SC=`echo $1 | cut -d "%" -f 1`

echo '$0='$0

if [ $# = "2" ]; then
  DF=$2
  SF=$2'~'
  if [ -e $2 ]; then
    mv $2 $2'~'
  else
    echo 'file '$2' does not exist'
    exit 1
  fi
else
  SF=$2
  DF=$3
fi

if [ -e $SF ]; then
  continue
else
 echo 'file '$SF' does not exist'
 exit 1
fi


echo 'scale.sh: ScaleFactor='$1'  SourceFile='$2'  DestinationFile='$3 
#echo 'SC='$SC   'SF='$SF'   DF='$DF


P6=0.5

P3=`grep scale $SF | cut -d" " -f1`
#echo 'P3='$P3

P4=`echo $P3*$SC/100 |bc`
#echo 'P4='$P4

P3=`grep scale $SF | cut -d" " -f2`
#echo 'P3='$P3

P5=`echo $P3*$SC/100 |bc`

#echo 'P5='$P5

#####cat 42000.eps |sed -e 's/.*scale/'$P4' '$P5' scale/' >42000.eps~~

#echo 'boundingBox'
P3=`grep %%BoundingBox: $SF | cut -d" " -f2`
#echo 'P3='$P3

S2=`echo $P3*$SC/100 |bc`

#echo 'S2='$S2


P3=`grep %%BoundingBox: $SF | cut -d" " -f3`
#echo 'P3='$P3

S3=`echo $P3*$SC/100 |bc`

#echo 'S3='$S3


P3=`grep %%BoundingBox: $SF | cut -d" " -f4`
#echo 'P3='$P3

S4=`echo $P3*$SC/100 |bc`

#echo 'S4='$S4


P3=`grep %%BoundingBox: $SF | cut -d" " -f5`
#echo 'P3='$P3

S5=`echo $P3*$SC/100 |bc`

#echo 'S5='$S5

cat $SF |sed -e 's/.*scale/'$P4' '$P5' scale/g' >$DF \
 -e 's/%%BoundingBox:.*/%%BoundingBox: '$S2' '$S3' '$S4' '$S5'/g' >$DF





#'echo Grep scale $SF | cut -d" " -f1 /2 |bc
#       sed -e '/scale/s/.*/'echo rep scale $SF | cut -d" " -f1 /2 |bc
#        sed -e s/\([0-9].*\)\([0-9].*\).*/scaley/gp 42000.eps~ >42000.eps~~



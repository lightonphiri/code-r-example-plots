#!/bin/bash
# 
# Clean up automatically create files and rename file using conventional naming scheme

filename=r-plot-samples-figure;
counter=0;
for file in `cat r-plot-samples.tex | grep input | sed -e 's/\\\input{\(.*\)}/\1/' | tr -d ' '`; do 
	echo $file;
	echo $file | awk -F.tex '{print $1".eps"}';
	echo $filename$counter;
	epsfile=`echo $file | awk -F.tex '{print $1".eps"}'`;
	echo $epsfile;
	mv $filename$counter".eps" $epsfile;
	#rm $filename$counter".dvi";
        #rm $filename$counter".ps";
	#rm $filename$counter".md5";
	#rm $filename$counter".dpth";
	#rm $filename$counter".log";
	counter=$[$counter + 1]; 
done

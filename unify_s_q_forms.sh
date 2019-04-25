#!/bin/bash

cd /media/amr/Amr_4TB/Work/stimulation/Data_CA3


for folder in *;do 
	cd $folder
	for img in Anat*;do
		fslorient -setqform -1.25 0 -0 0 0 1.25 -0 0 0 0 8 0 0 0 0 1 $img
		fslorient -setsform -1.25 0 0 0 0 1.25 0 0 0 0 8 0 0 0 0 1 $img
	done

	cd ..
done



for folder in *;do 
	cd $folder
	for img in EPI*;do
		fslorient -setqform -2.5 0 -0 0 0 2.5 -0 0 0 0 8 0 0 0 0 1 $img
		fslorient -setsform -2.5 0 0 0 0 2.5 0 0 0 0 8 0 0 0 0 1 $img
	done

	cd ..
done


for folder in *;do 
	cd $folder
	for img in Stim*;do
		fslorient -setqform -2.5 0 -0 0 0 2.5 -0 0 0 0 8 0 0 0 0 1 $img
		fslorient -setsform -2.5 0 0 0 0 2.5 0 0 0 0 8 0 0 0 0 1 $img
	done

	cd ..
done

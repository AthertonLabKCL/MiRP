#!/bin/csh -f

#Joe Atherton 03/08/22#

#run as source relion_keep_PHI_reset_angles_to_priors_relion3.csh smoothenedXY_data.star where smoothenedXY_data.star is the star file to be converted
#resets PSI and TILT to match PRIORS, KEEPING PHI.

set star_file=$1

#copy headers to new file
echo ' ' > $star_file:r_reset_angles_to_priors.star
echo 'data_images' >> $star_file:r_reset_angles_to_priors.star
echo ' ' >> $star_file:r_reset_angles_to_priors.star
echo 'loop_' >> $star_file:r_reset_angles_to_priors.star

#copy column headers to new file
echo | grep '_rln*' $star_file >> $star_file:r_reset_angles_to_priors.star

#extract column data to temp file
echo | grep '.mrc' $star_file > $star_file:r_temp1.star


#print all data to new file 
echo | awk '{printf("%.6f\t%.6f\t%d\t%.6f\t%.6f\t%.6f\t%.6f\t%s\t%s\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%d\t%.6f\t%.6f\t%.6f\t%d\t%.6f\t%.6f\t%.6f\t%d\n", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $4, $5, $29, $30, $31, $32, $33)}' $star_file:r_temp1.star >> $star_file:r_reset_angles_to_priors.star

rm -rf $star_file:r_temp1.star
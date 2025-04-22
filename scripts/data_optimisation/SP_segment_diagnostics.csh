#!/usr/bin/env csh

#DIAGNOSTICS FOR SP PARTICLES RUN

##############################################################

#first source eman2 and imod
module use -a /s/emib/s/modules
module load eman2
module load imod
module load bsoft

##############################################################

header *.mrcs >> stack_headers_diagnostics.log
grep -A2 'RO image file on unit*' stack_headers_diagnostics.log >> stack_size_diagnostics.log

#set up micrograph loop

foreach micrograph_star (`ls -1 ./*_extract.star`)
echo 'working on' $micrograph_star

##############################################################

#work out number of segments in stack from .star file.

set total_number_of_segments = `grep -o '.mrcs' $micrograph_star | wc -l`

#works out number of segments in each microtubule from micrograph .star file. Only for MAX 30 MTs so far.

set number_of_segments_MT1 = `grep -o ' 1    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT2 = `grep -o ' 2    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT3 = `grep -o ' 3    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT4 = `grep -o ' 4    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT5 = `grep -o ' 5    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT6 = `grep -o ' 6    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT7 = `grep -o ' 7    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT8 = `grep -o ' 8    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT9 = `grep -o ' 9    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT10 = `grep -o ' 10    90.000000.*.mrcs' $micrograph_star | wc -l`

set number_of_segments_MT11 = `grep -o ' 11    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT12 = `grep -o ' 12    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT13 = `grep -o ' 13    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT14 = `grep -o ' 14    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT15 = `grep -o ' 15    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT16 = `grep -o ' 16    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT17 = `grep -o ' 17    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT18 = `grep -o ' 18    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT19 = `grep -o ' 19    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT20 = `grep -o ' 20    90.000000.*.mrcs' $micrograph_star | wc -l`

set number_of_segments_MT21 = `grep -o ' 21    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT22 = `grep -o ' 22    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT23 = `grep -o ' 23    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT24 = `grep -o ' 24    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT25 = `grep -o ' 25    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT26 = `grep -o ' 26    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT27 = `grep -o ' 27    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT28 = `grep -o ' 28    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT29 = `grep -o ' 29    90.000000.*.mrcs' $micrograph_star | wc -l`
set number_of_segments_MT30 = `grep -o ' 30    90.000000.*.mrcs' $micrograph_star | wc -l`

echo 'micrograph' $micrograph_star 'total_number_of_segments' $total_number_of_segments 'segments in each MT' $number_of_segments_MT1 $number_of_segments_MT2 $number_of_segments_MT3 $number_of_segments_MT4 $number_of_segments_MT5 $number_of_segments_MT6 $number_of_segments_MT7 $number_of_segments_MT8 $number_of_segments_MT9 $number_of_segments_MT10 $number_of_segments_MT11 $number_of_segments_MT12 $number_of_segments_MT13 $number_of_segments_MT14 $number_of_segments_MT15 $number_of_segments_MT16 $number_of_segments_MT17 $number_of_segments_MT18 $number_of_segments_MT19 $number_of_segments_MT20 $number_of_segments_MT21 $number_of_segments_MT22 $number_of_segments_MT23 $number_of_segments_MT24 $number_of_segments_MT25 $number_of_segments_MT26 $number_of_segments_MT27 $number_of_segments_MT28 $number_of_segments_MT29 $number_of_segments_MT30>> 'SPs_generation_diagnostics.list'

end

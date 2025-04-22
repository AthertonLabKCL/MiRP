#
# Chimera script to generate 14pf references
# 
# First open 2 copies of the central reference in Chimera (so they are models #0 and #1).
#
# Run the script in Chimera from the command line: open *path_to_script*/reference_seam_class_maker_14pf_all_with_shifts.com
#
# MAKES REFERENCES WITH IDs RELATING TO REFERNCES AS SUCH TO SAVE:
#
# #2  = Rot-1
# #3  = Rot-2
# #4  = Rot-3
# #5  = Rot-4
# #6  = Rot-5
# #7  = Rot-6
# #8  = Rot+1
# #9  = Rot+2
# #10 = Rot+3
# #11 = Rot+4
# #12 = Rot+5
# #13 = Rot+6
# #14 = Rot+7
# #15 = Shift 41A
# #16 = Shift 41A Rot-1
# #17 = Shift 41A Rot-2
# #18 = Shift 41A Rot-3
# #19 = Shift 41A Rot-4
# #20 = Shift 41A Rot-5
# #21 = Shift 41A Rot-6
# #22 = Shift 41A Rot+1
# #23 = Shift 41A Rot+2
# #24 = Shift 41A Rot+3
# #25 = Shift 41A Rot+4
# #26 = Shift 41A Rot+5
# #27 = Shift 41A Rot+6
# #28 = Shift 41A Rot+7


########################################################################################################################################

######MINUS######

#-1
turn z -25.71 models #1 coordinateSystem #0
move z 8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#-2
turn z -25.71 models #1 coordinateSystem #0
move z 8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#-3
turn z -25.71 models #1 coordinateSystem #0
move z 8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#-4
turn z -25.71 models #1 coordinateSystem #0
move z 8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#-5
turn z -25.71 models #1 coordinateSystem #0
move z 8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#-6
turn z -25.71 models #1 coordinateSystem #0
move z 8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

######BRING REF BACK TO 0######

turn z 154.26 models #1 coordinateSystem #0
move z -52.74 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap


######PLUS######

#+1
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#+2
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#+3
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#+4
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#+5
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#+6
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

#+7
turn z 25.71 models #1 coordinateSystem #0
move z -8.79 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap
vop resample #1 onGrid #0

######BRING REF BACK TO 0######

turn z -179.97 models #1 coordinateSystem #0
move z 61.53 models #1 coordinateSystem #0
fitmap #1 #0 metric overlap
fitmap #1 #0 metric overlap

######SHIFTS central ref######

move z -41 models #1 coordinateSystem #0
vop resample #1 onGrid #0

######SHIFTS minus######

move z -41 models #2,3,4,5,6,7 coordinateSystem #0
vop resample #2,3,4,5,6,7 onGrid #0

######SHIFTS plus######

move z 41 models #8,9,10,11,12,13,14 coordinateSystem #0
vop resample #8,9,10,11,12,13,14 onGrid #0

#####BRINGS UNSHIFTED REFS BACK########

move z 41 models #2,3,4,5,6,7 coordinateSystem #0
move z -41 models #8,9,10,11,12,13,14 coordinateSystem #0

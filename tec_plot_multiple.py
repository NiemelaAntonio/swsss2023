import sys
from Day4_funct import Plot_tec , Challenge_Funct , TEC_savefig
for File in sys.argv[1:]:
    print(File)
    path_to_save = sys.argv[2][:-33]
    print('this is path_to_save  = '+str(path_to_save))
    TEC_savefig(File,path_to_save,File+str('.png'))
from Day4_funct import Plot_tec , Challenge_Funct , TEC_savefig
import sys

File = sys.argv[2]
print(File)
path_to_save = sys.argv[1]
print('this is path_to_save  = '+str(path_to_save))
TEC_savefig(path_to_save+File,path_to_save,File+str('.png'))


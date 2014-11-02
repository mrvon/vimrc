# Author Mrvon
# Auto Patch Program for Vim


import os

min_patch_num = 1
max_patch_num = 450

for i in range(min_patch_num, max_patch_num):
    patch_file = "7.4.{0:03}".format(i)
    print("Start patch file: " + patch_file)
    patch_cmd = "patch -p0 < " + patch_file

    try:
        if os.system(patch_cmd) == 0:
            print("Patch file {0} SUCCESSFUL".format(patch_file))
        else:
            print("Patch file {0} FAILED".format(patch_file))
            break
    except KeyboardInterrupt:
        break

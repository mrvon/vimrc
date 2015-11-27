# Author Mrvon
# Auto Download Vim Patch file


import os

min_patch_num = 1
max_patch_num = 1000

for i in range(min_patch_num, max_patch_num):
    patch_file = "7.4.{0:003}".format(i)

    if os.path.exists(patch_file):
        continue

    print("Start download patch file: " + patch_file)
    download_cmd = 'curl -o {0} ftp://ftp.vim.org/pub/vim/patches/7.4/{1}'.format(patch_file, patch_file)

    try:
        if os.system(download_cmd) == 0:
            print("Download file {0} SUCCESSFUL".format(patch_file))
        else:
            print("Download file {0} FAILED".format(patch_file))
            break
    except KeyboardInterrupt:
        break

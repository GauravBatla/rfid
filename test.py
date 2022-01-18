import os
# update = input("update server (y/n):")
# server = input("run server  (y/n):")
# Get the path of current working directory
path = r'\\192.168.68.58\data'
# Get the list of all files and directories
# in current working directory
print(path)
demo = []
final ={}
dir_list = os.listdir(path)
print(dir_list)
# file =open(f"{dir_list[0]}")
# file_read = file.read()
# temp_file = file_read.split("=")

# print(len(file_read))
# for k in range(len(file_read)):
    # print(temp_file[k])
# temp_file[1] =temp_file[1].replace(","," ")

# print(final)
# print(dir_list)
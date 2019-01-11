import sys

input_file1 = sys.argv[1]
if_ptr1 = open(input_file1, 'r')

input_file2 = sys.argv[2]
if_ptr2 = open(input_file2, 'r')

output_file1 = sys.argv[3]
of_ptr1 = open(output_file1, 'w')
count =0
for line1 in if_ptr1:
    inst_from_asm = line1.split()[0]
    if_ptr2 = open(input_file2, 'r')
    match_flag = 0
    for line2 in if_ptr2:
        inst_from_list = line2.split()[0]
        if inst_from_list.lower() == inst_from_asm.lower():
           of_ptr1.write( line2 + "\n")
           match_flag = 1
           count+=1
           break
    if_ptr2.close()  
    if match_flag == 0:
        of_ptr1.write(line1 + ";" + "This is not an instruction" + "\n")
print(count)


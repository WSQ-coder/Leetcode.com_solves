#----------------- LEET CODE -------------------
# 195. Tenth Line
# Read from the file file.txt and output the tenth line to stdout.



# simple solve
# sed -n "10p" file.txt

# faster - Don't read the full file if not needed
sed '10q;d' file.txt

# Other solve
# awk 'NR==10' file.txt

##################################################
# Benchmarking runtime performance
##################################################
# seq 10000 > file.txt
#  { time sed "10p" file.txt > /dev/null ; } 2>&1  | grep real | awk '{print $2}'
# 0m0.010s
#
# { time sed "10q;d" file.txt > /dev/null ; } 2>&1  | grep real | awk '{print $2}'
# 0m0.002s
#
# { time sed "10q;d" file.txt > /dev/null ; } 2>&1  | grep real | awk '{print $2}'
# 0m0.002s
#
#######################
# seq 1000000 > file.txt
#
# { time sed "10p" file.txt > /dev/null ; } 2>&1  | grep real | awk '{print $2}'
# 0m0.115s
#
# { time sed "10q;d" file.txt > /dev/null ; } 2>&1  | grep real | awk '{print $2}'
# 0m0.002s
#
# { time head -10 file.txt | tail -1 > /dev/null ; } 2>&1  | grep real | awk '{print $2}'
# 0m0.003s
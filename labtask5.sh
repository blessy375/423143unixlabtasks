# 1. Extract only ERROR messages along with their timestamps from log file
awk '$2 == "ERROR" {print $1, $4}' logfile.txt

# 2. Compute average of each subject from a tab-separated CSV
awk 'NR > 1 { math += $2; sci += $3; eng += $4; count++ }
     END { 
       print "Math Avg:", math/count; 
       print "Science Avg:", sci/count; 
       print "English Avg:", eng/count 
     }' marks.tsv

# 3. Count occurrences of each IP in server log
awk '{ ip[$1]++ } END { for (i in ip) print i, ip[i] }' server.log

# 4. Swap the first and last words in each line
sed -E 's/^([^ ]+) (.*) ([^ ]+)$/\3 \2 \1/' text.txt

# 5. Remove consecutive duplicate words
sed -E 's/\b(\w+)( \1)+\b/\1/g' duplicates.txt

# Question 1: List all files that start with the letter 'a'
ls a*

# Question 2: List all files with a .txt extension
ls *.txt

# Question 3: Find all files with exactly five characters in their name (no extension)
ls ?????     # Matches files with exactly 5 characters (no dot)

# Question 4: List files starting with any letter between b and e
ls [b-e]*

# Question 5: List files ending with .log where the second character is a number (e.g., a1.log)
ls ?[0-9].log

# Open the file in read mode
with open('example.txt', 'r') as file:
    # Read the contents of the file
    contents = file.read()

# Print the contents of the file
print(contents)

# Count the number of lines in the file
num_lines = len(contents.split('\n'))
print(f'The file has {num_lines} lines.')

# Count the number of words in the file
num_words = len(contents.split())
print(f'The file has {num_words} words.')

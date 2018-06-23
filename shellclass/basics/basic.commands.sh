#!/bin/bash

# other than the first line (the Shebang), these are comments

# This script displays various information to the screen

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable
echo "$WORD"

# Demonstarte that single wquotes cause variables to NOT get expanded
echo '$WORD'

# combine the variable with hard-coded text.
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax
echo "This is a shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun!"

# Show how NOT to append text to a variable
# This doesn't work:
echo "$WORDing is fun!"

# Create another variable
ENDING='ed'

# Combine two variables
echo "This is ${WORD}${ENDING}."

# Change the value stored in the ENDING variable (reassignment)
ENDING='ing'
echo "${WORD}${ENDING} is fun."

# Reassign value to ENDING again
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class."


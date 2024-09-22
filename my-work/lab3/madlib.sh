#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " WORD1
read -p "2. Name an city: " WORD2
read -p "3. Name an object: " WORD3
read -p "4. Name a proper name: " WORD4
read -p "5. Name a past tense verb: " WORD5
read -p "6. Name a family member: " WORD6
read -p "7. Name an object : " WORD7
read -p "8. Name a body part: " WORD8

echo "A $WORD1 player in $WORD2 was arrested this morning after he stole a $WORD3"
echo "in front of $WORD4. He had a history of $WORD5, but no one - not even his"
echo "$WORD6 - ever imagined he have a $WORD7 stuck in his $WORD8. "

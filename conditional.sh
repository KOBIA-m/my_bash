#!/bin/bash
#using conditional blocks to create response to the user

echo 'Do you feel gratefu?'
echo -n "enter \"y\" for yes , \"n\" for no."
read response
if ["$response" == "y"]
then
    echo "It is good to be grateful."
    echo "Feedback as to why you are grateful."

elif ["$response" = "n"]
then
    echo "I am so sorry about that."
    echo "You should practice gratitude."
    echo "All the best as start your journey."

else
    echo "your answer should be 'y' or 'n'."
    echo "Please review the script."

fi

#performing simple calculations

echo -n "Name of integer:"
read n1
echo -n "Name another integer:"
read n2

sum=$(($n1+$n2))
product=$(($n1*n2))

echo "the sum of $n1 and $n2 is $sum"
echo "The product of $n1 and $n2 is $product"

#Adding logic to the script where sum is less than, greater to and equal to the product

if[ $sum -lt $product ]
then
    echo "Sum is less than product."

elif[ $sum -gt $product ]
then
    echo "Sum is greater than product."

elif[ $sum == $product ]
then
    echo "Sum is equal to product."

fi

#Creating script that parses table columns to 3 arrays.

csv_file="./arrays_table.csv"

#Parse table columns to 3 arrays
column_0=($(cut -d "," -f 1 $csv_file))
column_1=($(cut -d "," -f 2 $csv_file))
column_2=($(cut -d "," -f 3 $csv_file))

#print the first array.
echo "Displaying the first column."
echo "${column_0[@]}"

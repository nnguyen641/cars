#! /bin/bash
# cars.sh
# Nathan Nguyen

quit=3

echo "Enter 1 to add a car, 2 to list the cars in inventory, or 3 to quit:"
read -r response

while [ "$response" -ne "$quit" ]
do
	case "$response" in
		"1") echo "Enter the year:"
		     read -r year
		     echo "Enter the make:"
		     read -r make
		     echo "Enter the model:"
		     read -r model
	       	     echo "$year:$make:$model" >> My_old_cars.txt
		     echo "Enter 1 to add a car, 2 to list the cars in inventory, or 3 to quit:"
		     read -r response;;	 
		"2") sort -n My_old_cars.txt
			echo "Enter 1 to add a car, 2 to list the cars in inventory, or 3 to quit:"
			read -r response;;
		"3") response=3;;
		*) echo "Please enter 1, 2, or 3:"
		   read -r response;;
	esac
done
echo "Thank you. Goodbye." 

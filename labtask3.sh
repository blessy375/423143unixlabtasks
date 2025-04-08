#!/bin/bash

### 1. Check if a number is Even or Odd ###
echo "1. EVEN or ODD"
echo -n "Enter a number: "
read num
if (( num % 2 == 0 )); then
    echo "$num is Even"
else
    echo "$num is Odd"
fi

echo ""
### 2. Check Leap Year ###
echo "2. LEAP YEAR CHECK"
echo -n "Enter a year: "
read year
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a Leap Year"
else
    echo "$year is NOT a Leap Year"
fi

echo ""
### 3. Factorial of a Number ###
echo "3. FACTORIAL"
echo -n "Enter a number: "
read n
fact=1
for (( i=1; i<=n; i++ ))
do
    fact=$((fact * i))
done
echo "Factorial of $n is $fact"

echo ""
### 4. Swap Two Numbers ###
echo "4. SWAP TWO NUMBERS"
echo -n "Enter first number: "
read a
echo -n "Enter second number: "
read b
echo "Before swapping: a=$a, b=$b"
temp=$a
a=$b
b=$temp
echo "After swapping: a=$a, b=$b"

echo ""
### 5. GCD and LCM ###
echo "5. GCD AND LCM"
echo -n "Enter first number: "
read m
echo -n "Enter second number: "
read n

x=$m
y=$n
while [ $y -ne 0 ]
do
    temp=$y
    y=$(( x % y ))
    x=$temp
done
gcd=$x
lcm=$(( (m * n) / gcd ))

echo "GCD of $m and $n is $gcd"
echo "LCM of $m and $n is $lcm"

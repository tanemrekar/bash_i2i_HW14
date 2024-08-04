#!/bin/bash

echo "Input calculation operand (+, -, *, /, %, !)"
read operand

if [ "$operand" == "!" ]; then
  echo "Input number"
  read num1
else
  echo "Input number1"
  read num1
  echo "Input number2"
  read num2
fi

case $operand in
  +) echo "Result : $((num1 + num2))";;
  -) echo "Result : $((num1 - num2))";;
  \*) echo "Result : $((num1 * num2))";;
  /) echo "Result : $(bc -l <<< "scale=2; $num1 / $num2")";;
  %) echo "Result : $((num1 % num2))";;
  !) 
    fact=1
    for ((i=1; i<=num1; i++)); do
      fact=$((fact * i))
    done
    echo "Result : $fact";;
  *) echo "Invalid operand";;
esac
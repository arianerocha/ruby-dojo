# Prime number algorithm

To create an algorithm that finds prime numbers, you have to decide if the number in question can only be divided by itself and 1. To do that, you have to check if the number can be divided by itself and each number below it, down to 1.

The process in Ruby is to check whether each number is divisible by these integers, and if it is, then Ruby designates it as a prime number.
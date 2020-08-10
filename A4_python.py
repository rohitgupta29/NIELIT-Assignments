# -*- coding: utf-8 -*-
"""
Created on Mon Aug 10 15:46:10 2020

@author: infom
"""

#1. Write a script to display the distance between two points in XY plane.

import math

p = (4,6)
q = (6,3)

pq = math.sqrt(((p[0] - q[0])**2) + ((p[1]- q[1])**2))

print(pq)



#Q2>Write a script to display the distance between two points in XY plane
import math

def fruitful(p,q):
    pq = math.sqrt(((p[0] - q[0])**2) + ((p[1]- q[1])**2))
    return pq


print(fruitful((4,6),(6,3)))




#Q3> Write a script to check whether a given number is prime or not

num = int(input("Enter a number: "))

#Prime numbers are greater than 1

if num > 1:
    for i in range(2,num):
        if (num % i ) == 0:
            print(num, "is not a prime number")
            print(i, "times" , num//i , "is", num)
            break
        
    else:
        print("Yes,",num, "is a prime number!")
        
        
else:
    print(num, "is not a prime number")
    
    


#Q4>Write a script to print the total no. of palindrome words in a given sentence

def palindrome_words(string):
    total = 0
    for word in string.split():
        if word == word[::-1]:
            total += 1
        
    return total


print(palindrome_words("abcba aba dbd" ))
print(palindrome_words("abc aaa rar"))
            


#Q5>Write a script to count words in a given sentence (using dict).

def word_count(str):
    counts = dict()
    words = str.split()
    
    for word in words:
        if word in counts:
            counts[word] += 1
        else:
            counts[word] = 1
            
    return counts

print(word_count('the quick brown fox jumps over the lazy dog.'))

########################## THANK YOU ##########################
    
    

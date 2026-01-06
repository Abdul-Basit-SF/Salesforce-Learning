public with sharing class GeneralProblems {
    /*
    Problem 1 – Sum of Numbers in a List
Task:
Create a List<Integer> of 10 numbers.
Calculate the sum of all numbers using a loop.
Print the total sum.
Skills: Loops, Lists, Integer operations.*/

    public static void SumOfListNumber(List<Integer> NumList) {
     integer sum = 0;
     for(integer Num : NumList){
        sum = sum + Num;
     }
     system.debug('The sum of the List item is ' + sum);
    }

    /*
Intermediate Problem 2 – Filter Even Numbers
Task:
Create a List<Integer> of 10 numbers.
Create a new List<Integer> containing only even numbers.
Print the filtered list.
Skills: Conditional logic (if), Lists, Loops.


Intermediate Problem 3 – Unique Words Counter
Task:
Create a List<String> containing words, some duplicates.
Use a Set<String> to find unique words.
Print the total number of unique words.
Skills: Lists, Sets, Understanding duplicates.


Intermediate Problem 4 – Map Manipulation
Task:
Create a Map<String, Integer> of products and their prices.
Increase the price of each product by 10%.
Print the updated map.
Skills: Map iteration, basic math operations.


Intermediate Problem 5 – Student Grades
Task:
Create a Map<String, Integer> of students and their marks.
Loop through the map and print “Pass” if marks ≥ 50, else “Fail”.
Skills: Maps, Loops, Conditional statements. */
}
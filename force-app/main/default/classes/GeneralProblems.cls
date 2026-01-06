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
Problem 2 – Filter Even Numbers
Task:
Create a List<Integer> of 10 numbers.
Create a new List<Integer> containing only even numbers.
Print the filtered list.
Skills: Conditional logic (if), Lists, Loops.*/
public static void FilterEvenNumber(List<Integer> NumList){
    List<Integer> EvenList = new List<Integer>{};
    for(integer Num : NumList){
        if(Math.mod(Num , 2) == 0){
           EvenList.add(Num);
        }
    }
    system.debug('List of Even Number is: ' + EvenList);
}

/*
Problem 3 – Unique Words Counter
Task:
Create a List<String> containing words, some duplicates.
Use a Set<String> to find unique words.
Print the total number of unique words.
Skills: Lists, Sets, Understanding duplicates.*/

public static void uniqueWordsCounter(List<String> WordsList){
  Set<String> uniqueWords = new Set<String>{};
  for(String Word : WordsList){
    uniqueWords.add(Word);
  }
  integer TotalUniqueWords = uniqueWords.size();
  system.debug('Set of Unique Words is: ' + uniqueWords);
  system.debug('The Total No of Unique words is: ' + TotalUniqueWords);
}

/*
Problem 4 – Map Manipulation
Task:
Create a Map<String, Integer> of products and their prices.
Increase the price of each product by 10%.
Print the updated map.
Skills: Map iteration, basic math operations.*/

public static void MapManipulation(){
    Map<String , Integer> products = new Map<String , Integer>{
        'Apple' => 100,
        'Banana' => 150,
        'Orange' => 170
    };
    for(String product : products.keySet()){
        integer oldPrice = products.get(product);
        integer newPrice = oldPrice + (oldPrice*10/100);
        products.put(product , newPrice);
    }
    system.debug('The update prices of Products is: ' + products);
}
/*
Problem 5 – Student Grades
Task:
Create a Map<String, Integer> of students and their marks.
Loop through the map and print “Pass” if marks ≥ 50, else “Fail”.
Skills: Maps, Loops, Conditional statements. */
}
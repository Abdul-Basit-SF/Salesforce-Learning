public with sharing class basicProblems {
    /*Problem 1: Sum of Even Numbers
    Task:
        Create a List<Integer> containing at least 10 numbers.
        Calculate the sum of only even numbers in the list.
        Print the final sum using System.debug().
        Concepts Covered:
        Lists, loops, conditional statements */
    public static void sumOfEvenNumber(List<Integer> Numbers) {
        integer sum = 0;
        for(integer num : Numbers){
            if(math.mod(num , 2) == 0){
                sum = sum + num;
            }
        }
        system.debug('Sum of Even Number is: ' + sum);
    }
    
    /* Problem 2: Filter Long Names
    Task:
        Create a List<String> containing 8–10 names.
        Print only those names whose length is greater than 5 characters.
        Concepts Covered:
        String handling, loops, conditions
         */
    public static void filterLongNames(List<String> names){
        List<String> longNames = new List<String>();
        for(String N : names){
            if(N.length() > 5){
                longNames.add(N);
            }
        }
        system.debug('Names longer than 5 characters: ' + longNames);
    }
    
    /* Problem 3: Remove Duplicate Values
    Task:
        Create a List<String> containing duplicate values.
        Convert the list into a Set<String> to remove duplicates.
        Print the final unique values.
        Concepts Covered:
        Set basics, uniqueness property
         */
    public static void removeDuplicate(List<String> Names){
        Set<String> uniqueNames = new Set<String>(Names);
        system.debug('Unique Names are: ' + uniqueNames);
    }
    
    /* Problem 4: Check Value Existence
    Task:
        Create a Set<Integer> with some numbers.
        Check whether a given number exists in the set or not.
        Print a suitable message using System.debug().
        Concepts Covered:
        Set methods (contains()), conditions
         */
    public static void valueExist(Set<Integer> numbers){
        if(numbers.contains(5)){
            system.debug('Number exist in the set');
        }else{
            system.debug('Number does not exist');
        }
    }
    
    /*Problem 5: Store Student Marks
    Task:
        Create a Map<String, Integer> where:
        Key = Student Name
        Value = Marks
        Add at least 5 students.
        Print each student’s name along with their marks.
        Concepts Covered:
        Map basics, put(), iteration
         */
    public static void storeStudentMarks(){
        Map<String,Integer> studentMarks = new Map<String,Integer>();
        studentMarks.put('Maaz', 56);
        studentMarks.put('Ikrash',40);
        studentMarks.put('Furqan', 50);
        studentMarks.put('Abdullah', 60);
        studentMarks.put('Abdul Wahab', 55);
        for(String studentNames : studentMarks.keySet()){
            Integer marks = studentMarks.get(studentNames);
            system.debug(studentNames + 'has marks ' + marks);
        }
    }
}
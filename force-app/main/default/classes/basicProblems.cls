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
    
    /*Problem 6: Check Key Existence
    Task:
        Create a Map<String, String> that stores:
        Key = Country Code
        Value = Country Name
        Check whether a given country code exists in the map.
        Print a suitable message.
        Concepts Covered:
        containsKey(), conditional logic.
         */
    public static void checkKeyExist(String code){
        Map<String,String> countryCode = new Map<String,String>();
        countryCode.put('1234','Pakistan');
        countryCode.put('5678','Afghanistan');
        countryCode.put('910','Turkey');
        countryCode.put('1112','Iran');
        if(countryCode.containsKey(code)){
            system.debug('Yes the code exist in the system');
        }else{
            system.debug('code does not exist in the system');
        }
    }
    
    /*Problem 7: Check Even or Odd
    Task:
        You are given an integer number.
        Use if-else to check whether the number is even or odd.
        Print a suitable message using System.debug().
        Concepts Covered:
        Basic if-else, modulus operator
         */
    public static void evenOrOdd(Integer Num){
        if(Math.mod(Num, 2) == 0){
            system.debug('The Number ' + Num + ' is Even');
        }else{
            system.debug('The Number ' + Num + ' is odd');
        }
    }
    
    /*Problem 8: User Login Status
    Task:
        You are given a Boolean variable isLoggedIn.
        If the user is logged in, print "Welcome User".
        Otherwise, print "Please login first".
        Concepts Covered:
        Boolean conditions, simple if-else
         */
    public static void loginStatus(String Name ,Boolean isLoggedIn){
        if(isLoggedIn){
            system.debug('Welcome ' + Name);
        }else{
            system.debug('Please login first');
        }
    }
}
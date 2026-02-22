public with sharing class intermediateProblems {
    /*Problem 1: Remove Duplicate Numbers
    Task:
        You are given a List<Integer> that contains duplicate values.
        Remove all duplicate numbers without using Set.
        Print the final list with unique values only. */
    public static void RemoveDuplicateNumbers(List<Integer> NumList){
        List<Integer> uniqueNumbers = new List<Integer>();
        for(Integer num : NumList){
            if(!uniqueNumbers.contains(num)){
                uniqueNumbers.add(num);
            }
        }
        system.debug(uniqueNumbers);
        
    }
    /*Problem 2: Find the Second Highest Number
    Task:
        You are given a List<Integer>.
        Find and print the second highest number in the list.
        Sorting the list is not allowed.
        Concepts Covered:
        Comparison logic, loops*/
    public static void secondHighestNumber(List<integer> numList){
        integer highestNum = -24567823;
        integer secondHigestNum = -24567823;
        
        for(integer num : numList){
            if(num > highestNum){
                secondHigestNum = highestNum;
                highestNum = num;
            }else if(num > secondHigestNum && num != highestNum){
                secondHigestNum = num;
            }
        }
        system.debug('Second Highest Number in List is: ' + secondHigestNum);
    }
    public static void runMyTest() { // 3. Method 2 shuru
        List<Integer> testList = new List<Integer>{10, 5, 20, 20, 15};
        secondHighestNumber(testList);
        RemoveDuplicateNumbers(testList);
        intermediateProblems.runMyTest();
    }
    
}
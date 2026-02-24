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
    
    /*Problem 3: Common Elements Between Two Sets
    Task:
        Create two different Set<Integer> objects.
        Find and print the common elements between both sets.
        Restriction:
        Do not convert the sets into lists.
         */
    public static void commonElementsBetweenTwoSets(Set<Integer> set01 , Set<Integer> set02){
        Set<Integer> commonElements = new Set<Integer>(set01);
        commonElements.retainAll(set02);
        system.debug('Common Element in set 01 and set 02 is: '+commonElements);
        
    }
    
    /*Problem 4: Count Unique Words
    Task:
        You are given a sentence as a String.
        Split the sentence into words.
        Use a Set<String> to count how many unique words are present.
         */
        public static void countUniqueWords(String message){
            if(message == null){
                system.debug('Unique Words Count is 0');
                return;
            }
            String[] words = message.toLowerCase().trim().split('\\s+');
            Set<String> uniqueWords = new Set<String>();
            for(String word : words){
                uniqueWords.add(word);
            }
            system.debug('Unique words count are: ' + uniqueWords.size());

        }
    
}
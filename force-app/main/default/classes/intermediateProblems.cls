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

        }
}
public with sharing class Homework 
{
    // Create the method bodies as requested by the comments,  as shown in the
    // example below. 

    // EXAMPLE: Take a List of Integers, total them up and return the total
    public Integer total(List<Integer> values)
    {
        Integer result=0;
        for (Integer idx=0; idx<values.size(); idx++)
        {
            result+=values[idx];
        }

        return result;
    }

    // 1. Take a List of integers and return the largest value using a loop
    public Integer maxInListLoop(List<Integer> values)
    {
        Integer maxValue;

        Integer i = 1;
        // consider lists of null and -ve integers
        while (i < values.size()) 
        {
            Integer loopValue = values[i];
            if (maxValue == null || loopValue > maxValue)
            {
                maxValue = loopValue;
            }
            i++;
        }
        return maxValue;
    }

    // 2. Take a List of integers and return the largest value without using a loop.
    public Integer maxInList(List<Integer> values)
    {
        values.sort();
        
        return values.get(values.size()-1);
    }

    // 3. Take a list of Integers and reverse the order
    public List<Integer> reverse(List<Integer> values)
    {
        Integer[] reversed = new Integer[]{};
        for(Integer i = values.size() - 1; i >= 0; i--){
            reversed.add(values[i]);
        }

        return reversed;
    }

    // 4. Take a list of Strings and extract every third element into a new list that is returned. 
    //    Extra credit for handling that the list passed in may not be exactly divisible by 3.
    public List<String> everyThird(List<String> originals)
    {
        List<String> result = new List<String>();

        for (Integer i = 3; i <= originals.size(); i++)
        {
            // if i is exactly divisible by 3, then take the (i - 3)th element of the array
            if (Math.Mod(i, 3) == 0)
            {
                result.add(originals.get(i-3));
            }
        }

        return result;

    }

    // 5. Take a String and return the number of unique characters in the String.
    public Integer uniqueCharacters(String value)
    {
        Set<String> uniqueChars = new Set<String>();

        for (Integer i = 0; i < value.length(); i++)
        {
            uniqueChars.add(value.substring(i, i +1));
        }

        return uniqueChars.size();

    }

    // 6. Take a String and return a map of characters and their position in the String. 
    //    Note that characters may occur more than once and you should identify the 
    //    position of all occurrences.
    public Map<String, List<Integer>> getPositionsByCharacter(String value)
    {
        Map<String,List<Integer>> positionsByChar = new Map<String,List<Integer>>();

        for (Integer i = 0; i < value.length(); i++)
        {
            // current character in string
            String currentChar = value.substring(i, i +1);
            
            // if the map already contains the character, add the index of the char to the list in that map index 
            if (positionsByChar.containsKey(currentChar))
            {
                positionsByChar.get(currentChar).add(i);
            }
            // else add the char to the map as a key and a new list containning the index
            else 
            {
                positionsByChar.put(currentChar, new List<Integer>{i});
            }
        }

        return positionsByChar;
        
    }

    // 7. Take a map of type Map<Integer, String> and return a map of type Map<String, Integer> with the keys and values swapped
    public Map<String, Integer> swapOver(Map<Integer, String> inMap)
    {
        Map<String, Integer> outMap = new Map<String, Integer>();

        for(Integer KeyValue : inMap.keySet()){
            outMap.put(inMap.get(keyValue),keyValue);
        }

        return outMap;
    }

    // 8. Take a List of Strings representing playing cards - 
    //                   ‘Ace’, ‘Two’, ‘Three’, … , ‘Jack’, ‘Queen’, ‘King’. 
    //    Calculate the total value of the cards where :
    //             ‘Ace’ has the value 1
    //             ‘Two’ has the value 2, etc. 
    //              ‘Jack’, ‘Queen’, ‘King’ have the value 10.
    public Integer valueOfHand(List<String> cards)
    {
        Integer value = 0;

        for (String currentCard : cards)
        {
            switch on currentCard 
            {
                when 'Ace' 
                {		
                    value += 1;
                }
                when 'Two' 
                {		
                    value += 2;
                }
                when 'Three' 
                {		
                    value += 3;
                }    
                when 'Four' 
                {		
                    value += 4;
                }    
                when 'Five' 
                {		
                    value += 5;
                }    
                when 'Six' 
                {		
                    value += 6;
                }    
                when 'Seven' 
                {		
                    value += 7;
                }    
                when 'Eight' 
                {		
                    value += 8;
                }    
                when 'Nine' 
                {		
                    value += 9;
                }    
                when else 
                {		
                    value += 10;
                }    
            }	
        }

        return value;

    }

    // 9. Take a List of 10 Integers and return a new List where Integers at position 8, 9 and 10 
    //    are moved to the front of the list. 
    //   For example, if the input list is 1,2,3,4,5,6,7,8,9,10, 
    //          the returned list would be 8,9,10,1,2,3,4,5,6,7
    public List<Integer> rotateFinalThree(List<Integer> values)
    {
        List<Integer> rotatedFinalThree = new List<Integer>();
        
        // have assumed values must cotain 10 Integers
        List<Integer> firstSixValues = new List<Integer>();
        List<Integer> lastThreeValues = new List<Integer>();

        for (Integer i = 0; i < values.size(); i++)
        {
            if (i < 7)
            {
                firstSixValues.add(values[i]);
            }
            else
            {
                lastThreeValues.add(values[i]);
            }
        }

        rotatedFinalThree.addAll(lastThreeValues);
        rotatedFinalThree.addAll(firstSixValues);

        return rotatedFinalThree;
    }

    // 10. Take a String containing a number of words separated by whitespace and remove any duplicates.
    //  Hint: String.split and String.join allow you to turn Strings into lists and vice versa. 
    //  You should be able to achieve this in around 6 lines without any loops.
    public String uniqueWords(String original)
    {
      
        List<String> stringList = original.split(' ');
        Set<String> uniqueStrings = new Set<String>();
        
        uniqueStrings.addAll(stringList);
        
        String deduplicatedWords = uniqueStrings.toString();

        return deduplicatedWords;

    }
}

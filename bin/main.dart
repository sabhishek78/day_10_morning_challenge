import 'dart:math';
import 'dart:io';


// Challenge 1
// Write a function that returns the longest sequence of consecutive zeroes in a binary string.
// Examples:
// longestZero("01100001011000") ➞ "0000"
//
// longestZero("100100100") ➞ "00"
//
// longestZero("11111") ➞ ""

String longestZero(String binary)
{
  int count=0;
  int max=0;
  int zeroStringEnds;
  List<String> zeroList=[];
 for(int i=0;i<binary.length;i++)
   {
     if(binary[i]=='0')
       {
         count++;
       }
     else{
       zeroStringEnds=1;
       if(zeroStringEnds==1 && i!=0)
         {
           if(max<count)
             {
               max=count;
               count=0;
             }
         }
     }
   }
 //print(max);
  zeroList =List<String>.filled(max,'0');
  String answer=zeroList.join();
  return answer;
}

// Challenge 2
// Create a function that performs an even-odd transform to an array, n times. Each even-odd transformation:
//
// 1. Adds two (+2) to each odd integer.
// 2. Subtracts two (-2) to each even integer.
// Examples:
// evenOddTransform([3, 4, 9], 3) ➞ [9, -2, 15]
// Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]
//
// evenOddTransform([0, 0, 0], 10) ➞ [-20, -20, -20]
//
// evenOddTransform([1, 2, 3], 1) ➞ [3, 0, 5]

List<int> evenOddTransform(List<int> array,int n)
{
  for(int i=0;i<array.length;i++)
    {
      /*if(array[i]<0)
        {
          print("Invalid Array");
          return;
        }*/
      if(array[i] % 2==0)
        {
          array[i]=array[i]-2*n;

        }
      else{
        array[i]=array[i]+2*n;
      }
    }
  return array;
}





main() {
 print(longestZero('10010001'));
  print(evenOddTransform([3,4,9], 3));
}

// Challenge 3
// Write 2 test cases to test both the previous functions in test.dart
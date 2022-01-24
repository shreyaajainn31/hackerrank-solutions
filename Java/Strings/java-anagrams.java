/*
Two strings,  and , are called anagrams if they contain all the same characters in the same frequencies. For this challenge, the test is not case-sensitive. For example, the anagrams of CAT are CAT, ACT, tac, TCA, aTC, and CtA.

Function Description

Complete the isAnagram function in the editor.

isAnagram has the following parameters:

string a: the first string
string b: the second string
Returns

boolean: If  and  are case-insensitive anagrams, return true. Otherwise, return false.
Input Format

The first line contains a string .
The second line contains a string .

Constraints

Strings  and  consist of English alphabetic characters.
The comparison should NOT be case sensitive.
Sample Input 0

anagram
margana
Sample Output 0

Anagrams
Explanation 0

Character	Frequency: anagram	Frequency: margana
A or a	3	3
G or g	1	1
N or n	1	1
M or m	1	1
R or r	1	1
The two strings contain all the same letters in the same frequencies, so we print "Anagrams".

Sample Input 1
anagramm
marganaa

Sample Output 1
Not Anagrams
*/

import java.io.*;
import java.util.*;

public class Solution {

     static String sort(String s){
         char[]c = s.toCharArray();
         Arrays.sort(c);
         return new String(c);
     }
     static boolean isAnagram(String a, String b) {
        // Complete the function
        
        a = a.toLowerCase();
        b = b.toLowerCase();
        a = sort(a);
        b = sort(b);
        
        return a.equals(b);
    }
   
    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        
        Scanner sc = new Scanner(System.in);
        String a = sc.nextLine();
        String b = sc.nextLine();
        
        if(isAnagram(a,b)){
            System.out.println("Anagrams");
        }
        else{
            System.out.println("Not Anagrams");
        }
        
    }
}

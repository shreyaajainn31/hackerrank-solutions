/*
A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward.

Given a string A , print Yes if it is a palindrome, print No otherwise.

Constraints

 A will consist at most  lower case english letters.
Sample Input
madam
Sample Output
Yes

*/

import java.io.*;
import java.util.*;

public class Solution {

    static boolean isPalindrome(String s){
        int i = 0, j = s.length()-1;
        while(i <= j){
            if(s.charAt(i) != s.charAt(j)){
                return false;
            }
            i++;
            j--;
        }
        
        return true;
    }    
    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        String A=sc.next();
        /* Enter your code here. Print output to STDOUT. */
        if(isPalindrome(A)){
            System.out.println("Yes");
        }
        else{
             System.out.println("No");
        }
    }
}




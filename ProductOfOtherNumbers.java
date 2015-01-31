/*
 *You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
 *Write a function that takes an array of integers and returns an array of the products.
 *
 *For example, given:
 *
 *  [1, 7, 3, 4]
 *your function would return:
 *
 *  [84, 12, 28, 21]
 *by calculating:
 *
 *  [7*3*4, 1*3*4, 1*7*4, 1*7*3]
 *Do not use division in your solution.
 */

import java.util.Scanner;

public class ProductOfOtherNumbers{
  static System S;

  public static int[] toProductOfOtherNumbers(int[] arr){
    int i, l = arr.length;
    if(arr.length < 2){
      return arr;
    }
    int[] before = new int[l];
    int[] after = new int[l];
    int[] prod = new int[l];

    for( i=1, before[0] = 1;
        i<l;
        i++){
      before[i] = before[i-1] * arr[i-1];
        }

    for( i=l-2, after[l-1] = 1;
        i>=0;
        i--){
      after[i] = after[i+1] * arr[i+1];
        }

    for( i=0; i<l; i++ ){
      prod[i] = before[i] * after[i];
    }
    //S.out.println("before: "+arrayToString(before));
    //S.out.println("after: "+arrayToString(after));
    return prod;
  }

  public static void main(String[] args) {
    int l;
    int i;
    int[] ip = new int[0];
    int[] op = new int[0];
    Scanner in = new Scanner(System.in);

    S.out.println("length : ");
    l = in.nextInt();

    if(l > 0){
      ip = new int[l];
      S.out.println("array : ");
      for( i=0; i<l; i++ ){
        ip[i] = in.nextInt();
      }

      op = toProductOfOtherNumbers(ip);
    }

    S.out.println("input : "+arrayToString(ip));
    S.out.println("output : "+arrayToString(op));
  }

  public static String arrayToString(int[] arr){
    if(arr.length < 1){
      return "[]";
    }
    String str = "[ ";
    int l = arr.length - 1;
    int i;
    for( i=0; i<l; i++ ){
      str += arr[i];
      str += ", ";
    }
    str += arr[i];
    str += " ]";
    return str;
  }

}

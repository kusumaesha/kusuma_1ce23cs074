package com.conditional;

import java.util.Scanner;

public class OddEven {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("enter number:");
		int x;
		x=sc.nextInt();
		if(x==0) {
			System.out.println("the given number is:"+x+" is zero");
		}else if (x<0) {
			System.out.println("the given number is:"+x+" is -ve");
		}else if (x%2==0) {
			System.out.println("the given number is:"+x+" is even");
		}else {
			System.out.println("the given number is:"+x+" is odd");
		}
		sc.close();



			
		}
		
	}
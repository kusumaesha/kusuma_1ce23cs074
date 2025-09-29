package com.datatypes;

import java.util.Scanner;
public class UserInput {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int UserInput;
		System.out.println("Enter a number: ");
		UserInput = sc.nextInt();
		System.out.println("You entered value is: "+UserInput);
		sc.close();
	}

}

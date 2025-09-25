package com.inheritence;
	class animal{
		public void eat() {
			System.out.println("animal eating");
		}
	}
	class dog extends animal{
		@Override
		public void eat() {
			System.out.println("dog is eating");
		}
		public void iswalking() {
			System.out.println("dog is walking");
			}
	}

	public class Inheritence {
		public static void main(String[] args) {
			dog d1=new dog();
			d1.eat();
			d1.iswalking();
		}
		

	}

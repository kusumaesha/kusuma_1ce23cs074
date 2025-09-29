package com.abstraction;

abstract class shape{
	abstract void draw();
	public void display() {
		System.out.println("this is display function");
	}
}
class Circle extends shape{
	@Override
	void draw() {
		System.out.println("this is shape draw method");
	}
}

public class AbstractClass {
	public static void main(String[] args) {
		Circle circle = new Circle();
		circle.draw();
		circle.display();
		
		
	}

}
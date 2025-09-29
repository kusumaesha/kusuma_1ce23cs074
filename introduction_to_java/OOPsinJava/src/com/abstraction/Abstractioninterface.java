package com.abstraction;

class car implements vehicle{
	@Override
	public void start() {
		System.out.println("car class start method");
	}
	@Override
	public void stop() {
		System.out.println("car circle stop method");
		
	}
}
public class Abstractioninterface {
	public static void main(String[] args) {
		car c = new car();
		c.start();
		c.stop();
		
		vehicle.display();
	}

}
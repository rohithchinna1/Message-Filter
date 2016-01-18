package databaseconnection;

public class Test {
public static void main(String[] args) {
	String alphabet="MOBVCXZPNWIEURYTKSLAHFJDGQ";
	int character=(int)(Math.random()*26);
	String s=alphabet.substring(character, character+4);
	System.out.println(s);
}
}

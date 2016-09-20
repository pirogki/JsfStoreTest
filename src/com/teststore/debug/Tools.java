/**
 * 
 */
package com.teststore.debug;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

/**
 * @author Andrey
 *
 */
public class Tools {

	static private PrintWriter log = null;
	static{
		try {
			log = new PrintWriter("c:\\eclipse\\log.txt");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static void writeToLog(String message)
	{
		log.printf(message);
		log.flush();
	}
}

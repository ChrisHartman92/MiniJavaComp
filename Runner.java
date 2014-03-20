import java_cup.runtime.Symbol;
import syntaxtree.*;
import visitor.*;
import java.io.*;
import java.util.*;

public class Runner
{
	public static void main(String[] args)
	{
		if(args.length != 1)
		{
			System.out.println("ERROR: Invalid number of command line arguments.");
			System.out.println("USAGE: java Runner file.txt");
			System.exit(1);
		}
		try
		{
			Symbol sy;
			Program collect;
			pCup parser_obj = new pCup(new lexxer(new FileInputStream(args[0]))); 
			sy = parser_obj.parse();
		}
		catch (IOException e)
		{
			System.err.println("ERROR: Unable to open file: " + args[0]);
		}
		catch (Exception e)
		{
			e.printStackTrace(System.err);
		}
	}
}

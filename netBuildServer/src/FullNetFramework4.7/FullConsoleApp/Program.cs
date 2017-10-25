using ClassLibrary1DotNetFull;
using System;

namespace FullConsoleApp
{
	class Program
	{
		static void Main(string[] args)
		{
			var greeting = new Greeting();

			Console.WriteLine(greeting.SayHello());
			Console.ReadKey();
		}
	}
}

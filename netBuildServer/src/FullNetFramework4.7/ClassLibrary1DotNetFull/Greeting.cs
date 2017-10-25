using System;

namespace ClassLibrary1DotNetFull
{
	public class Greeting
	{
		public string SayHello()
		{
			var tmpGreeting = $"Hello World: {DateTime.Now.ToString()}";

			Console.WriteLine(tmpGreeting);

			return tmpGreeting;
		}
	}
}

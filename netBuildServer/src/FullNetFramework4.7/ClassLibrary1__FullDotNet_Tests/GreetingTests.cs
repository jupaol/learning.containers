using ClassLibrary1DotNetFull;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ClassLibrary1__FullDotNet_Tests
{
	[TestClass]
	public class GreetingTests
	{
		[TestClass]
		public class TheSayHelloMethod
		{
			[TestMethod]
			public void It_should_return_a_string_containtig_a_nice_greeting()
			{
				var sut = new Greeting();

				var res = sut.SayHello();

				Assert.IsTrue(res.Contains("Hello"));
			}
		}
	}
}

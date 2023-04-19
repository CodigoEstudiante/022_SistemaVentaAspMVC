using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            string text1 = Converter.GetSHA256("admin@gmail.com");
            string text2 = Converter.GetSHA256("tienda@gmail.com");

        }
    }
}

namespace Class_demo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Student first = new Student(1,"abcd",2,"12345678");
            first.initialize();
            first.showdisplay();
        }
    }
}



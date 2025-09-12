using System.ComponentModel.DataAnnotations;

namespace grade_evaluator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] marks = InputMarks();
            Report(marks);
            double average = CalculateAverage(marks);
            string grade = Gradecalculator(average);
            Console.WriteLine(grade);
            checkpass(marks);
        }
        static int[] InputMarks()
        {
            int[] marks = new int[5];
            for (int i = 0; i < marks.Length; i++) {
                Console.Write($"Enter marks for subject {i+1}: ");
                    marks[i]= Convert.ToInt32(Console.ReadLine());
            }
            return marks;
        }
        static void Report(int[] marks)
        {
            Console.WriteLine("\nStudent Grade Report");
            for (int i = 0; i < marks.Length; i++)
            {
                Console.WriteLine($"Subject {i + 1}: {marks[i]}");
            }
        }


        static double CalculateAverage(int[] marks)
        {
            int total = 0;
            foreach (int mark in marks)
            {
                total += mark;
            }
            return total / (double)marks.Length;
        }

        // Method to assign grade
        static string Gradecalculator(double average)
        {
            if (average >= 90) return "A+";
            else if (average >= 80) return "A";
            else if (average >= 70) return "B";
            else if (average >= 60) return "C";
            else if (average >= 50) return "D";
            else return "F";
        }

        // Method to check pass/fail
        static void checkpass(int[] marks)
        {
            bool allPassed = true;
            foreach (int mark in marks)
            {
                if (mark < 35)
                {
                    allPassed = false;
                    break;
                }
            }

            if (allPassed)
                Console.WriteLine("All subjects passed.");
            else
                Console.WriteLine("Some subjects failed.");
        }
    }
}

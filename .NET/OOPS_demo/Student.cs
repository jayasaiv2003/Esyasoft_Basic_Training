using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class_demo
{
    internal class Student
    {
        int id;
        string name;
        int standard;
        string contactno;
        public void initialize()
        {
            id=10;
            name="abcd";

        }
        public void showdisplay()
        {
            Console.WriteLine($"student id is :{id}");
            Console.WriteLine($"student name :{name}");
            Console.WriteLine($"student standard :{standard}");
            Console.WriteLine($"student contactno :{contactno}");

        }
        public void getmarks()
        {

        }
        public Student(int id, string name, int standard, string contactno)
        {
            this.id=id;
            this.name=name;
            this.standard=standard;
            this.contactno=contactno;
        }
        
    }
}

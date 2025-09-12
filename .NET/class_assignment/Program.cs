using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Banking_app
{
    internal class Program
    {
        static int accountno;
        static bool anyaccount=false;
        static int currentbalance = 0;
        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("Enter the action you want to perform:");
                Console.WriteLine("Enter the action you want to perform:");
                Console.WriteLine("1.Create a new bank account");
                Console.WriteLine("2.Deposit money");
                Console.WriteLine("3.Withdraw money");
                Console.WriteLine("4.Display account details");
                Console.WriteLine("5.Exit");
                int selected = Convert.ToInt32(Console.ReadLine());
                if (selected==1)
                {
                    if (anyaccount==true) { Console.WriteLine("There exists an account"); }


                    else
                    {
                        int created = Createaccount();
                        if (created ==1) anyaccount = true;
                    }
                       
           
                }
                else if (selected==2)
                {
                    Depositmoney();
                }
                else if (selected==3)
                {
                    Withdrawmoney();
                }
                else if (selected==4)
                {
                    Displayacc();
                }
                else
                {
                    break;
                    
                }
            }

        }
        static int Createaccount()
        {
            Console.WriteLine("Create a new account ? Press 1 to continue");
            Console.WriteLine("Use Existing account? Press 0");
            int a = Convert.ToInt32(Console.ReadLine());
            if (a==1)
            { 
                Console.WriteLine("Enter the new account number");
                accountno=Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter inital deposit amount");
                currentbalance=Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Account Created Successfully");
            }
            return a;
            
        }
        static void Depositmoney()
        {
            if (anyaccount==true)
            {
                Console.WriteLine("Enter the amount you want to deposit");
                int a = Convert.ToInt32(Console.ReadLine());
                currentbalance+=a;
                Console.WriteLine("Amount deposited Successfully");
                Console.WriteLine("The balance now is:");
                Console.WriteLine(currentbalance);
            }
            else
            {
                Console.WriteLine("You have no account! Please create it ");
            }

        }
        static void Withdrawmoney()
        {
            if (anyaccount==true)
            {
                Console.WriteLine("Enter the amount you want to withdraw");
                int a = Convert.ToInt32(Console.ReadLine());
                currentbalance-=a;
                Console.WriteLine("Amount Withdrawn Successfully");
                
                Console.WriteLine("The balance now is:");
                Console.WriteLine(currentbalance);
            }
            else
            {
                Console.WriteLine("You have no account! Please create it ");

            }
        }
        static void Displayacc()
        {
            if (anyaccount==true)
            {
                Console.WriteLine("Your account number is : ");
                Console.WriteLine(accountno);
                Console.WriteLine("Your current balance is : ");
                Console.WriteLine(currentbalance);
            }
            else
            {
                Console.WriteLine("You have no account! Please create it ");
            }
        }

    }
}

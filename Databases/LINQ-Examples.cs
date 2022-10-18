using System;
using System.Collections.Generic;
using System.Linq;
                    
public class Program
{
    public static void Main()
    {
        int[] numbers = new int[10]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        
        //First or default method returns the first value of the collection. If there is none, it returns the "default" value
        
        int greaterThanTwo = numbers.Where(greaterThanTwoFilter).OrderBy(identity).FirstOrDefault();
        //int greaterThanTwo = numbers.Where(x => x > 2).OrderBy(x => x).FirstOrDefault();

        
        //Console.WriteLine(greaterThanTwo);
        
        IEnumerable<int> greaterThanThree = (from x in numbers where x > 3 orderby x ascending select x).ToList(); 
        
        //foreach(int num in greaterThanThree)
        //{
        //    Console.WriteLine(num);
        //}
        
        int counter = 0;
        string randomstring = "a quick brown fox jumps over the lazy dog";
        char[] vowels = new char[5]{'a', 'e', 'i', 'o', 'u'};
        
        foreach(char c in randomstring)
        {
            if(Array.IndexOf(vowels, c) >= 0)
            {
                counter++;
            }
        }
        
        Console.WriteLine(counter);
        
        //counting: count the number of occurances of this condition. common ex: count # of times vowels occur in a given string
        Console.WriteLine(randomstring.Count(c => c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'));
        Console.WriteLine((from char c in randomstring where Array.IndexOf(vowels, c) >= 0 select c).Count()); 
        Console.WriteLine(randomstring.Count(c => Array.IndexOf(vowels, c) >= 0));

    }
    
    private static bool greaterThanTwoFilter(int x)
    {
        return x > 2;
    }
    
    private static int identity(int x)
    {
        return x;
    }


    using System;
    using System.Collections.Generic;
    using System.Linq;
                        
    public class Program
    {
        public static void Main()
        {
            MultiplyByTwo twox = doubleThis;
            Func<int, int> doubleNum = doubleThis;
            Action<string> print = PrintMe;
            print(doubleNum(10).ToString());
        }
        private static int doubleThis(int n)
        {
            return n * 2;
        }
        private static void PrintMe(string s)
        {
            Console.WriteLine(s);
        }
    }
    public delegate int MultiplyByTwo(int n);


}
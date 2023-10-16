using System;

namespace CrearPromedio
{
    class Program
    {
        static void Main(string[] args)
        {//Inicio
            double n, n1, n2, n3, n4, totaln, promn;

            Console.Write("\n Primera Nota:  ");
            n = Convert.ToDouble(Console.ReadLine());

            Console.Write("\n Segunda Nota:  ");
            n1 = Convert.ToDouble(Console.ReadLine());

            Console.Write("\n Tercera Nota:  ");
            n2 = Convert.ToDouble(Console.ReadLine());

            Console.Write("\n Cuarta Nota:  ");
            n3 = Convert.ToDouble(Console.ReadLine());

            Console.Write("\n Quinta Nota:  ");
            n4 = Convert.ToDouble(Console.ReadLine());

            totaln = n + n1 + n2 + n3 + n4;
            promn = totaln / 5;

            Console.WriteLine("----------------------------------------------------");
            Console.WriteLine("\n El total de la suma de las notas es:  " + totaln);
            Console.WriteLine("----------------------------------------------------");
            Console.WriteLine("\n El Promedio es: " + promn);
            Console.WriteLine("----------------------------------------------------");

            if (promn <= 2)
            {
                Console.WriteLine("\n ******A reprobado******");
            }else
                if (promn > 2 && promn <= 3 )
            {
                Console.WriteLine("\n -----Reprueba, pero con posibilidad de nivelacion------");
            }else
                if (promn > 3 && promn <= 4.99)
            {
                Console.WriteLine("\n ¡Gana la materia!");
            }else
                if (promn == 5)
            {
                Console.WriteLine("\n ¡¡¡¡¡Felicidades, sacaste la nota máxima!!!!!");
            }

        }//Fin
    }
}

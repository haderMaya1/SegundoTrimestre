using System;

namespace calculadora_por_porcentaje
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            //Inicio

            //Inicializacion de las variables

            double cantidad;
            double cantidad1;
            string operacion;
            double resultado;

            Console.WriteLine("Digite el nombre de la operacion a realizar");
            
            Console.WriteLine("SUMA");
            Console.WriteLine("RESTA");
            Console.WriteLine("MULTIPLICACION");
            Console.WriteLine("DIVISION");

            operacion = Console.ReadLine();

            Console.WriteLine("Digite la primera cantidad");
            cantidad = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("digite la segunda cantidad");
            cantidad1 = Convert.ToDouble(Console.ReadLine());

            if (operacion == "SUMA")
            {
                resultado = cantidad + cantidad1;
                Console.WriteLine("el resultadi de la suma es: " + resultado);
            }

            if (operacion == "RESTA")
            {
                resultado = cantidad - cantidad1;
                Console.WriteLine("el restado de la resta es: " + resultado);
            }

            if (operacion == "MULTIPLICACION")
            {
                resultado = cantidad * cantidad1;
                Console.WriteLine("el resultado de la multiplicacion es " + resultado);
            }

            if (operacion == "DIVISION")
            {
                resultado = cantidad / cantidad1;
                Console.WriteLine("el resultado de la division es " + resultado);
            }
        }
    }
}

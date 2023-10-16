using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace calculadoraPOO_2
{
    public partial class Form1 : Form
    {
        double pnum;
        double snum;
        double resul;
        string operador;
        int num;
        int num2;
        int result;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            operador = "+";
            pnum = double.Parse(textResultado.Text);
            textResultado.Clear();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button11_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "9";
        }

        private void btnN0_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "0";
        
        }

        private void btnpunto_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + ",";
        }

        private void btnN1_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "1";
        }

        private void btnN2_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "2";
        }

        private void btnN3_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "3";
        }

        private void btnN4_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "4";
        }

        private void btnN5_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "5";
        }

        private void btnN6_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "6";
        }

        private void btnN7_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "7";
        }

        private void btnN8_Click(object sender, EventArgs e)
        {
            textResultado.Text = textResultado.Text + "8";
        }

        private void btnrest_Click(object sender, EventArgs e)
        {
            operador = "-";
            pnum = double.Parse(textResultado.Text);
            textResultado.Clear();
        }

        private void btnmul_Click(object sender, EventArgs e)
        {
            operador = "*";
            pnum = double.Parse(textResultado.Text);
            textResultado.Clear();
        }

        private void btndiv_Click(object sender, EventArgs e)
        {
            operador = "/";
            pnum = double.Parse(textResultado.Text);
            textResultado.Clear();
        }

        private void btnNigual_Click(object sender, EventArgs e)
        {
            snum = Convert.ToDouble(textResultado.Text);
            if (operador == "+")
            {
                textResultado.Text = (pnum + snum).ToString();
                pnum = Convert.ToDouble(textResultado.Text);
            }else
                if (operador == "-")
            {
                textResultado.Text = (pnum - snum).ToString();
                pnum = Convert.ToDouble(textResultado.Text);
            }
            else
                if (operador == "*")
            {
                textResultado.Text = (pnum * snum).ToString();
                pnum = Convert.ToDouble(textResultado.Text);

            }
            else
                if (operador == "/")
            {
                textResultado.Text = (pnum / snum).ToString();
                pnum = Convert.ToDouble(textResultado.Text);
            }
        }

        private void btnretroceder_Click(object sender, EventArgs e)
        {
            if (textResultado.Text.Length > 1)
            {
                textResultado.Text = textResultado.Text.Substring(0, textResultado.Text.Length - 1);
            }
                else
                {
                    textResultado.Text = "0";
                }
        }

        private void btnborrar_Click(object sender, EventArgs e)
        {
            pnum = 0;
            snum = 0;
            operador = "\0";
            textResultado.Text = "\0";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            operador = "√";
            pnum = double.Parse(textResultado.Text);
            resul = pnum; 
            textResultado.Text = Math.Sqrt(pnum).ToString();
        }

        private void botraiz2_Click(object sender, EventArgs e)
        {
            operador = "X³";
            pnum = double.Parse(textResultado.Text);
            resul = pnum;
            textResultado.Text = Math.Pow(pnum, 2).ToString();
        }

        private void botraiz3_Click(object sender, EventArgs e)
        {
            operador = "X³";
            pnum = double.Parse(textResultado.Text);
            resul = pnum;
            textResultado.Text = Math.Pow(pnum, 3).ToString();
        }

        private void botporc_Click(object sender, EventArgs e)
        {
            operador = "%";
            snum = double.Parse(textResultado.Text);
            resul = pnum + snum;
            textResultado.Text = Convert.ToString((pnum * snum) / 100);
        }
    }
}

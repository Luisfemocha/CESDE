using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuisChamorroNET {
    public partial class formVista1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){}

        protected void Button1_Click(object sender, EventArgs e)
        {
            int capital = System.Convert.ToInt32(num1.Text);
            l1.Text = System.Convert.ToString("El interes mensual seria de: $"+(capital*0.02));
        }
        protected void Button2_Click(object sender, EventArgs e){
            int sal, v1, v2, v3;
            sal = System.Convert.ToInt32(ej2num.Text);
            v1 = System.Convert.ToInt32(ej2num1.Text);
            v2 = System.Convert.ToInt32(ej2num2.Text);
            v3 = System.Convert.ToInt32(ej2num3.Text);
            ej2lbl4.Text = System.Convert.ToString("Comisiones: $" + ((v1 + v2 + v3) * 0.1) + "\nSalario total:" + (sal + ((v1 + v2 + v3) * 0.1)));
        }
        protected void Button3_Click(object sender, EventArgs e){
            int v = System.Convert.ToInt32(ej3num1.Text);
            ej3lb.Text = System.Convert.ToString("Valor total: $" + (v * 0.85));
        }
        protected void Button4_Click(object sender, EventArgs e){
            double par, exa, tra;
            par = System.Convert.ToDouble(p1.Text);
            par += System.Convert.ToDouble(p2.Text);
            par += System.Convert.ToDouble(p3.Text);
            par *= 0.55 / 3;
            exa = System.Convert.ToDouble(ex.Text) * 0.3;
            tra = System.Convert.ToDouble(tr.Text) * 0.15;
            ej4lb.Text = System.Convert.ToString("Nota final: " + (Math.Round(par + exa + tra, 2)));
        }
        protected void Button5_Click(object sender, EventArgs e){
            int t;
            double m, h;
            m = System.Convert.ToInt32(muj.Text);
            h = System.Convert.ToInt32(hom.Text);
            t = Convert.ToInt32(m + h);
            m *= 100 / t;
            h *= 100 / t;
            ej5lb.Text = System.Convert.ToString("Hay " + m + "% de mujeres y " + h + "% de hombres en el grupo de " + t + " estudiantes.");
        }
        protected void Button6_Click(object sender, EventArgs e){
            DateTime n, a;
            n = System.Convert.ToDateTime(nac.Text);
            a = System.Convert.ToDateTime(act.Text);
            ej6lb.Text = System.Convert.ToString("La persona tiene " + ((a - n).Days / 365) + "anios.");
        }
    }
}
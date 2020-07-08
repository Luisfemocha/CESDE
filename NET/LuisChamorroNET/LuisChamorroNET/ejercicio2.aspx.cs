using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuisChamorroNET{
    public partial class ejercicio2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        protected void Button1_Click(object sender, EventArgs e){
            int sal, v1, v2, v3;
            sal = System.Convert.ToInt32(ej2num.Text);
            v1 = System.Convert.ToInt32(ej2num1.Text);
            v2 = System.Convert.ToInt32(ej2num2.Text);
            v3 = System.Convert.ToInt32(ej2num3.Text);
            ej2lbl4.Text = System.Convert.ToString("Comisiones: $" + ((v1+v2+v3) * 0.1)+"\nSalario total:"+(sal + ((v1 + v2 + v3) * 0.1)));
        }
    }
}
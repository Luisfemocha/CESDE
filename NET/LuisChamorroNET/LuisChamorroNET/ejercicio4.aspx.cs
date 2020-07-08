using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuisChamorroNET{
    public partial class ejercicio4 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        protected void Button1_Click(object sender, EventArgs e){
            double par, exa, tra;
            par = System.Convert.ToDouble(p1.Text);
            par += System.Convert.ToDouble(p2.Text);
            par += System.Convert.ToDouble(p3.Text);
            par *= 0.55/3;
            exa = System.Convert.ToDouble(ex.Text)*0.3;
            tra = System.Convert.ToDouble(tr.Text)*0.15;
            ej4lb.Text = System.Convert.ToString("Nota final: " + (Math.Round(par+exa+tra, 2)));
        }
    }
}
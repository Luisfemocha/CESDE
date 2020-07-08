using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuisChamorroNET{
    public partial class ejercicio3 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e) {}

        protected void Button1_Click(object sender, EventArgs e){
            int v = System.Convert.ToInt32(ej3num1.Text);
            ej3lb.Text = System.Convert.ToString("Valor total: $" + (v*0.85));
        }
    }
}
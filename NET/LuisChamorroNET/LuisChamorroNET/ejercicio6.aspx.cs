using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuisChamorroNET{
    public partial class ejercicio6 : System.Web.UI.Page    {
        protected void Page_Load(object sender, EventArgs e){}
        protected void Button1_Click(object sender, EventArgs e){
            DateTime n, a;
            n = System.Convert.ToDateTime(nac.Text);
            a = System.Convert.ToDateTime(act.Text);
            ej6lb.Text = System.Convert.ToString("La persona tiene "+((a-n).Days/365) + "anios.");
        }
    }
}
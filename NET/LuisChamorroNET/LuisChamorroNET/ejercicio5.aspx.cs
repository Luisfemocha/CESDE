using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuisChamorroNET
{
    public partial class ejercicio5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int t;
            double m, h;
            m = System.Convert.ToInt32(muj.Text);
            h = System.Convert.ToInt32(hom.Text);
            t = Convert.ToInt32(m + h);
            m *= 100 / t;
            h *= 100 / t;
            ej5lb.Text = System.Convert.ToString("Hay "+m+"% de mujeres y "+h+"% de hombres en el grupo de "+t+" estudiantes." );
        }
    }
}
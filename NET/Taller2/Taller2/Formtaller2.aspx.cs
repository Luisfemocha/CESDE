using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller2{
    public partial class Formtaller2 : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}
        protected void boton1_Click(object sender, EventArgs e){
            double pesos = System.Convert.ToDouble(ej1num1.Text);
            ej1lbl.Text = System.Convert.ToString("$" + pesos + " pesos colombianos serían $" + Math.Round((pesos / 3776.5),2) + " USD.");
        }

        protected void boton2_Click(object sender, EventArgs e){
            double numero = System.Convert.ToDouble(ej2num1.Text);
            ej2lbl.Text = System.Convert.ToString("El valor absoluto de "+numero+" es: "+Math.Abs(numero)+".");
        }

        protected void ej3btn_Click(object sender, EventArgs e){
            double pre, vol, tem, masa;
            pre = System.Convert.ToDouble(ej3pres.Text);
            vol = System.Convert.ToDouble(ej3vol.Text);
            tem = System.Convert.ToDouble(ej3temp.Text);
            masa = (pre * vol) / (0.37 * (tem + 460));
            ej3lbl.Text = System.Convert.ToString("La masa es igual a " + Math.Round(masa,2) +".");
        }

        protected void ej4btn_Click(object sender, EventArgs e){
            int edad = System.Convert.ToInt32(ej4num.Text);
            ej4lbl.Text = System.Convert.ToString("El numero de pulsaciones que la persona debe tener es de " + (220-edad)/10 + ".");
        }

        protected void ej5btn_Click(object sender, EventArgs e){
            double sal = System.Convert.ToDouble(ej5num.Text);
            ej5lbl.Text = System.Convert.ToString("El nuevo salario será de: $" + (sal*1.25) + ".");
        }

        protected void ej6btn_Click(object sender, EventArgs e){
            double pres = System.Convert.ToDouble(ej6num.Text);
            ej6lbl.Text = System.Convert.ToString("Ginecología: $" + (pres * 0.4) + ".\nTraumatología: $"+(pres*0.3)+".\nPediatría: $"+(pres*0.3)+".");
        }

        protected void ej7btn_Click(object sender, EventArgs e){
            double val = System.Convert.ToDouble(ej7num.Text);
            ej7lbl.Text = System.Convert.ToString("Precio: $" + (val * 1.3) + ".");
        }

        protected void ej8btn_Click(object sender, EventArgs e){
            double lun, mie, vie;
            lun = System.Convert.ToDouble(ej8num1.Text);
            mie = System.Convert.ToDouble(ej8num2.Text);
            vie = System.Convert.ToDouble(ej8num3.Text);
            ej8lbl.Text = System.Convert.ToString("El tiempo promedio es de: " + Math.Round((lun+mie+vie)/3, 2) + ".");
        }

        protected void ej9btn_Click(object sender, EventArgs e){
            double p1, p2, p3, t;
            p1 = System.Convert.ToDouble(ej9num1.Text);
            p2 = System.Convert.ToDouble(ej9num2.Text);
            p3 = System.Convert.ToDouble(ej9num3.Text);
            t = p1 + p2 + p3;
            ej9lbl.Text = System.Convert.ToString("El total invertido es de: $" + t + ".\nLa persona 1 invirtió el "+ Math.Round((p1*100/t), 2)+ "%.\nLa persona 2 invirtió el " + Math.Round((p2 * 100 / t), 2) + "%.\nLa persona 3 invirtió el " + Math.Round((p3 * 100 / t), 2) + "%.");
        }

        protected void ej10btn_Click(object sender, EventArgs e){
            double me, mt, fe, ft, qe, qt, mat, fis, qui;

            // matemáticas, examen 90%, 3 tareas
            me = System.Convert.ToDouble(ej10matex.Text);
            mt = System.Convert.ToDouble(ej10mattar1.Text);
            mt += System.Convert.ToDouble(ej10mattar2.Text);
            mt += System.Convert.ToDouble(ej10mattar3.Text);
            mt /= 3;
            mat = (me * 0.9) + (mt * 0.1);

            // física, examen 80%, 2 tareas
            fe = System.Convert.ToDouble(ej10fisex.Text);
            ft = System.Convert.ToDouble(ej10fistar1.Text);
            ft += System.Convert.ToDouble(ej10fistar2.Text);
            ft /= 2;
            fis = (fe * 0.8) + (ft * 0.2);

            // química, examen 85%, 3 tareas
            qe = System.Convert.ToDouble(ej10quiex.Text);
            qt = System.Convert.ToDouble(ej10quitar1.Text);
            qt += System.Convert.ToDouble(ej10quitar2.Text);
            qt += System.Convert.ToDouble(ej10quitar3.Text);
            qt /= 3;
            qui = (qe * 0.85) + (qt * 0.15);
            
            if (Math.Round((mat + qui + fis) / 3, 2) >= 3){
                ej10lbl.Text = System.Convert.ToString("Matemáticas: " + Math.Round(mat, 2) + "\nFísica: " + Math.Round(fis, 2) + "\nQuímica: " + Math.Round(qui, 2) + "\n\nSu nota promedio es de " + Math.Round((mat + qui + fis) / 3, 2)+". \nTiene el semestre ganado.");
            }
            else{
                ej10lbl.Text = System.Convert.ToString("Matemáticas: " + Math.Round(mat, 2) + "\nFísica: " + Math.Round(fis, 2) + "\nQuímica: " + Math.Round(qui, 2) + "\n\nSu nota promedio es de " + Math.Round((mat + qui + fis) / 3, 2) + ". \nTiene el semestre perdido.");
            }


        }
    }
}
using CEntidades;
using CReglas;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace capas{
    public partial class formEmpleado : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        //verificar si el empleado ya existe
        private String ver(int id){
            CREmpleado cre = new CREmpleado();
            CEEmpleado cee = new CEEmpleado { Ide = id };
            DataSet dt = cre.leer_empleado(cee);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }

        //CREAR EMPLEADO
        protected void btnCE_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide.Text);
            if (ver(id).Equals("ex")){
                lblCE1.Text = System.Convert.ToString("Verifique el ID.");
                lblveride.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CREmpleado cre = new CREmpleado();
            String nombre = System.Convert.ToString(nome.Text);
            int edad = System.Convert.ToInt32(edade.Text);
            String tel = System.Convert.ToString(tele.Text);
            String car= System.Convert.ToString(cargo.Text);
            CEEmpleado cee = new CEEmpleado { Ide = id, Nome = nombre, Edade = edad, Tele = tel, Cargo= car};
            if (cre.crear_empleado(cee)) lblCE1.Text = System.Convert.ToString("Se ha creado el empleado.");
            else lblCE1.Text = System.Convert.ToString("No se ha creado el empleado.");
        }

        protected void btnveride_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide.Text);
            if (ver(id).Equals("ex")) lblveride.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveride.Text = System.Convert.ToString("ID válido.");
        }

        //BORRAR EMPLEADO
        protected void btnBE_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide2.Text);
            if (ver(id).Equals("ne")){
                lblBE1.Text = System.Convert.ToString("Verifique el ID.");
                lblveride2.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CREmpleado cre = new CREmpleado();
            CEEmpleado cee = new CEEmpleado { Ide = id };
            if (cre.borrar_empleado(cee)) lblBE1.Text = System.Convert.ToString("Se ha borrado el empleado.");
            else lblBE1.Text = System.Convert.ToString("No se ha borrado el empleado.");
        }

        protected void btnveride2_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide2.Text);
            if (ver(id).Equals("ne")) lblveride2.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveride2.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR EMPLEADO
        protected void btnAE_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(ideviejo.Text);
            if (ver(idviejo).Equals("ne")){
                lblAE1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblverideviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(ide3.Text);
            if (ver(id).Equals("ex")){
                lblAE1.Text = System.Convert.ToString("Verifique el nuevo ID.");
                lblveride3.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CREmpleado cre = new CREmpleado();
            String nombre = System.Convert.ToString(nome3.Text);
            int edad = System.Convert.ToInt32(edade3.Text);
            String tel = System.Convert.ToString(tele3.Text);
            String car = System.Convert.ToString(cargo.Text);
            CEEmpleado cee = new CEEmpleado { Ide = id, Nome = nombre, Edade = edad, Tele = tel, Cargo=car};
            if (cre.actualizar_empleado(cee, idviejo)) lblAE1.Text = System.Convert.ToString("Se ha actualizado el empleado.");
            else lblAE1.Text = System.Convert.ToString("No se ha actualizado el empleado.");
        }

        protected void btnverideviejo_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(ideviejo.Text);
            if (ver(idviejo).Equals("ne")) lblverideviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblverideviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveride3_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide3.Text);
            if (ver(id).Equals("ex")) lblveride3.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveride3.Text = System.Convert.ToString("ID válido.");
        }

        //LEER EMPLEADO
        protected void btnLE_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide4.Text);
            if (ver(id).Equals("ne")){
                lblLE1.Text = System.Convert.ToString("Verifique el ID.");
                lblveride4.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CREmpleado cre = new CREmpleado();
            CEEmpleado cee = new CEEmpleado { Ide = id };
            DataSet dt = cre.leer_empleado(cee);
            String res = "ID: " + id + "\nNombre: " + dt.Tables[0].Rows[0]["nome"].ToString() + "\nEdad: " + dt.Tables[0].Rows[0]["edade"].ToString() + "\nTelefono: " + dt.Tables[0].Rows[0]["tele"].ToString()+"\nCargo: "+ dt.Tables[0].Rows[0]["cargo"].ToString();
            lblLE1.Text = System.Convert.ToString(res);
        }
        protected void btnveride4_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide4.Text);
            if (ver(id).Equals("ne")) lblveride4.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveride4.Text = System.Convert.ToString("ID válido.");
        }
    }
}
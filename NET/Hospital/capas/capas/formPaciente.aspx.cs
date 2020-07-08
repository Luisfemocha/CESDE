using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CReglas;
using CEntidades;
using System.Data;

namespace capas{
    public partial class formPaciente : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){
        }

        //verificar si el paciente ya existe
        private String ver(int id){
            CRPaciente crp = new CRPaciente();
            CEPaciente cep = new CEPaciente { Idp = id };
            DataSet dt = crp.leer_paciente(cep);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }
        //CREAR PACIENTE
        protected void btnCP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp.Text);
            if (ver(id).Equals("ex")){
                lblCP1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridp.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CRPaciente crp = new CRPaciente();
            String nombre = System.Convert.ToString(nomp.Text);
            int edad = System.Convert.ToInt32(edadp.Text);
            String tel = System.Convert.ToString(telp.Text);
            CEPaciente cep = new CEPaciente { Idp = id, Nomp = nombre, Edadp = edad, Telp = tel };
            if (crp.crear_paciente(cep)) lblCP1.Text = System.Convert.ToString("Se ha creado el paciente.");
            else lblCP1.Text = System.Convert.ToString("No se ha creado el paciente.");
        }

        protected void btnveridp_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp.Text);
            if (ver(id).Equals("ex")) lblveridp.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridp.Text = System.Convert.ToString("ID válido.");
        }

        //BORRAR PACIENTE
        protected void btnBP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp2.Text);
            if (ver(id).Equals("ne")){
                lblBP1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridp2.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRPaciente crp = new CRPaciente();
            CEPaciente cep = new CEPaciente { Idp = id };
            if (crp.borrar_paciente(cep)) lblBP1.Text = System.Convert.ToString("Se ha borrado el paciente.");
            else lblBP1.Text = System.Convert.ToString("No se ha borrado el paciente.");
        }

        protected void btnveridp2_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp2.Text);
            if (ver(id).Equals("ne")) lblveridp2.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridp2.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR PACIENTE
        protected void btnAP_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idpviejo.Text);
            if (ver(idviejo).Equals("ne")){
                lblAP1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblveridpviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idp3.Text);
            if (ver(id).Equals("ex")){
                lblAP1.Text = System.Convert.ToString("Verifique el nuevo ID.");
                lblveridp3.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CRPaciente crp = new CRPaciente();
            String nombre = System.Convert.ToString(nomp3.Text);
            int edad = System.Convert.ToInt32(edadp3.Text);
            String tel = System.Convert.ToString(telp3.Text);
            CEPaciente cep = new CEPaciente { Idp = id, Nomp = nombre, Edadp = edad, Telp = tel };
            if (crp.actualizar_paciente(cep, idviejo)) lblAP1.Text = System.Convert.ToString("Se ha actualizado el paciente.");
            else lblAP1.Text = System.Convert.ToString("No se ha actualizado el paciente.");
        }

        protected void btnveridpviejo_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idpviejo.Text);
            if (ver(idviejo).Equals("ne")) lblveridpviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridpviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridp3_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp3.Text);
            if (ver(id).Equals("ex"))lblveridp3.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridp3.Text = System.Convert.ToString("ID válido.");
        }

        //LEER PACIENTE
        protected void btnLP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp4.Text);
            if (ver(id).Equals("ne")){
                lblLP1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridp4.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRPaciente crp = new CRPaciente();
            CEPaciente cep = new CEPaciente { Idp = id };
            DataSet dt = crp.leer_paciente(cep);
            String res ="ID: "+id+"\nNombre: "+ dt.Tables[0].Rows[0]["nomp"].ToString()+"\nEdad: "+ dt.Tables[0].Rows[0]["edadp"].ToString()+"\nTelefono: "+ dt.Tables[0].Rows[0]["telp"].ToString();
            lblLP1.Text = System.Convert.ToString(res);
        }
        protected void btnveridp4_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp4.Text);
            if (ver(id).Equals("ne")) lblveridp4.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridp4.Text = System.Convert.ToString("ID válido.");
        }
    }
}
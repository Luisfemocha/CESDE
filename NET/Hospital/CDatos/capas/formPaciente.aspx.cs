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
        bool IDC;
        CRPaciente crp;
        int id;
        protected void Page_Load(object sender, EventArgs e){ //default
            crp = new CRPaciente();
        }
        //TODO funciones
        String verificar(int i){
            if (i==new int()){
                return "No ha especificado un ID.";
            }
            else{
                crp = new CRPaciente();
                CEPaciente cep = new CEPaciente{ Idp = i };
                DataSet dt = crp.leer_paciente(cep);
                if (isEmpty(dt)){
                    IDC= false;
                    return "El paciente no existe.";
                }
                else{ //si el paciente existe
                    IDC= true;
                    return cep.ToString(); //TO DO
                }
            }
        }
        String desverificar(int i){
            String ver = verificar(i);
            if (ver.Equals("El paciente no existe.")){
                IDC = true;
                return "ID válido.";
            }
            else if (!ver.Equals("No ha especificado un ID.")){
                IDC = false;
                return "ID inválido, ya existe el paciente.";
            }
            return ver;
        }
        bool isEmpty(DataSet dataSet){
            foreach (DataTable table in dataSet.Tables)
                if (table.Rows.Count != 0) return false;
            return true;
        }

        //CREAR
        protected void btnCP_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idp.Text);
            String nom = System.Convert.ToString(nomp.Text);
            int edad = System.Convert.ToInt16(edadp.Text);
            String tel = System.Convert.ToString(telp.Text);
            if ((id == new int()) || nom.Equals(null) || edad == new int() || tel.Equals(null)){
                lblCP1.Text = System.Convert.ToString("No ha llenado todos los campos.");
            }
            else{
                btnveridp_Click(sender, e);
                if (!IDC){
                    lblCP1.Text = System.Convert.ToString("Verifique el ID.");
                    return;
                }
                CEPaciente cep = new CEPaciente { Idp = id, Nomp = nom, Edadp = edad, Telp = tel };
                if (crp.crear_paciente(cep)){
                    lblCP1.Text = System.Convert.ToString("Se creó.");
                }
                else{
                    lblCP1.Text = System.Convert.ToString("No se creó.");
                }
            }
        }
        protected void btnveridp_Click(object sender, EventArgs e){ //verifica si el idp ya existe para Crear Paciente
            id= System.Convert.ToInt32(idp.Text);
            lblveridp.Text= System.Convert.ToString(desverificar(id));
        }

        //BORRAR
        protected void btnBP_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idp2.Text);
            if(id==new int()){
                lblBP1.Text= System.Convert.ToString("No ha ingresado un ID.");
            }
            else{
                btnveridp2_Click(sender, e);
                if (!IDC){
                    lblBP1.Text = System.Convert.ToString("Verifique el ID.");
                    return;
                }
                CEPaciente cep = new CEPaciente{ Idp = id };
                if (crp.borrar_paciente(cep)) lblBP1.Text = System.Convert.ToString("Se ha eliminado el paciente.");
                else lblBP1.Text = System.Convert.ToString("No se ha eliminado el paciente.");
            }
        }
        protected void btnveridp2_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idp2.Text);
            lblveridp2.Text = System.Convert.ToString(verificar(id));
        }

        // ACTUALIZAR
        protected void btnAP_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idpviejo.Text);
            int id2 = System.Convert.ToInt32(idp.Text);
            String nom = System.Convert.ToString(nomp.Text);
            int edad = System.Convert.ToInt16(edadp.Text);
            String tel = System.Convert.ToString(telp.Text);
            if ((id == new int()) || id2== new int() ||  nom.Equals(null) || edad == new int() || tel.Equals(null)){
                lblAP1.Text = System.Convert.ToString("No ha llenado todos los campos.");
            }
            else{
                btnveridpviejo_Click(sender, e);
                if (!IDC){
                    lblAP1.Text = System.Convert.ToString("ID viejo inválido.");
                    return;
                }
                btnveridp3_Click(sender, e);
                if (!IDC){
                    lblAP1.Text = System.Convert.ToString("ID nuevo inválido.");
                    return;
                }
                CEPaciente cep = new CEPaciente { Idp = id2, Nomp= nom, Edadp=edad, Telp= tel};
                if (crp.actualizar_paciente(cep, id)) lblAP1.Text = System.Convert.ToString("Se ha actualizado el paciente.");
                else lblAP1.Text = System.Convert.ToString("No se ha actualizado el paciente.");
            }            
        }
        protected void btnveridpviejo_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idpviejo.Text);
            lblveridpviejo.Text = System.Convert.ToString(verificar(id));
        }
        protected void btnveridp3_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idp3.Text);
            lblveridp3.Text = System.Convert.ToString(desverificar(id));
        }

        // LEER
        protected void btnLP_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idp4.Text);
            if (id == new int()){
                lblLP1.Text = System.Convert.ToString("No ha ingresado un ID.");
            }
            else{
                btnveridp4_Click(sender, e);
                if (!IDC){
                    lblLP1.Text = System.Convert.ToString("Verifique el ID.");
                    return;
                }
                CEPaciente cep = new CEPaciente{ Idp = id };
                lblLP1.Text= System.Convert.ToString(crp.leer_paciente(cep));
            }
        }
        protected void btnveridp4_Click(object sender, EventArgs e){
            id = System.Convert.ToInt32(idp4.Text);
            lblveridp4.Text = System.Convert.ToString(verificar(id));
        }        
    }
}
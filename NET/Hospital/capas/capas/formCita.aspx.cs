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
    public partial class formCita : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        //verificar si la cita ya existe
        private String ver(int id){
            CRCita crc = new CRCita();
            CECita cec = new CECita { Idc = id };
            DataSet dt = crc.leer_cita(cec);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }
        //verificar si el empleado existe
        private String verEmp(int id){
            CREmpleado cre = new CREmpleado();
            CEEmpleado cee = new CEEmpleado { Ide = id };
            DataSet dt = cre.leer_empleado(cee);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }
        //verificar si el paciente existe
        private String verPac(int id){
            CRPaciente crp = new CRPaciente();
            CEPaciente cep = new CEPaciente { Idp = id };
            DataSet dt = crp.leer_paciente(cep);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }

        //verificar si la enfermedad existe
        private String verDiag(int id){
            CREnfermedad crenf = new CREnfermedad();
            CEEnfermedad ceenf = new CEEnfermedad { Idenf = id };
            DataSet dt = crenf.leer_enfermedad(ceenf);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }

        //CREAR CITA
        protected void btnCC_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc.Text);
            if (ver(id).Equals("ex"))
            {
                lblCC1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridc.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            int idp = System.Convert.ToInt32(idp1.Text);
            if (verPac(idp).Equals("ne")){
                lblCC1.Text = System.Convert.ToString("Verifique el ID del paciente.");
                lblveridc.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int ide = System.Convert.ToInt32(ide1.Text);
            if (verEmp(ide).Equals("ne")){
                lblCC1.Text = System.Convert.ToString("Verifique el ID del empleado.");
                lblveridc.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRCita crc = new CRCita();
            int dia= System.Convert.ToInt32(tdia.Text);
            int mes = System.Convert.ToInt32(tmes.Text);
            int anio = System.Convert.ToInt32(tanio.Text);
            int hora = System.Convert.ToInt32(thora.Text);
            int minuto = System.Convert.ToInt32(tminut.Text);
            DateTime fecha = new DateTime(anio, mes, dia, hora, minuto, 0);
            int diagno = System.Convert.ToInt32(diag.Text);
            if (verDiag(diagno).Equals("ne")){
                lblCC1.Text = System.Convert.ToString("Verifique el diagnostico.");
                lblverdiag.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CECita cec = new CECita { Idc = id, Ide1=ide, Idp1=idp, Fechac=fecha, Diagnostico=diagno};
            if (crc.crear_cita(cec)) lblCC1.Text = System.Convert.ToString("Se ha creado la cita.");
            else lblCC1.Text = System.Convert.ToString("No se ha creado la cita.");
        }

        protected void btnveridc_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc.Text);
            if (ver(id).Equals("ex")) lblveridc.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridc.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveridp1_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp1.Text);
            if (verPac(id).Equals("ne")) lblveridp1.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridp1.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveride1_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide1.Text);
            if (verEmp(id).Equals("ne")) lblveride1.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveride1.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnverdiag_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(diag.Text);
            if (verDiag(id).Equals("ne")) lblverdiag.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblverdiag.Text = System.Convert.ToString("ID válido.");
        }

        //BORRAR CITA
        protected void btnBC_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc2.Text);
            if (ver(id).Equals("ne")){
                lblBC1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridc2.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRCita crc = new CRCita();
            CECita cec = new CECita { Idc = id };
            if (crc.borrar_cita(cec)) lblBC1.Text = System.Convert.ToString("Se ha borrado la cita.");
            else lblBC1.Text = System.Convert.ToString("No se ha borrado la cita.");
        }

        protected void btnveridc2_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc2.Text);
            if (ver(id).Equals("ne")) lblveridc2.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridc2.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR CITA
        protected void btnAC_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idcviejo.Text);
            if (ver(idviejo).Equals("ne")){
                lblAC1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblveridcviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idc3.Text);
            if (ver(id).Equals("ex")){
                lblAC1.Text = System.Convert.ToString("Verifique el nuevo ID.");
                lblveridc3.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            int idp = System.Convert.ToInt32(idp13.Text);
            if (verPac(idp).Equals("ne")){
                lblAC1.Text = System.Convert.ToString("Verifique el ID del paciente.");
                lblveridp13.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int ide = System.Convert.ToInt32(ide13.Text);
            if (verEmp(ide).Equals("ne")){
                lblAC1.Text = System.Convert.ToString("Verifique el ID del empleado.");
                lblveride13.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CRCita crc = new CRCita();
            DateTime fecha = System.Convert.ToDateTime(fechac3.Text);
            int diagno = System.Convert.ToInt32(diag3.Text);
            CECita cec = new CECita { Idc= id, Ide1= ide, Idp1=idp, Fechac= fecha, Diagnostico= diagno};
            if (crc.actualizar_cita(cec, idviejo)) lblAC1.Text = System.Convert.ToString("Se ha actualizado la cita.");
            else lblAC1.Text = System.Convert.ToString("No se ha actualizado la cita.");
        }

        protected void btnveridcviejo_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idcviejo.Text);
            if (ver(idviejo).Equals("ne")) lblveridcviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridcviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridc3_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc3.Text);
            if (ver(id).Equals("ex")) lblveridc3.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridc3.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveridp13_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp13.Text);
            if (verPac(id).Equals("ne")) lblveridp13.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridp13.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveride13_Click(object sender, EventArgs e){
            int id= System.Convert.ToInt32(ide13.Text);
            if (verEmp(id).Equals("ne")) lblveride13.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveride13.Text = System.Convert.ToString("ID válido.");
        }

        //LEER CITA
        protected void btnLC_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc4.Text);
            if (ver(id).Equals("ne")){
                lblLC1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridc4.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRCita crc = new CRCita();
            CECita cec = new CECita { Idc = id };
            DataSet dt = crc.leer_cita(cec);
            String res = "ID: " + id + "\nID Paciente: "+ dt.Tables[0].Rows[0]["idp1"].ToString()+"\nID Empleado: "+ dt.Tables[0].Rows[0]["ide1"].ToString()+"\nFecha: "+ dt.Tables[0].Rows[0]["fechac"].ToString()+"\nDiagnóstico: "+ dt.Tables[0].Rows[0]["diagnostico"].ToString();
            lblLC1.Text = System.Convert.ToString(res);
        }
        protected void btnveridc4_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idc4.Text);
            if (ver(id).Equals("ne")) lblveridc4.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridc4.Text = System.Convert.ToString("ID válido.");
        }

        
    }
}
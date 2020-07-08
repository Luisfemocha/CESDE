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
    public partial class formVisita : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        //verificar si la visita ya existe
        private String ver(int id){
            CRVisita crvis = new CRVisita();
            CEVisita cevis = new CEVisita{ Idvis = id };
            DataSet dt = crvis.leer_visita(cevis);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }

        //verificar si el visitante existe
        private String verVis(int id){
            CRVisitante crv = new CRVisitante();
            CEVisitante cev = new CEVisitante { Idv = id };
            DataSet dt = crv.leer_visitante(cev);
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

        //CREAR VISITA
        protected void btnCVis_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis.Text);
            if (ver(id).Equals("ex")){
                lblCVis1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridvis.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            int idp = System.Convert.ToInt32(idp2.Text);
            if (verPac(idp).Equals("ne")){
                lblCVis1.Text = System.Convert.ToString("Verifique el ID del paciente.");
                lblveridp2.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int idv = System.Convert.ToInt32(idv1.Text);
            if (verVis(idv).Equals("ne")){
                lblCVis1.Text = System.Convert.ToString("Verifique el ID del visitante.");
                lblveridv1.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRVisita crvis = new CRVisita();
            int dia = System.Convert.ToInt32(tdia.Text);
            int mes = System.Convert.ToInt32(tmes.Text);
            int anio = System.Convert.ToInt32(tanio.Text);
            int hora = System.Convert.ToInt32(thora.Text);
            int minuto = System.Convert.ToInt32(tminut.Text);
            DateTime fecha = new DateTime(anio, mes, dia, hora, minuto, 0);
            CEVisita cevis = new CEVisita { Idvis = id, Idv1 = idv, Idp2 = idp, Fechav = fecha};
            if (crvis.crear_visita(cevis)) lblCVis1.Text = System.Convert.ToString("Se ha creado la visita.");
            else lblCVis1.Text = System.Convert.ToString("No se ha creado la visita.");
        }

        protected void btnveridvis_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis.Text);
            if (ver(id).Equals("ex")) lblveridvis.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridvis.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveridp2_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp2.Text);
            if (verPac(id).Equals("ne")) lblveridp2.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridp2.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveridv1_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv1.Text);
            if (verVis(id).Equals("ne")) lblveridv1.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridv1.Text = System.Convert.ToString("ID válido.");
        }

        //BORRAR VISITA
        protected void btnBVis_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis2.Text);
            if (ver(id).Equals("ne")){
                lblBVis1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridvis2.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRVisita crvis = new CRVisita();
            CEVisita cevis = new CEVisita { Idvis = id };
            if (crvis.borrar_visita(cevis)) lblBVis1.Text = System.Convert.ToString("Se ha borrado la visita.");
            else lblBVis1.Text = System.Convert.ToString("No se ha borrado la visita.");
        }

        protected void btnveridvis2_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis2.Text);
            if (ver(id).Equals("ne")) lblveridvis2.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridvis2.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR VISITA
        protected void btnAVis_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idvisviejo.Text);
            if (ver(idviejo).Equals("ne")){
                lblAVis1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblveridvisviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idvis3.Text);
            if (ver(id).Equals("ex")){
                lblAVis1.Text = System.Convert.ToString("Verifique el nuevo ID.");
                lblveridvis3.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            int idp = System.Convert.ToInt32(idp23.Text);
            if (verPac(idp).Equals("ne")){
                lblAVis1.Text = System.Convert.ToString("Verifique el ID del paciente.");
                lblveridp23.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int idv = System.Convert.ToInt32(idv13.Text);
            if (verVis(idv).Equals("ne")){
                lblAVis1.Text = System.Convert.ToString("Verifique el ID del visitante.");
                lblveridv13.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CRVisita crvis = new CRVisita();
            int dia = System.Convert.ToInt32(tdia3.Text);
            int mes = System.Convert.ToInt32(tmes3.Text);
            int anio = System.Convert.ToInt32(tanio3.Text);
            int hora = System.Convert.ToInt32(thora3.Text);
            int minuto = System.Convert.ToInt32(tminut3.Text);
            DateTime fecha = new DateTime(anio, mes, dia, hora, minuto, 0);
            CEVisita cevis = new CEVisita { Idvis = id, Idv1 = idv, Idp2 = idp, Fechav = fecha};
            if (crvis.actualizar_visita(cevis, idviejo)) lblAVis1.Text = System.Convert.ToString("Se ha actualizado la visita.");
            else lblAVis1.Text = System.Convert.ToString("No se ha actualizado la visita.");
        }

        protected void btnveridvisviejo_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idvisviejo.Text);
            if (ver(idviejo).Equals("ne")) lblveridvisviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridvisviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridvis3_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis3.Text);
            if (ver(id).Equals("ex")) lblveridvis3.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridvis3.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveridp23_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp23.Text);
            if (verPac(id).Equals("ne")) lblveridp23.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridp23.Text = System.Convert.ToString("ID válido.");
        }
        protected void btnveride13_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv13.Text);
            if (verVis(id).Equals("ne")) lblveridv13.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridv13.Text = System.Convert.ToString("ID válido.");
        }

        //LEER VISITA
        protected void btnLVis_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis4.Text);
            if (ver(id).Equals("ne")){
                lblLVis1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridvis4.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRVisita crvis = new CRVisita();
            CEVisita cevis = new CEVisita { Idvis = id };
            DataSet dt = crvis.leer_visita(cevis);
            String res = "ID: " + id + "\nID Paciente: " + dt.Tables[0].Rows[0]["idp2"].ToString() + "\nID Visitante: " + dt.Tables[0].Rows[0]["idv1"].ToString() + "\nFecha: " + dt.Tables[0].Rows[0]["fechav"].ToString();
            lblLVis1.Text = System.Convert.ToString(res);
        }
        protected void btnveridvis4_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idvis4.Text);
            if (ver(id).Equals("ne")) lblveridvis4.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridvis4.Text = System.Convert.ToString("ID válido.");
        }
    }
}

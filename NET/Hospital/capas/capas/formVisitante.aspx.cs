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
    public partial class formVisitante : System.Web.UI.Page{
        //verificar si el visitante ya existe
        private String ver(int id){
            CRVisitante crv = new CRVisitante();
            CEVisitante cev = new CEVisitante{ Idv = id };
            DataSet dt = crv.leer_visitante(cev);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }
        //CREAR VISITANTE
        protected void btnCV_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv.Text);
            if (ver(id).Equals("ex")){
                lblCV1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridv.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CRVisitante crv = new CRVisitante();
            String nombre = System.Convert.ToString(nomv.Text);
            int edad = System.Convert.ToInt32(edadv.Text);
            String tele = System.Convert.ToString(tel.Text);
            CEVisitante cev = new CEVisitante { Idv = id, Nomv = nombre, Edadv = edad, Telefono = tele };
            if (crv.crear_visitante(cev)) lblCV1.Text = System.Convert.ToString("Se ha creado el visitante.");
            else lblCV1.Text = System.Convert.ToString("No se ha creado el visitante.");
        }

        protected void btnveridv_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv.Text);
            if (ver(id).Equals("ex")) lblveridv.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridv.Text = System.Convert.ToString("ID válido.");
        }

        //BORRAR VISITANTE
        protected void btnBV_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv2.Text);
            if (ver(id).Equals("ne")){
                lblBV1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridv2.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRVisitante crv = new CRVisitante();
            CEVisitante cev = new CEVisitante { Idv = id };
            if (crv.borrar_visitante(cev)) lblBV1.Text = System.Convert.ToString("Se ha borrado el visitante.");
            else lblBV1.Text = System.Convert.ToString("No se ha borrado el visitante.");
        }

        protected void btnveridv2_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv2.Text);
            if (ver(id).Equals("ne")) lblveridv2.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridv2.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR VISITANTE
        protected void btnAV_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idvviejo.Text);
            if (ver(idviejo).Equals("ne")){
                lblAV1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblveridvviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idv3.Text);
            if (ver(id).Equals("ex")){
                lblAV1.Text = System.Convert.ToString("Verifique el nuevo ID.");
                lblveridv3.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CRVisitante crv = new CRVisitante();
            String nombre = System.Convert.ToString(nomv3.Text);
            int edad = System.Convert.ToInt32(edadv3.Text);
            String tel = System.Convert.ToString(tel3.Text);
            CEVisitante cev = new CEVisitante { Idv = id, Nomv = nombre, Edadv = edad, Telefono = tel };
            if (crv.actualizar_visitante(cev, idviejo)) lblAV1.Text = System.Convert.ToString("Se ha actualizado el visitante.");
            else lblAV1.Text = System.Convert.ToString("No se ha actualizado el visitante.");
        }

        protected void btnveridvviejo_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idvviejo.Text);
            if (ver(idviejo).Equals("ne")) lblveridvviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridvviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridv3_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv3.Text);
            if (ver(id).Equals("ex")) lblveridv3.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridv3.Text = System.Convert.ToString("ID válido.");
        }

        //LEER VISITANTE
        protected void btnLV_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv4.Text);
            if (ver(id).Equals("ne")){
                lblLV1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridv4.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRVisitante crv = new CRVisitante();
            CEVisitante cev = new CEVisitante { Idv = id };
            DataSet dt = crv.leer_visitante(cev);
            String res = "ID: " + id + "\nNombre: " + dt.Tables[0].Rows[0]["nomv"].ToString() + "\nEdad: " + dt.Tables[0].Rows[0]["edadv"].ToString() + "\nTelefono: " + dt.Tables[0].Rows[0]["telefono"].ToString();
            lblLV1.Text = System.Convert.ToString(res);
        }
        protected void btnveridv4_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idv4.Text);
            if (ver(id).Equals("ne")) lblveridv4.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridv4.Text = System.Convert.ToString("ID válido.");
        }
    }
}

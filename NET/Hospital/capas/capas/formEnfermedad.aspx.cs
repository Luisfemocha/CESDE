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
    public partial class formEnfermedad : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}
        //verificar si la enfermedad existe
        private String ver(int id){
            CREnfermedad cre = new CREnfermedad();
            CEEnfermedad cee = new CEEnfermedad { Idenf = id };
            DataSet dt = cre.leer_enfermedad(cee);
            if (dt.Tables[0].Rows.Count == 0) return "ne";
            else return "ex";
        }
        //CREAR ENFERMEDAD
        protected void btnCEnf_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idenf.Text);
            if (ver(id).Equals("ex")){
                lblCEenf1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridenf.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            CREnfermedad cre = new CREnfermedad();
            String nombre = System.Convert.ToString(nomenf.Text);
            String sint = System.Convert.ToString(sintenf.Text);
            String cuid = System.Convert.ToString(cuidenf.Text);
            String esp = System.Convert.ToString(especs.Text);
            CEEnfermedad cee = new CEEnfermedad { Idenf=id, Cuidenf=cuid, Especs=esp, Nomenf=nombre, Sintenf=sint};
            if (cre.crear_enfermedad(cee)) lblCEenf1.Text = System.Convert.ToString("Se ha creado la enfermedad.");
            else lblCEenf1.Text = System.Convert.ToString("No se ha creado la enfermedad.");

        }
        protected void btnveridenf_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idenf.Text);
            if (ver(id).Equals("ex")) lblveridenf.Text = System.Convert.ToString("ID inválido, ya existe.");
            else lblveridenf.Text = System.Convert.ToString("ID válido.");
        }

        
    }
}
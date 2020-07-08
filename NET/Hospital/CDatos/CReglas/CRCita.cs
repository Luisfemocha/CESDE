using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;

namespace CReglas{
    public class CRCita{
        CDCita odc = new CDCita();

        public bool crear_cita(CECita oec){
            return odc.crear_cita(oec);
        }
        public bool borrar_cita(CECita oec){
            return odc.borrar_cita(oec);
        }
        public bool actualizar_cita(CECita oec, int id){
            return odc.actualizar_cita(oec, id);
        }
        public DataSet leer_cita(CECita oec){
            return odc.leer_cita(oec);
        }
    }
}
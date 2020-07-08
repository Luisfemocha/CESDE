using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;

namespace CReglas{
    public class CRHistorial{
        CDHistorial odh = new CDHistorial();

        public bool crear_historial(CEHistorial oeh){
            return odh.crear_historial(oeh);
        }
        public bool borrar_historial(CEHistorial oeh){
            return odh.borrar_historial(oeh);
        }
        public bool actualizar_historial(CEHistorial oeh, int id){
            return odh.actualizar_historial(oeh, id);
        }
        public DataSet leer_historial(CEHistorial oeh){
            return odh.leer_historial(oeh);
        }
        public DataSet buscar_historial(CEHistorial oeh){
            return odh.buscar_historial(oeh);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;

namespace CReglas{
    public class CRVisitante{
        CDVisitante odvis = new CDVisitante();

        public bool crear_visitante(CEVisitante oevis){
            return odvis.crear_visitante(oevis);
        }
        public bool borrar_visitante(CEVisitante oevis){
            return odvis.borrar_visitante(oevis);
        }
        public bool actualizar_visitante(CEVisitante oevis, int id){
            return odvis.actualizar_visitante(oevis, id);
        }
        public DataSet leer_visitante(CEVisitante oevis){
            return odvis.leer_visitante(oevis);
        }
    }
}
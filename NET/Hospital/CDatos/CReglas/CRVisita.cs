using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;

namespace CReglas{
    public class CRVisita{
        CDVisita odv = new CDVisita();

        public bool crear_visita(CEVisita oev){
            return odv.crear_visita(oev);
        }
        public bool borrar_visita(CEVisita oev){
            return odv.borrar_visita(oev);
        }
        public bool actualizar_visita(CEVisita oev, int id){
            return odv.actualizar_visita(oev, id);
        }
        public DataSet leer_visita(CEVisita oev){
            return odv.leer_visita(oev);
        }
    }
}
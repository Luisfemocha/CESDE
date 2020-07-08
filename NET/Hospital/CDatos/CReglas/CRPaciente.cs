using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;

namespace CReglas{
    public class CRPaciente{
        CDPaciente odp = new CDPaciente();

        public bool crear_paciente (CEPaciente oep){
            return odp.crear_paciente(oep);
        }
        public bool borrar_paciente (CEPaciente oep){
            return odp.borrar_paciente(oep);
        }
        public bool actualizar_paciente (CEPaciente oep, int id){
            return odp.actualizar_paciente(oep, id);
        }
        public DataSet leer_paciente (CEPaciente oep){
            return odp.leer_paciente(oep);
        }
    }
}
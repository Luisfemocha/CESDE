using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDatos;
using CEntidades;

namespace CReglas
{
    public class CREmpleado
    {
        CDEmpleado ode = new CDEmpleado();

        public bool crear_empleado(CEEmpleado oee)
        {
            return ode.crear_empleado(oee);
        }
        public bool borrar_empleado(CEEmpleado oee)
        {
            return ode.borrar_empleado(oee);
        }
        public bool actualizar_empleado(CEEmpleado oee, int id)
        {
            return ode.actualizar_empleado(oee, id);
        }
        public DataSet leer_empleado(CEEmpleado oee)
        {
            return ode.leer_empleado(oee);
        }
    }
}
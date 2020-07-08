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
    public class CREnfermedad
    {
        CDEnfermedad odenf = new CDEnfermedad();

        public bool crear_enfermedad(CEEnfermedad oeenf)
        {
            return odenf.crear_enfermedad(oeenf);
        }
        public bool borrar_enfermedad(CEEnfermedad oeenf)
        {
            return odenf.borrar_enfermedad(oeenf);
        }
        public bool actualizar_enfermedad(CEEnfermedad oeenf, int id)
        {
            return odenf.actualizar_enfermedad(oeenf, id);
        }
        public DataSet leer_enfermedad(CEEnfermedad oeenf)
        {
            return odenf.leer_enfermedad(oeenf);
        }
    }
}
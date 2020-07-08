using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;

namespace CDatos
{
    public class CDEmpleado
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool crear_empleado(CEEmpleado oempleado)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "crear_empleado";
                ocmd.Parameters.Add("@ide_c", oempleado.Ide);
                ocmd.Parameters.Add("@nome_c", oempleado.Nome);
                ocmd.Parameters.Add("@edade_c", oempleado.Edade);
                ocmd.Parameters.Add("@tele_c", oempleado.Tele);
                ocmd.Parameters.Add("@cargo_c", oempleado.Cargo);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool borrar_empleado(CEEmpleado oempleado)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "borrar_empleado";
                ocmd.Parameters.Add("@ide_c", oempleado.Ide);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool actualizar_empleado(CEEmpleado oempleado, int id)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "actualizar_empleado";
                ocmd.Parameters.Add("@ide_c1", id); //viejo
                ocmd.Parameters.Add("@ide_c2", oempleado.Ide); //nuevo
                ocmd.Parameters.Add("@nome_c", oempleado.Nome);
                ocmd.Parameters.Add("@edade_c", oempleado.Edade);
                ocmd.Parameters.Add("@tele_c", oempleado.Tele);
                ocmd.Parameters.Add("@cargo_c", oempleado.Cargo);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public DataSet leer_empleado(CEEmpleado oempleado)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "leer_empleado";
                ocmd.Parameters.Add("@ide_c", oempleado.Ide);

                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}




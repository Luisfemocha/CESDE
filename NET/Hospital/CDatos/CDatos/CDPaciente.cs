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
    public class CDPaciente
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool crear_paciente(CEPaciente opaciente)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "crear_paciente";
                ocmd.Parameters.Add("@idp_c", opaciente.Idp);
                ocmd.Parameters.Add("@nomp_c", opaciente.Nomp);
                ocmd.Parameters.Add("@edadp_c", opaciente.Edadp);
                ocmd.Parameters.Add("@telp_c", opaciente.Telp);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool borrar_paciente(CEPaciente opaciente)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "borrar_paciente";
                ocmd.Parameters.Add("@idp_c", opaciente.Idp);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool actualizar_paciente(CEPaciente opaciente, int id)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "actualizar_paciente";
                ocmd.Parameters.Add("@idp_c1", id); //viejo
                ocmd.Parameters.Add("@idp_c2", opaciente.Idp); //nuevo
                ocmd.Parameters.Add("@nomp_c", opaciente.Nomp);
                ocmd.Parameters.Add("@edadp_c", opaciente.Edadp);
                ocmd.Parameters.Add("@telp_c", opaciente.Telp);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public DataSet leer_paciente(CEPaciente opaciente)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "leer_paciente";
                ocmd.Parameters.Add("@idp_c", opaciente.Idp);

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




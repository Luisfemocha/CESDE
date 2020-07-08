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
    public class CDEnfermedad
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool crear_enfermedad(CEEnfermedad oenfermedad)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "crear_enfermedad";
                ocmd.Parameters.Add("@idenf_c", oenfermedad.Idenf);
                ocmd.Parameters.Add("@nomenf_c", oenfermedad.Nomenf);
                ocmd.Parameters.Add("@sintenf_c", oenfermedad.Sintenf);
                ocmd.Parameters.Add("@cuidenf_c", oenfermedad.Cuidenf);
                ocmd.Parameters.Add("@especs_c", oenfermedad.Especs);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool borrar_enfermedad(CEEnfermedad oenfermedad)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "borrar_enfermedad";
                ocmd.Parameters.Add("@idenf_c", oenfermedad.Idenf);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool actualizar_enfermedad(CEEnfermedad oenfermedad, int id)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "actualizar_enfermedad";
                ocmd.Parameters.Add("@idenf_c1", id); //viejo
                ocmd.Parameters.Add("@idenf_c2", oenfermedad.Idenf); //nuevo
                ocmd.Parameters.Add("@nomenf_c", oenfermedad.Nomenf);
                ocmd.Parameters.Add("@sintenf_c", oenfermedad.Sintenf);
                ocmd.Parameters.Add("@cuidenf_c", oenfermedad.Cuidenf);
                ocmd.Parameters.Add("@especs_c", oenfermedad.Especs);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public DataSet leer_enfermedad(CEEnfermedad oenfermedad)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "leer_enfermedad";
                ocmd.Parameters.Add("@idenf_c", oenfermedad.Idenf);

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




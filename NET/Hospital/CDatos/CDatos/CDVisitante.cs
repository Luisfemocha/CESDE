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
    public class CDVisitante
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool crear_visitante(CEVisitante ovisitante)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "crear_visitante";
                ocmd.Parameters.Add("@idv_c", ovisitante.Idv);
                ocmd.Parameters.Add("@nomv_c", ovisitante.Nomv);
                ocmd.Parameters.Add("@edadv_c", ovisitante.Edadv);
                ocmd.Parameters.Add("@telefono_c", ovisitante.Telefono);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool borrar_visitante(CEVisitante ovisitante)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "borrar_visitante";
                ocmd.Parameters.Add("@idv_c", ovisitante.Idv);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool actualizar_visitante(CEVisitante ovisitante, int id)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "actualizar_visitante";
                ocmd.Parameters.Add("@idv_c1", id); //viejo
                ocmd.Parameters.Add("@idv_c2", ovisitante.Idv); //nuevo
                ocmd.Parameters.Add("@nomv_c", ovisitante.Nomv);
                ocmd.Parameters.Add("@edadv_c", ovisitante.Edadv);
                ocmd.Parameters.Add("@telefono_c", ovisitante.Telefono);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public DataSet leer_visitante(CEVisitante ovisitante)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "leer_visitante";
                ocmd.Parameters.Add("@idv_c", ovisitante.Idv);

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




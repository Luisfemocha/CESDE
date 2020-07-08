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
    public class CDVisita
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool crear_visita(CEVisita ovisita)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "crear_visita";
                ocmd.Parameters.Add("@idvis_c", ovisita.Idvis);
                ocmd.Parameters.Add("@idv1_c", ovisita.Idv1);
                ocmd.Parameters.Add("@idp2_c", ovisita.Idp2);
                ocmd.Parameters.Add("@fechav_c", ovisita.Fechav);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool borrar_visita(CEVisita ovisita)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "borrar_visita";
                ocmd.Parameters.Add("@idvis_c", ovisita.Idvis);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool actualizar_visita(CEVisita ovisita, int id)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "actualizar_visita";
                ocmd.Parameters.Add("@idvis_c1", id); //viejo
                ocmd.Parameters.Add("@idvis_c2", ovisita.Idvis); //nuevo
                ocmd.Parameters.Add("@idv1_c", ovisita.Idv1);
                ocmd.Parameters.Add("@idp2_c", ovisita.Idp2);
                ocmd.Parameters.Add("@fechav_c", ovisita.Fechav);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public DataSet leer_visita(CEVisita ovisita)
        {// de CECitas recibe la información para guardar citas.
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("BDHospital");// se emplea para conectar

                ocmd.CommandText = "leer_visita";
                ocmd.Parameters.Add("@idvis_c", ovisita.Idvis);

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




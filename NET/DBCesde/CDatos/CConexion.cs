using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace CDatos{
    public class CConexion{

            try{ // desactiva la recoleccion automatica de errores
                SqlConnection oconectar = new SqlConnection(ConfigurationSettings.AppSettings[Cnx].ToString());
                oconectar.Open(); //abrir la base de datos
                return oconectar; //se lo retorna al q lo necesite
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}

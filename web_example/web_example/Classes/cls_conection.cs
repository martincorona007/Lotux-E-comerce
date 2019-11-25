using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace web_example.Classes
{
    public class cls_conection
    {
        ///poner los datos ke vamoa consultar
        protected SqlDataReader reader;
        protected SqlDataAdapter AdaptadorDatos;
        protected DataSet data;
        protected SqlConnection oconeccion = new SqlConnection();

        public cls_conection()
        {

        }

        public bool conectar(string tabla)
        {
            string strConeccion = ConfigurationManager.ConnectionStrings["web_example.Properties.Settings.db_exampleConnectionString"].ConnectionString;
            oconeccion.ConnectionString = strConeccion;
            oconeccion.Open();
            AdaptadorDatos = new SqlDataAdapter("select * from " + tabla, oconeccion);
            SqlCommandBuilder ejecutacomandos = new SqlCommandBuilder(AdaptadorDatos);
            Data = new DataSet();

            AdaptadorDatos.Fill(Data, tabla);
            oconeccion.Close();
            return true;

        }
        public DataSet Data
        {
            set { data = value; }
            get { return data; }
        }
        public SqlDataReader DataReader
        {
            set { reader = value; }
            get { return reader; }
        }
    }
    
}
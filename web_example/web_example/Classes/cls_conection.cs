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
        
        public SqlConnection connection
        {
            set { oconeccion = value; }
            get { return oconeccion; }
        }
        public bool conectar(string tabla)
        {
            string strConeccion = ConfigurationManager.ConnectionStrings["db_exampleConnectionString1"].ConnectionString;
            oconeccion.ConnectionString = strConeccion;
            oconeccion.Open();
            AdaptadorDatos = new SqlDataAdapter("select * from " + tabla, oconeccion);
            SqlCommandBuilder ejecutacomandos = new SqlCommandBuilder(AdaptadorDatos);
            Data = new DataSet();

            AdaptadorDatos.Fill(Data, tabla);
            oconeccion.Close();
            return true;

        }
        public bool connect_delete(string table,string id)
        {
            string strConeccion = ConfigurationManager.ConnectionStrings["db_exampleConnectionString1"].ConnectionString;
            oconeccion.ConnectionString = strConeccion;
            oconeccion.Open();
            AdaptadorDatos = new SqlDataAdapter("DELETE FROM " + table+" WHERE ID_prod "+id, oconeccion);
            SqlCommandBuilder ejecutacomandos = new SqlCommandBuilder(AdaptadorDatos);
            Data = new DataSet();
            //AdaptadorDatos.DeleteCommand()
            AdaptadorDatos.Fill(Data, table);
            oconeccion.Close();
            return true;

        }
        
        public string getConnection()
        {
            return  ConfigurationManager.ConnectionStrings["db_exampleConnectionString1"].ToString();

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
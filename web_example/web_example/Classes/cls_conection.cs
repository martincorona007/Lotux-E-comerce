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
        public cls_operations_admin Select(string fName)
        {
            var con = ConfigurationManager.ConnectionStrings["db_exampleConnectionString1"].ToString();

            cls_operations_admin matchingPerson = new cls_operations_admin();
            using (SqlConnection myConnection = new SqlConnection(con))
            {
                string oString = "Select name,brand,price,description,photo,current_stock from Products where ID_prod=@fName";
                SqlCommand oCmd = new SqlCommand(oString, myConnection);
                oCmd.Parameters.AddWithValue("@fname", fName);
                myConnection.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        //I got problem getting the PRIMARY KEY and the FOREIGN KEY 
                        //matchingPerson.Fk_id_cat = Int32.Parse(oReader["ID_prod"].ToString());

                        matchingPerson.Name = oReader["name"].ToString();
                        matchingPerson.Brand = oReader["brand"].ToString();
                        matchingPerson.Price = float.Parse(oReader["price"].ToString());
                        matchingPerson.Description = oReader["description"].ToString();
                        matchingPerson.Photo = oReader["photo"].ToString();
                        matchingPerson.Current_stock = Int32.Parse(oReader["current_stock"].ToString());
                    }

                    myConnection.Close();
                }
            }
            return matchingPerson;
        }
        public string getConnection()
        {
            return  ConfigurationManager.ConnectionStrings["db_exampleConnectionString1"].ToString();

        }
        public bool find_ID(string name)
        {
            var con = ConfigurationManager.ConnectionStrings["db_exampleConnectionString1"].ToString();

            cls_operations_admin matchingPerson = new cls_operations_admin();
            using (SqlConnection myConnection = new SqlConnection(con))
            {
                string oString = "Select name,brand,price,description,photo,current_stock from Products where ID_prod=@fName";
                SqlCommand oCmd = new SqlCommand(oString, myConnection);
                oCmd.Parameters.AddWithValue("@fname", name);
                myConnection.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        //I got problem getting the PRIMARY KEY and the FOREIGN KEY 
                        //matchingPerson.Fk_id_cat = Int32.Parse(oReader["ID_prod"].ToString());

                        matchingPerson.Name = oReader["name"].ToString();
                        matchingPerson.Brand = oReader["brand"].ToString();
                        matchingPerson.Price = float.Parse(oReader["price"].ToString());
                        matchingPerson.Description = oReader["description"].ToString();
                        matchingPerson.Photo = oReader["photo"].ToString();
                        matchingPerson.Current_stock = Int32.Parse(oReader["current_stock"].ToString());
                        return true;
                    }

                    myConnection.Close();
                }
            }
            return false;
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
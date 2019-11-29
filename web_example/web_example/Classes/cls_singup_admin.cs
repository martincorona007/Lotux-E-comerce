using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace web_example.Classes
{
    public class cls_singup_admin:cls_conection
    {
        string table = "Admin";
        protected string email, kave;
        protected int id_data;
        public cls_singup_admin(string e, string k)
        {
            this.email = e;
            this.kave = k;
            
        }
        public cls_singup_admin()
        {

        }
        public String Email
        {
            set { email = value; }
            get { return email; }
        }
        public String Kave
        {
            set { kave = value; }
            get { return kave; }
        }
        
        public int ID_data
        {
            set { id_data = value; }
            get { return id_data; }
        }

        public void add()
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table);
            //Metodo de base de datos.
            DataRow fila;
            //Se almacenara en la base de datos acorde al nombre especifico
            //además se asignaran los datos.
            fila = Data.Tables[table].NewRow();


            fila["email"] = Email;
            fila["password"] = Kave;
            //   fila["ID_data"] = ID_data;
            //Se agregaran los datos a la tabla de la base de datos.
            Data.Tables[table].Rows.Add(fila);
            AdaptadorDatos.Update(Data, table);

        }
    }
}
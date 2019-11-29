using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace web_example.Classes
{
    public class cls_singup_user:cls_conection
    {

       
        string table = "Users";
        protected string email, kave, name;
        protected int id_data;
        public cls_singup_user(string e, string k,string n)
        {
            this.email = e;
            this.kave = k;
            this.name = n;
        }
        public cls_singup_user()
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
        public String Name
        {
            set { name = value; }
            get { return name; }
        }
        public int ID_data
        {
            set { id_data = value; }
            get { return id_data; }
        }

        public void agregar()
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table);
            //Metodo de base de datos.
            DataRow fila;
            //Se almacenara en la base de datos acorde al nombre especifico
            //además se asignaran los datos.
            fila = Data.Tables[table].NewRow();
           

            fila["name"] = Name;
            fila["email"] = Email;
            fila["password"] = Kave;
         //   fila["ID_data"] = ID_data;
            //Se agregaran los datos a la tabla de la base de datos.
            Data.Tables[table].Rows.Add(fila);
            AdaptadorDatos.Update(Data, table);

        }
    }
}
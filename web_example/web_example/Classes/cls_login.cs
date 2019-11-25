using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace web_example.Classes
{
    public class cls_login:cls_conection
    {
        string table = "Users";
        protected string email, kave,name;
        protected int id_data;
        public cls_login(string e,string k)
        {
            this.email = e;
            this.kave = k;
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
        
        public bool login(string corre, string pass)
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table);
          
            //Metodo de base de datos.
            DataRow fila;
            //Contar las filas de la tabla .
            int x = Data.Tables[table].Rows.Count - 1;
           // Console.WriteLine("??{0}" + x);
            //Hacer el recorrido a la tabla.
            for (int i = 0; i <= x; i++)
            {
                fila = Data.Tables[table].Rows[i];
                //Se busca en la tabla si los datos proporcionados son pertenecientes a la tabla.
                if (fila["email"].ToString().Trim().ToLower() == corre.Trim().ToLower() && fila["password"].ToString().Trim() == pass.Trim())
                {
                    //En caso de ser certa la condición
                    //se almacenan los datos de la tabla 
                    //en los atributos y regresa un true.
                    ID_data = int.Parse(fila["ID_data"].ToString());
                    Email = fila["email"].ToString();
                    Name = fila["name"].ToString();
                    //Kave = fila["password"].ToString();
                    return true;
                }
            }
            //Retorna falso
            return false;
        }

    }
}
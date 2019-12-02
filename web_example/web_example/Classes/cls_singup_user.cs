using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;


namespace web_example.Classes
{
    public class cls_singup_user:cls_conection
    {

        bool korp;
        string table = "Users";
        string table_1 = "Data_User";
        string table_2 = "Billing_user";
        protected string email, kave;
        
        protected int id_data, get;
        protected string first_name, last_name, number_phone, access, country, city, address, zip_code, type, date_end, code_security, number;

        public cls_singup_user(string e, string k,string a)
        {
            this.email = e;
            this.kave = k;
            this.access = a;
        }
        public cls_singup_user(int id, string f, string l, string n, string c, string ci, string a, string z)
        {
            this.id_data = id;
            this.first_name = f;
            this.last_name = l;
            this.number_phone = n;
            this.country = c;
            this.city = ci;
            this.address = a;
            this.zip_code = z;
        }
        public cls_singup_user(int i, string n, string t, string d, string co)
        {
            this.id_data = i;
            this.number = n;
            this.type = t;
            this.date_end = d;
            this.code_security = co;
        }
        public cls_singup_user()
        {

        }
        public String Email{ set { email = value; }get { return email; } }
        public String Kave{set { kave = value; }get { return kave; }}
        public String Access{set { access = value; }get { return access; }}
        public int ID_data{set { id_data = value; }get { return id_data; }}

       
        public String First_name { set { first_name = value; } get { return first_name; } }
        public String Last_name { set { last_name = value; } get { return last_name; } }
        public String Number_phone { set { number_phone = value; } get { return number_phone; } }
        public String Country { set { country = value; } get { return country; } }
        public String City { set { city = value; } get { return city; } }
        public String Address { set { address = value; } get { return address; } }
        public String Zip_code { set { zip_code = value; } get { return zip_code; } }

        public String Number { set { number = value; } get { return number; } }
        public String Type { set { type = value; } get { return type; } }
        public String Date_end { set { date_end = value; } get { return date_end; } }
        public String Code_security { set { code_security = value; } get { return code_security; } }

        public void Add_2()
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table_2);
            //Metodo de base de datos.
            DataRow fila;
            //Se almacenara en la base de datos acorde al nombre especifico
            //además se asignaran los datos.
            fila = Data.Tables[table_2].NewRow();

            fila["FK_ID_user"] = ID_data;
            fila["number"] = Number;
            fila["type"] = Type;
            fila["date_end"] = Date_end;
            fila["code_security"] = Code_security;

            //   fila["ID_data"] = ID_data;
            //Se agregaran los datos a la tabla de la base de datos.
            Data.Tables[table_2].Rows.Add(fila);
            AdaptadorDatos.Update(Data, table_2);

        }
        public void Add_1()
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table_1);
            //Metodo de base de datos.
            DataRow fila;
            //Se almacenara en la base de datos acorde al nombre especifico
            //además se asignaran los datos.
            fila = Data.Tables[table_1].NewRow();

            fila["FK_ID_user"] = ID_data;
            fila["first_name"] = First_name;
            fila["last_name"] = Last_name;
            fila["number_phone"] = Number_phone;
            fila["country"] = Country;
            fila["city"] = City;
            fila["address"] = Address;
            fila["zip_code"] = Zip_code;

            //   fila["ID_data"] = ID_data;
            //Se agregaran los datos a la tabla de la base de datos.
            Data.Tables[table_1].Rows.Add(fila);
            AdaptadorDatos.Update(Data, table_1);

        }
        public void Add()
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
            fila["access"] = Access;
         //   fila["ID_data"] = ID_data;
            //Se agregaran los datos a la tabla de la base de datos.
            Data.Tables[table].Rows.Add(fila);
            AdaptadorDatos.Update(Data, table);

        }
        public bool Verification_Email(String valor)
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table);
            //Metodo de base de datos.
            DataRow fila;
            //Contar las filas de la tabla .
            int x = Data.Tables[table].Rows.Count - 1;
            //Hacer el recorrido a la tabla.
            for (int i = 0; i <= x; i++)
            {
                fila = Data.Tables[table].Rows[i];
                if (fila["email"].ToString() == valor)
                {
                    korp = true;
                }
                else
                {
                    korp = false;
                }
            }

            return korp;
        }
        public int existe(String valor)
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table);
            //Metodo de base de datos.
            DataRow fila;
            //Contar las filas de la tabla .
            int x = Data.Tables[table].Rows.Count - 1;
            //Hacer el recorrido a la tabla.
            for (int i = 0; i <= x; i++)
            {
                fila = Data.Tables[table].Rows[i];
                //Si el valor dado pertenece al nombre de la ciudad en la base de datos
                if (fila["email"].ToString() == valor)
                {
                    //Se procedera a obtener el ID de la lada
                    get = int.Parse(fila["ID_user"].ToString());

                }
            }
            //retornara el ID de la lada
            return get;


        }
    }
}
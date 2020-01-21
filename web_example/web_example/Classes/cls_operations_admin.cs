using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace web_example.Classes
{
    public class cls_operations_admin:cls_conection
    {
        string table = "Products";
        string msg1;
        protected string name, brand, description, photo;
        protected int fk_id_admin, fk_id_cat,current_stock,id;
        protected float price;
        public cls_operations_admin(int i,int f,int fk,string n,string b,float p,string d,string po,int c)
        {
            this.id = i;
            this.fk_id_admin = f;
            this.fk_id_cat = fk;
            this.name = n;
            this.brand = b;
            this.price = p;
            this.description = d;
            this.photo = po;
            this.current_stock = c;
        }
        public cls_operations_admin() { }
        public int ID { set { id = value; } get { return id; } }

        public int Fk_id_admin { set { fk_id_admin = value; } get { return fk_id_admin; } }
        public int Fk_id_cat { set { fk_id_cat = value; } get { return fk_id_cat; } }
        public String Name { set { name = value; } get { return name; } }
        public String Brand { set { brand = value; } get { return brand; } }
        public float Price { set { price = value; } get { return price; } }
        public String Description { set { description = value; } get { return description; } }
        public String Photo { set { photo = value; } get { return photo; } }
        public int Current_stock { set { current_stock = value; } get { return current_stock; } }
       
        public void Add()
        {
            //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
            conectar(table);
            //Metodo de base de datos.
            DataRow fila;
            //Se almacenara en la base de datos acorde al nombre especifico
            //además se asignaran los datos.
            fila = Data.Tables[table].NewRow();

            fila["FK_ID_admin"] = Fk_id_admin;
            fila["FK_ID_cat"] = Fk_id_cat;
            fila["name"] = Name;
            fila["brand"] = Brand;
            fila["price"] = Price;
            fila["description"] = Description;
            fila["photo"] = Photo;
            fila["current_stock"] = Current_stock;

            //   fila["ID_data"] = ID_data;
            //Se agregaran los datos a la tabla de la base de datos.
            Data.Tables[table].Rows.Add(fila);
            AdaptadorDatos.Update(Data, table);
        }
        public String msg { set {msg1 = value; } get { return msg1; } }
        public bool Updatek()
        {
            try
            {
                cls_conection obj1 = new cls_conection();
                SqlConnection myConnection = new SqlConnection(obj1.getConnection());
                myConnection.Open();
                if (myConnection.State == ConnectionState.Closed)
                {
                    myConnection.Open();
                }
                
                SqlCommand oCmd = new SqlCommand(@"UPDATE Products set name=@fname,brand=@fbrand,price=@fprice,description=@fdescription,photo=@fphoto,current_stock=@fcurrent_stock where ID_prod=@fkame", myConnection);
                oCmd.Parameters.AddWithValue("@fkame", ID);
                oCmd.Parameters.AddWithValue("@fname", Name);
                oCmd.Parameters.AddWithValue("@fbrand", Brand);
                oCmd.Parameters.AddWithValue("@fprice", Price);
                oCmd.Parameters.AddWithValue("@fdescription", Description);
                oCmd.Parameters.AddWithValue("@fphoto", Photo);
                oCmd.Parameters.AddWithValue("@fcurrent_stock",Current_stock);
                oCmd.ExecuteNonQuery();
                
                myConnection.Close();
                return true;
            }
            catch (Exception ex)
            {
              //  Console.WriteLine(ex);
                msg = ex.ToString();
                return false;
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            /*
             *     conectar(table);
            DataRow fila;
            if (Data.Tables[0].Rows.Count > 0)
            {

            }else if(Data.Tables[0].Rows.Count == 0)
            {

            } */
        }
        /*public cls_operations_admin Select(string fName)
        {
            var con = ConfigurationManager.ConnectionStrings["Yourconnection"].ToString();

            Person matchingPerson = new Person();
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
                        matchingPerson.firstName = oReader["FirstName"].ToString();
                        matchingPerson.lastName = oReader["LastName"].ToString();
                    }

                    myConnection.Close();
                }
            }
            return matchingPerson;
        }*/
    }
}
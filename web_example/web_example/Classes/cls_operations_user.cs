using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace web_example.Classes
{
    public class cls_operations_user : cls_conection
    {
        protected int id_data, id_data1, get;
        protected string first_name, last_name, number_phone, access, country, city, address, zip_code, type, date_end, code_security, number;

        public cls_operations_user(int id, string f, string l, string nu, string c, string ci, string a, string z)
        {
            this.id_data = id;
            this.first_name = f;
            this.last_name = l;
            this.number_phone = nu;
            this.country = c;
            this.city = ci;
            this.address = a;
            this.zip_code = z;
          
        }
        public cls_operations_user(int id ,string n, string t, string d, string co)
        {
            this.id_data1 = id;
            this.number = n;
            this.type = t;
            this.date_end = d;
            this.code_security = co;
        }
        public cls_operations_user()
        {

        }
        public int ID_data { set { id_data = value; } get { return id_data; } }
        public int ID_data1 { set { id_data1 = value; } get { return id_data1; } }


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

        public cls_operations_user select_Profile(string fName)
        {
            cls_conection obj1 = new cls_conection();
            cls_operations_user matchingPerson = new cls_operations_user(0, "", "", "", "", "", "","");

            using (SqlConnection myConnection = new SqlConnection(obj1.getConnection()))
            {
                string oString = "SELECT * FROM Data_User WHERE FK_ID_user=@fName";
                SqlCommand oCmd = new SqlCommand(oString, myConnection);
                oCmd.Parameters.AddWithValue("@fname", fName);
                myConnection.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        //I got problem getting the PRIMARY KEY and the FOREIGN KEY 
                        //matchingPerson.Fk_id_cat = Int32.Parse(oReader["ID_prod"].ToString());

                        matchingPerson.First_name = oReader["first_name"].ToString();
                        matchingPerson.Last_name = oReader["last_name"].ToString();
                        matchingPerson.Number_phone = oReader["number_phone"].ToString();
                        matchingPerson.Country = oReader["country"].ToString();
                        matchingPerson.City = oReader["city"].ToString();
                        matchingPerson.Address = oReader["address"].ToString();
                        matchingPerson.Zip_code = oReader["zip_code"].ToString();

                    }

                    myConnection.Close();
                }
            }
            return matchingPerson;


        }
        public cls_operations_user select_Profile1(string fName)
        {
            cls_conection obj1 = new cls_conection();
            cls_operations_user matchingPerson = new cls_operations_user(0, "", "", "", "");

            using (SqlConnection myConnection = new SqlConnection(obj1.getConnection()))
            {
                string oString = "SELECT * FROM Billing_user WHERE FK_ID_user=@fName";
                SqlCommand oCmd = new SqlCommand(oString, myConnection);
                oCmd.Parameters.AddWithValue("@fname", fName);
                myConnection.Open();
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        //I got problem getting the PRIMARY KEY and the FOREIGN KEY 
                        //matchingPerson.Fk_id_cat = Int32.Parse(oReader["ID_prod"].ToString());

                        matchingPerson.Number = oReader["number"].ToString();
                        matchingPerson.type = oReader["type"].ToString();
                        matchingPerson.Date_end = oReader["date_end"].ToString();
                        matchingPerson.Code_security = oReader["code_security"].ToString();
                        
                    }

                    myConnection.Close();
                }
            }
            return matchingPerson;


        }

    }

}
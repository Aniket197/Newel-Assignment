using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Practicle_Test
{
    public partial class Employee_information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-C5EN5RR;Initial Catalog=HR_Test;Persist Security Info=True;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Employee_Record Values('" + txt_emp_code.Text + "', '" + txt_emp_name.Text + "','" + DropDownList1.Text + "','" + RadioButtonList1.Text + "','" + txt_emp_dob.Text + "','" + txt_emp_jd.Text + "','" + txt_emp_pre_Expe.Text + "','" + txt_emp_salary.Text + "','" + txt_emp_add.Text + "')", con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Record inserted successfully......!";
            con.Close();
            Clear();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            /* 
              txt_emp_code.Text = "";
            txt_emp_name.Text = "";
            DropDownList1.Text = "";
            RadioButtonList1.Text = "";
            txt_emp_dob.Text = "";
            txt_emp_jd.Text = "";
            txt_emp_pre_Expe.Text = "";
            txt_emp_salary.Text = "";
            txt_emp_add.Text = "";
             */


            Response.Redirect("Employee_information.aspx");

        }

        protected void Clear()
        {
            txt_emp_code.Text = "";
            txt_emp_name.Text = "";
            DropDownList1.Text = "";
            RadioButtonList1.Text = "";
            txt_emp_dob.Text = "";
            txt_emp_jd.Text = "";
            txt_emp_pre_Expe.Text = "";
            txt_emp_salary.Text = "";
            txt_emp_add.Text = "";
        }
    }
}
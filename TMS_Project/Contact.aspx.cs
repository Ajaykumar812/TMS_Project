using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubjectDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void ResetContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.ClearSelection();
            MessageTextBox.Text = "";
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spContact_insert";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Message", MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                //Response.Write("<script>alert('Form Has been Submitted Successfully.')</script>");
                //Response.Write("<script>SuccessContact();</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact();", true);

                ResetContact();
            }
            else
            {
                Response.Write("<script>alert('Form Insertion Failed.')</script>");
                //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Form Insertion Failed.', 'error')", true);

            }
            con.Close();
        }

        protected void NameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

    }
}
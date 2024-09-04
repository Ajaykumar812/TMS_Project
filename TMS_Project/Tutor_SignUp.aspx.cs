using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project
{
    public partial class Tutor_SignUp : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetControls()
        {
            NameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            EmailTextBox.Text = "";
            MaritalStatusDropDownList.ClearSelection();
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            QualificationDropDownList.ClearSelection();
            DegreeTextBox.Text = "";
            ExperienceDropDownList.ClearSelection();
            ContactTextBox.Text = "";
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }
        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {

                string query = "insert into tutor_signup values(@name,@surname,@gender,@age,@email,@marital_status,@country,@address,@qualification,@degree,@experience,@contactno,@username,@password)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", AgeTextBox.Text);
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@marital_status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    //Response.Write("<script>alert('You have Registered Successfully ')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','You have Registered Successfully ', 'Success')", true);
                    ;
                }
                else
                {
                    //Response.Write("<script>alert('Registeration Failed .. Try Another Username')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed .. Try Another Username ', 'error')", true);
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed ..  " + UsernameTextBox.Text + "  already Exist', 'error')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed ..  ', 'error')", true);

                }
            }
            finally
            {
                con.Close();
            }
        }
    }
}
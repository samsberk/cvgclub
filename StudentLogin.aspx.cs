using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;
using ASPSnippets.GoogleAPI;

public partial class StudentLogin : System.Web.UI.Page
{
	string cmd, information, fsign;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.QueryString["information"] == null)
			information = "AllRight";
		else
			information = em.DecryptMyData(Request.QueryString["information"]);

		if (Request.Cookies["emailid"] == null)
		{

		}
		else
		{
			fsign = Request.Cookies["emailid"].Value;
			cmd = "select * from SRegistration where EmailID='" + fsign + "'";
			DataTable dt = dm.SelectQuery(cmd);
			if (dt.Rows.Count > 0)
			{
				Response.Redirect("Student_Home");
			}
			else
			{

				informer.Text = information;
				if (information == "InvalidUserIDorPassword")
				{
					alerttext.Text = "Invalid User Id or Password, Please make sure that both are correct, otherwise Create an Account <a href='Sign_Up' class='link click-on'><b>Here</b></a>.";
				}
				else if (information == "QueryNotSubmitted")
				{
					alerttext.Text = "Something went wrong, please try again later.";
				}
				else if (information == "PasswordReseted")
				{
					alerttext.Text = "Password reseted successfully, Check your Email ID.";
				}
			}
		}

	}

	protected void loginbtn_Click(object sender, EventArgs e)
	{
		cmd = "select * from SRegistration where EmailID='" + emailtxt.Text.ToLower().ToString() + "' and Password='" + em.EncryptMyData(passtxt.Text.ToString()) + "'";
		DataTable dt = dm.SelectQuery(cmd);
		if (dt.Rows.Count > 0)
		{
			HttpCookie ck = new HttpCookie("emailid")
			{
				Value = emailtxt.Text.ToLower().ToString(),
				Expires = DateTime.Now.AddDays(7)
			};
			Response.Cookies.Add(ck);
			Session["emailid"] = emailtxt.Text.ToLower().ToString();
			Response.Redirect("Update_Student_Profile?information=" + em.EncryptMyData("AllRight") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&showstate=" + em.EncryptMyData("Default") + "");
		}
		else
		{
			Response.Redirect("Student_Login?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "");
		}
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Student_Block_Update_Student_Profile : System.Web.UI.Page
{
	string cmd, forsign;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.Cookies["emailid"] == null)
			Response.Redirect("Sign_Up?information=" + em.EncryptMyData("SignUpWithValidEmailid") + "");
		else
		{
			forsign = Request.Cookies["emailid"].Value;
			cmd = "select * from SRegistration where EmailID='" + forsign + "'";
			DataTable dt = dm.SelectQuery(cmd);
			if (dt.Rows.Count > 0)
			{
				if (dt.Rows[0]["Status"].ToString() != "VERIFIED BNF")
				{
					Response.Redirect("Student_Home");
				}
			}
			else
			{
				Response.Redirect("Sign_Up?information=" + em.EncryptMyData("SignUpWithValidEmailid") + "");
			}
		}
	}

	protected void subregbtn_Click(object sender, EventArgs e)
	{

		if (Request.QueryString["forsign"] == null)
			forsign = "Nothing";
		else
			forsign = Request.QueryString["forsign"];


		string c = "NOPE", d = "NOPE", b = "NOPE", y = "NOPE", s = "NOT VERIFIED";
		c = coltxt.SelectedValue.ToString();
		if (coltxt.SelectedValue == "OTHER")
			c = ocoltxt.Text.ToUpper().ToString();
		d = depttxt.SelectedValue.ToString();
		if (depttxt.SelectedValue == "B.TECH")
		{
			b = btechbrtxt.SelectedValue.ToString();
			y = btechyeartxt.SelectedValue.ToString();
		}
		else if (depttxt.SelectedValue == "MBA")
		{
			b = mbabrtxt.SelectedValue.ToString();
			y = myeartxt.SelectedValue.ToString();
		}
		else if (depttxt.SelectedValue == "MCA")
		{
			b = mcabrtxt.SelectedValue.ToString();
			y = myeartxt.SelectedValue.ToString();
		}
		else if (depttxt.SelectedValue == "OTHER")
		{
			b = obrtxt.Text.ToUpper().ToString();
			y = btechyeartxt.SelectedValue.ToString();
		}
		cmd = "select * from SRegistration where Department='" + d + "' and Branch='" + b + "' and Year='" + y + "' and RollNo='" + rolltxt.Text + "'";
		DataTable dtrol = dm.SelectQuery(cmd);
		if (dtrol.Rows.Count > 0)
		{
			Response.Write("<script>alert('Can not register with this Roll Number for this Department, Branch and Year.')</script>");
		}
		else
		{
			string filen = "NOTHING";
			if (pic.HasFile)
			{
				filen = forsign + "_" + pic.FileName;
				pic.SaveAs(Server.MapPath("~/Images/UserPics/" + filen));
			}
			cmd = "update SRegistration set RollNo='" + rolltxt.Text + "', FName=N'" + fntxt.Text.ToUpper().ToString() + "', LName=N'" + lntxt.Text.ToUpper().ToString() + "', DOB='" + dobtxt.Text.ToString() + "', Gender='" + gentxt.SelectedValue.ToString() + "', Department='" + d + "', Branch='" + b + "', Year='" + y + "', College=N'" + c + "', Picture=N'" + filen + "', Contact='" + conttxt.Text.ToString() + "', Status='" + s + "' where EmailID='" + forsign + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				Session["emailid"] = null;
				Response.Redirect("Events?information=" + em.EncryptMyData("SignedUp") + "");
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
			}
		}
	}
}
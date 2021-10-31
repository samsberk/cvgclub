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

public partial class Forgot_Password : System.Web.UI.Page
{
	string cmd, otp, sub, msg;
	string information = "Blank", showstate = "Blank", forsign = "Blank", redirecturl = "Blank", att = "NOT MENTIONED", st = "UnAuthorize";
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

		if (Request.QueryString["showstate"] == null)
			showstate = "Default";
		else
			showstate = em.DecryptMyData(Request.QueryString["showstate"]);

		if (Request.QueryString["forsign"] == null)
			forsign = "Nothing";
		else
			forsign = Request.QueryString["forsign"];

		if (Request.QueryString["redirecturl"] == null)
			redirecturl = "NoRedirectURL";
		else
			redirecturl = em.DecryptMyData(Request.QueryString["redirecturl"]);


		show.Text = showstate;
		if (showstate == "Default")
		{
			cmd = "delete from SRegistration where Status='" + st + "'";
			dm.ExInsertUpdateorDelete(cmd);
		}
		informer.Text = information;
		if (information == "NotRegistered")
		{
			alerttext.Text = "It is look like this Email ID is not registered. For Create an account <a href='Sign_Up' class='link click-on'>Click Here</a>.";
		}
		else if (information == "CouldNotBlank")
		{
			alerttext.Text = "Please enter Email ID first.";
		}
		else if (information == "QueryNotSubmitted")
		{
			alerttext.Text = "Something went wrong, please try again later.";
		}
		else if (information == "InvalidOTP")
		{
			alerttext.Text = "OTP is invalid. Please enter correct OTP or check the generated time. If OTP is not in your inbox, please check it out in Spam folder.";
		}
	}
	protected void signupbtn_Click(object sender, EventArgs e)
	{
		if (emailtxt.Text == "")
		{
			Response.Redirect("Forgot_Password?information=" + em.EncryptMyData("CouldNotBlank") + "");
		}
		else
		{
			cmd = "select * from SRegistration where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
			DataTable dfs = dm.SelectQuery(cmd);
			if (dfs.Rows.Count > 0)
			{
				otp = gc.getcode();
				sub = "Password Reset OTP for CVGClub at " + DateTime.Now.ToString() + "";
				msg = "Your One Time Password for CVGClub is <b>" + otp + "</b>.<br/>Generated at " + DateTime.Now.ToString() + "";
				mm.SendMail(emailtxt.Text.ToLower().ToString(), sub, msg);
				Response.Redirect("Forgot_Password?showstate=" + em.EncryptMyData("MailSent") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&redirecturl=" + em.EncryptMyData(otp) + "");
			}
			else
			{
				Response.Redirect("Forgot_Password?information=" + em.EncryptMyData("NotRegistered") + "");
			}
		}
	}

	protected void subotpbtn_Click(object sender, EventArgs e)
	{
		if (Request.QueryString["information"] == null)
			information = "AllRight";
		else
			information = em.DecryptMyData(Request.QueryString["information"]);

		if (Request.QueryString["showstate"] == null)
			showstate = "Default";
		else
			showstate = em.DecryptMyData(Request.QueryString["showstate"]);

		if (Request.QueryString["forsign"] == null)
			forsign = "Nothing";
		else
			forsign = Request.QueryString["forsign"];

		if (Request.QueryString["redirecturl"] == null)
			redirecturl = "NoRedirectURL";
		else
			redirecturl = em.DecryptMyData(Request.QueryString["redirecturl"]);

		if (otptxt.Text == redirecturl)
		{
			otp = gc.getcode();
			otp = em.EncryptMyData(otp);
			cmd = "update SRegistration set Password='" + otp + "' where EmailID='" + forsign + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				sub = "Password for CVGClub";
				otp = em.DecryptMyData(otp);
				msg = "Password Reset Successfully.<br>Password for your account is <b>" + otp + "</b>.<br>Please change this after login.";
				mm.SendMail(forsign, sub, msg);
				Response.Redirect("Student_Login?information=" + em.EncryptMyData("PasswordReseted") + "");
			}
			else
			{
				Response.Redirect("Forgot_Password?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
			}
			
		}
		else
		{
			Response.Redirect("Forgot_Password?showstate=" + em.EncryptMyData("MailSent") + "&information=" + em.EncryptMyData("InvalidOTP") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&redirecturl=" + em.EncryptMyData(redirecturl) + "");
		}

	}

	protected void resendbtn_Click(object sender, EventArgs e)
	{
		if (Request.QueryString["information"] == null)
			information = "AllRight";
		else
			information = em.DecryptMyData(Request.QueryString["information"]);

		if (Request.QueryString["showstate"] == null)
			showstate = "Default";
		else
			showstate = em.DecryptMyData(Request.QueryString["showstate"]);

		if (Request.QueryString["forsign"] == null)
			forsign = "Nothing";
		else
			forsign = Request.QueryString["forsign"];

		if (Request.QueryString["redirecturl"] == null)
			redirecturl = "NoRedirectURL";
		else
			redirecturl = em.DecryptMyData(Request.QueryString["redirecturl"]);

		otp = gc.getcode();
		sub = "Password Reset OTP for CVGClub at " + DateTime.Now.ToString() + "";
		msg = "Your One Time Password for CVGClub is <b>" + otp + "</b>.<br/>Generated at " + DateTime.Now.ToString() + "";
		mm.SendMail(emailtxt.Text.ToLower().ToString(), sub, msg);
		Response.Redirect("Forgot_Password?showstate=" + em.EncryptMyData("MailSent") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&redirecturl=" + em.EncryptMyData(otp) + "");
	}
}
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

public partial class SignUp : System.Web.UI.Page
{
	string cmd, otp, sub, msg;
	string information = "Blank", showstate = "Blank", forsign = "Blank", redirecturl="Blank", att="NOT MENTIONED", st="UnAuthorize";
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
			
		}
		informer.Text = information;
		if (information == "AlreadyRegistered")
		{
			alerttext.Text = "This Email ID is already registered. You can Login <a href='Student_Login' class='link click-on'>HERE</a>.";
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
		st = "UnAuthorize";
		cmd = "delete from SRegistration where EmailID='" + emailtxt.Text.ToLower().ToString() + "' and Status='" + st + "'";
		dm.ExInsertUpdateorDelete(cmd);
		cmd = "select * from SRegistration where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
		DataTable dfs = dm.SelectQuery(cmd);
		if (dfs.Rows.Count > 0)
		{
			Response.Redirect("Sign_Up?information=" + em.EncryptMyData("AlreadyRegistered") + "");
		}
		else
		{
			cmd = "insert into SRegistration(EmailID,Password,RegDate,LCount,LastLogin,Status,Attendance) values('" + emailtxt.Text.ToLower().ToString() + "','" + em.EncryptMyData(passtxt.Text.ToString()) + "','" + DateTime.Now.ToString() + "',0,'" + DateTime.Now.ToString() + "','" + st + "','" + att + "')";
			if (dm.ExInsertUpdateorDelete(cmd))
			{
				string tempst = "VERIFIED BNF";
				cmd = "update SRegistration set Status='" + tempst + "' where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
				if (dm.ExInsertUpdateorDelete(cmd))
				{
					HttpCookie cook = new HttpCookie("emailid")
					{
						Value = emailtxt.Text.ToLower().ToString(),
						Expires = DateTime.Now.AddDays(10)
					};
					Response.Cookies.Add(cook);
					sub = "Registered for CVGClub";
					msg = "Congrats,<br/>You are registered on <a href='http://cvgclub.org'>CVGClub.org</a>. <br/><br/><i>This is auto generated, only a confirmation mail for Account Registration.</i><br><br><br><br><h1 style='text-align:right;'>Team CVGClub</h1>";
					mm.SendMail(emailtxt.Text.ToLower().ToString().ToString(), sub, msg);
					Session["mailid"] = null;
					Response.Redirect("Update_Student_Profile?information=" + em.EncryptMyData("AllRight") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&showstate=" + em.EncryptMyData("Default") + "");
				}
				else
					Response.Redirect("Sign_Up?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
				//otp = gc.getcode();
				//sub = "OTP for CVGClub at " + DateTime.Now.ToString() + "";
				//msg = "Your One Time Password for CVGClub is <b>" + otp + "</b>.<br/>Generated at " + DateTime.Now.ToString() + "";
				//mm.SendMail(emailtxt.Text.ToLower().ToString(), sub, msg);
				//Session["mailid"] = emailtxt.Text.ToLower().ToString();
				//Response.Redirect("Sign_Up?showstate=" + em.EncryptMyData("MailSent") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&redirecturl=" + em.EncryptMyData(otp) + "");
			}
			else
			{
				Response.Redirect("Sign_Up?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
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

		Response.Redirect("Update_Student_Profile?information=" + em.EncryptMyData("AllRight") + "&forsign=" + forsign + "&showstate=" + em.EncryptMyData("Default") + "");

		//if (otptxt.Text == redirecturl)
		//{
		//	string tempst = "VERIFIED BNF";
		//	cmd = "update SRegistration set Status='" + tempst + "' where EmailID='" + Session["mailid"] + "'";
		//	if (dm.ExInsertUpdateorDelete(cmd))
		//	{
		//		HttpCookie cook = new HttpCookie("emailid")
		//		{
		//			Value = Session["mailid"].ToString(),
		//			Expires = DateTime.Now.AddDays(10)
		//		};
		//		Response.Cookies.Add(cook);
		//		sub = "Registered for CVGClub";
		//		msg = "Congrats,<br/>You are registered on <a href='http://cvgclub.org'>CVGClub.org</a>. <br/><br/><i>This is auto generated, only a confirmation mail for Account Registration.</i><br><br><br><br><h1 style='text-align:right;'>Team CVGClub</h1>";
		//		mm.SendMail(Session["mailid"].ToString(), sub, msg);
		//		Session["mailid"] = null;
		//		Response.Redirect("Update_Student_Profile?information=" + em.EncryptMyData("AllRight") + "&forsign=" + forsign + "&showstate=" + em.EncryptMyData("Default") + "");
		//	}
		//	else
		//		Response.Redirect("Sign_Up?information=" + em.EncryptMyData("QueryNotSubmitted") + "");
		//}
		//else
		//{
		//	Response.Redirect("Sign_Up?showstate=" + em.EncryptMyData("MailSent") + "&information=" + em.EncryptMyData("InvalidOTP") + "&forsign=" + emailtxt.Text.ToLower().ToString() + "&redirecturl=" + em.EncryptMyData(redirecturl) + "");
		//}

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
		sub = "OTP for CVGClub at " + DateTime.Now.ToString() + "";
		msg = "Your One Time Password for CVGClub is <b>" + otp + "</b>.<br/>Generated at " + DateTime.Now.ToString() + "";
		//mm.SendMail(forsign, sub, msg);
		Response.Redirect("Sign_Up?showstate=" + em.EncryptMyData("MailSent") + "&forsign=" + forsign + "&redirecturl=" + em.EncryptMyData(otp) + "");
	}
}
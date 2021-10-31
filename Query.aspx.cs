using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Query : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void sbtn_Click(object sender, EventArgs e)
	{
		if (snametxt.Text == "" || semailtxt.Text == "" || squerytxt.Text == "")
		{
			Response.Write("<script>alert('Should not blank any text box in Startup Field.')</script>");
			snametxt.Text = "";
			semailtxt.Text = "";
			squerytxt.Text = "";
		}
		else
		{
			cmd = "Startup Query Sender : " + snametxt.Text.ToString() + "<br/>Startup Query Email : " + semailtxt.Text.ToString() + "<br/>Startup Query :<br/><h4>" + squerytxt.Text.ToString() + "</h3><br/><br/><a href='mailto:" + semailtxt.Text.ToString() + "?subject=Reply from CVGClub&body=Hello " + snametxt.Text.ToString() + ",%0D%0AYour Query : " + squerytxt.Text.ToString() + "%0D%0AReply : '>Click here to instant Reply</a><br/><br/><br/><br/><br/><h4 style='text-align:right;font-size:30px;color:red;font-family:Calibri;'><i>Team CVGClub</i></h4>";
			if (mm.SendMail("queryatcvg@gmail.com", "Startup Query", cmd))
			{
				Response.Write("<script>alert('Submitted Successfully. We will reply back as soon as possible, if given E-mail ID is valid.')</script>");
				snametxt.Text = "";
				semailtxt.Text = "";
				squerytxt.Text = "";
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
			}
		}
	}
	protected void tbtn_Click(object sender, EventArgs e)
	{
		if (tnametxt.Text == "" || temailtxt.Text == "" || tquerytxt.Text == "")
		{
			Response.Write("<script>alert('Should not blank any text box in Training Field.')</script>");
			tnametxt.Text = "";
			temailtxt.Text = "";
			tquerytxt.Text = "";
		}
		else
		{
			cmd = "Training Query Sender : " + tnametxt.Text.ToString() + "<br/>Training Query Email : " + temailtxt.Text.ToString() + "<br/>Training Query :<br/><h4>" + tquerytxt.Text.ToString() + "</h3><br/><br/><a href='mailto:" + temailtxt.Text.ToString() + "?subject=Reply from CVGClub&body=Hello " + tnametxt.Text.ToString() + ",%0D%0AYour Query : " + tquerytxt.Text.ToString() + "%0D%0AReply : '>Click here to instant Reply</a><br/><br/><br/><br/><br/><h4 style='text-align:right;font-size:30px;color:red;font-family:Calibri;'><i>Team CVGClub</i></h4>";
			if (mm.SendMail("queryatcvg@gmail.com", "Training Query", cmd))
			{
				Response.Write("<script>alert('Submitted Successfully. We will reply back as soon as possible, if given E-mail ID is valid.')</script>");
				tnametxt.Text = "";
				temailtxt.Text = "";
				tquerytxt.Text = "";
			}
			else
			{
				Response.Write("<script>alert('Something went wrong, Please try again later.')</script>");
			}
		}
	}
}
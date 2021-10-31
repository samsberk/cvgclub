using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class SendSMS : System.Web.UI.Page
{
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void sendbtn_Click(object sender, EventArgs e)
	{
		if (ss.sendsms(number.Text.ToString(), text.Text.ToString()))
			Response.Write("<script>alert('success')</script>");
		else
			Response.Write("<script>alert('failed')</script>");
	}
}
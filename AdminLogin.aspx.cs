using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class AdminLogin : System.Web.UI.Page
{
	string scmd, pas;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
	{
		if(Session["adminid"] != null)
		{
			scmd = "select * from Admin where AdminID='" + Session["adminid"].ToString() + "'";
			DataTable dt = dm.SelectQuery(scmd);
			if (dt.Rows.Count > 0)
			{
				Response.Redirect("Admin_Home");
			}	
		}
	}
	protected void loginbtn_Click(object sender, EventArgs e)
	{
		pas = em.EncryptMyData(passtxt.Text);
		scmd = "select * from Admin where AdminID='" + emailtxt.Text + "' and Password='" + pas + "'";
		DataTable dt = dm.SelectQuery(scmd);
		if (dt.Rows.Count > 0)
		{
			scmd = "update Admin set LCount=(LCount+1), LastLogin='" + DateTime.Now.ToString() + "' where AdminID='" + emailtxt.Text + "'";
			dm.ExInsertUpdateorDelete(scmd);
			Session["adminid"] = emailtxt.Text;
			Response.Redirect("Admin_Home");
		}
		else
			Response.Write("<script>alert('Invalid id or password.')</script>");
	}
}
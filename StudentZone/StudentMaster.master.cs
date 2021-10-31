using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StudentZone_StudentMaster : System.Web.UI.MasterPage
{
	string fsign;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
    {
		if (Request.Cookies["emailid"] == null)
			Response.Redirect("Student_Login");
		else
		{
			fsign = Request.Cookies["emailid"].Value;
			string scmd = "select * from SRegistration where EmailID='" + fsign + "'";
			DataTable dt = dm.SelectQuery(scmd);
			if (dt.Rows.Count > 0)
			{
				u2lbl.Text = "" + dt.Rows[0][1];
			}
			else
			{
				Response.Redirect("Student_Login");
			}
		}
		
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gc = new GenCaptcha();
	MyMail mm = new MyMail();
	SMSSender ss = new SMSSender();
	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "update VisitCount set Visits=(Visits+1)";
		dm.ExInsertUpdateorDelete(cmd);
		cmd = "select * from VisitCount";
		DataTable dt = dm.SelectQuery(cmd);
		vcount.Text = "" + dt.Rows[0]["Visits"].ToString();
	}
}
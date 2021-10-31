using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_Grft : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	protected void Page_Load(object sender, EventArgs e)
	{
		cmd = "select * from Admin where AdminID='" + Session["adminid"] + "'";
		DataTable dt = dm.SelectQuery(cmd);
		if (dt.Rows.Count > 0)
		{
			int x, y;
			cmd = "select * from Grft";
			DataTable dtl = dm.SelectQuery(cmd);
			for (x = 0, y = 1; x < dtl.Rows.Count; x++, y++)
			{
				ph.Controls.Add(new Literal() { Text = "<tr><td>" + y + "</td><td>" + dtl.Rows[x]["Name"].ToString() + "</td><td>" + dtl.Rows[x]["Department"].ToString() + " - " + dtl.Rows[x]["Branch"].ToString() + " - " + dtl.Rows[x]["Year"].ToString() + "</td><td>" + dtl.Rows[x]["ClgName"].ToString() + "</td><td>" + dtl.Rows[x]["Contact"].ToString() + "</td><td></td></tr>" });
			}
		}
		else
			Response.Redirect("samsberk");
	}
}
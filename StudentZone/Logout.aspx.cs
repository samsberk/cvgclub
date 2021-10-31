﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentZone_Logout : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		Session["emailid"] = null;
		Response.Cookies["emailid"].Value = null;
		Response.Redirect("Student_Login");
	}
}
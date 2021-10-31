using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Events_Events : System.Web.UI.Page
{
	string cmd, information, sevent, st, nm, pswrd;
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

		if (Request.QueryString["showevent"] == null)
			sevent = "AllRight";
		else
			sevent = em.DecryptMyData(Request.QueryString["showevent"]);

		Response.Write("<script>alert('Participation Closed.')</script>");

		informer.Text = information;
		showevent.Text = sevent;

		st = "UnAuthorize";
		cmd = "delete from SRegistration where Status='" + st + "'";
		dm.ExInsertUpdateorDelete(cmd);
	}

	protected void boowbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (eboowtxt.Text == "" || pboowtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Boow") + "");
		//}
		//else
		//{
		//	cmd = "select * from Boow where EmailID='" + eboowtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + eboowtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{

		//				pswrd = em.EncryptMyData(pboowtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + eboowtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Boow values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Boow") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Boow") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Boow") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void dvbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (edvtxt.Text == "" || pdvtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Dv") + "");
		//}
		//else
		//{
		//	cmd = "select * from Dv where EmailID='" + edvtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + edvtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pdvtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + edvtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Dv values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Dv") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Dv") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Dv") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void pptpbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (epptptxt.Text == "" || ppptptxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Pptp") + "");
		//}
		//else
		//{
		//	cmd = "select * from Pptp where EmailID='" + epptptxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + epptptxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(ppptptxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + epptptxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Pptp values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Pptp") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Pptp") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Pptp") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void thbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		/*if (ethtxt.Text == "" || pthtxt.Text == "")
		{
			Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Th") + "");
		}
		else
		{
			cmd = "select * from Th where EmailID='" + ethtxt.Text.ToLower().ToString() + "'";
			DataTable dte = dm.SelectQuery(cmd);
			if (dte.Rows.Count > 0)
			{
				Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
			}
			else
			{
				cmd = "select * from SRegistration where EmailID='" + ethtxt.Text.ToLower().ToString() + "'";
				DataTable dts = dm.SelectQuery(cmd);
				if (dts.Rows.Count > 0)
				{
					if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
					{
						pswrd = em.EncryptMyData(pthtxt.Text.ToString());
						cmd = "select * from SRegistration where EmailID='" + ethtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
						DataTable dtp = dm.SelectQuery(cmd);
						if (dtp.Rows.Count > 0)
						{
							nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
							cmd = "insert into Th values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
							if (dm.ExInsertUpdateorDelete(cmd))
							{
								Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Th") + "");
							}
							else
							{
								Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Th") + "");
							}
						}
						else
						{
							Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Th") + "");
						}
					}
					else
					{
						Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
					}
				}
				else
				{
					Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
				}
			}
		}*/
	}

	protected void wsbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (ewstxt.Text == "" || pwstxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Ws") + "");
		//}
		//else
		//{
		//	if (wsptrytxt.Checked == false && wsartcltxt.Checked == false && wsdrmtxt.Checked == false)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("ChooseAnyOne") + "&showevent=" + em.EncryptMyData("Ws") + "");
		//	}
		//	cmd = "select * from Ws where EmailID='" + ewstxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + ewstxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			string poet = "NOPE", artic = "NOPE", dram = "NOPE";
		//			if (wsptrytxt.Checked == true)
		//				poet = "PARTICIPATED";
		//			if (wsartcltxt.Checked == true)
		//				artic = "PARTICIPATED";
		//			if (wsdrmtxt.Checked == true)
		//				dram = "PARTICIPATED";
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pwstxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + ewstxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Ws values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + poet + "','" + artic + "','" + dram + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Ws") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Ws") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Ws") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void grftbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (egrfttxt.Text == "" || pgrfttxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Grft") + "");
		//}
		//else
		//{
		//	cmd = "select * from Grft where EmailID='" + egrfttxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + egrfttxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pgrfttxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + egrfttxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Grft values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Grft") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Grft") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Grft") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void qzbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		/*if (eqztxt.Text == "" || pqztxt.Text == "")
		{
			Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Qz") + "");
		}
		else
		{
			cmd = "select * from Qz where EmailID='" + eqztxt.Text.ToLower().ToString() + "'";
			DataTable dte = dm.SelectQuery(cmd);
			if (dte.Rows.Count > 0)
			{
				Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
			}
			else
			{
				cmd = "select * from SRegistration where EmailID='" + eqztxt.Text.ToLower().ToString() + "'";
				DataTable dts = dm.SelectQuery(cmd);
				if (dts.Rows.Count > 0)
				{
					if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
					{
						pswrd = em.EncryptMyData(pqztxt.Text.ToString());
						cmd = "select * from SRegistration where EmailID='" + eqztxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
						DataTable dtp = dm.SelectQuery(cmd);
						if (dtp.Rows.Count > 0)
						{
							nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
							cmd = "insert into Qz values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
							if (dm.ExInsertUpdateorDelete(cmd))
							{
								Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Qz") + "");
							}
							else
							{
								Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Qz") + "");
							}
						}
						else
						{
							Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Qz") + "");
						}
					}
					else
					{
						Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
					}
				}
				else
				{
					Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
				}
			}
		}*/
	}

	protected void sktchbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (esktchtxt.Text == "" || psktchtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Sktch") + "");
		//}
		//else
		//{
		//	cmd = "select * from Sktch where EmailID='" + esktchtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + esktchtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(psktchtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + esktchtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Sktch values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Sktch") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Sktch") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Sktch") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void pntbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (epnttxt.Text == "" || ppnttxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Pnt") + "");
		//}
		//else
		//{
		//	cmd = "select * from Pntng where EmailID='" + epnttxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + epnttxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(ppnttxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + epnttxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Pntng values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Pnt") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Pnt") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Pnt") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void chbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		/*if (echtxt.Text == "" || pchtxt.Text == "")
		{
			Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Ch") + "");
		}
		else
		{
			cmd = "select * from Ch where EmailID='" + echtxt.Text.ToLower().ToString() + "'";
			DataTable dte = dm.SelectQuery(cmd);
			if (dte.Rows.Count > 0)
			{
				Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
			}
			else
			{
				cmd = "select * from SRegistration where EmailID='" + echtxt.Text.ToLower().ToString() + "'";
				DataTable dts = dm.SelectQuery(cmd);
				if (dts.Rows.Count > 0)
				{
					if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
					{
						pswrd = em.EncryptMyData(pchtxt.Text.ToString());
						cmd = "select * from SRegistration where EmailID='" + echtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
						DataTable dtp = dm.SelectQuery(cmd);
						if (dtp.Rows.Count > 0)
						{
							nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
							cmd = "insert into Ch values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
							if (dm.ExInsertUpdateorDelete(cmd))
							{
								Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Ch") + "");
							}
							else
							{
								Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Ch") + "");
							}
						}
						else
						{
							Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Ch") + "");
						}
					}
					else
					{
						Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
					}
				}
				else
				{
					Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
				}
			}
		}*/
	}

	protected void mmbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (emmtxt.Text == "" || pmmtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Mm") + "");
		//}
		//else
		//{
		//	cmd = "select * from Mm where EmailID='" + emmtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + emmtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pmmtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + emmtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Mm values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Mm") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Mm") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Mm") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void lgnfsbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (elgnfstxt.Text == "" || plgnfstxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//}
		//else
		//{
		//	cmd = "select * from Lgnfs where EmailID='" + elgnfstxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + elgnfstxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(plgnfstxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + elgnfstxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Lgnfs values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void lgpbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (tnlgptxt.Text == "" || elgp1txt.Text == "" || elgp2txt.Text == "" || elgp3txt.Text == "" || elgp3txt.Text == "" || plgptxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//}
		//else
		//{
		//	cmd = "select * from Lgp where Team='" + tnlgptxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("TeamNameSame") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from Lgp where EmailID='" + elgp1txt.Text.ToLower().ToString() + "'";
		//		DataTable dtl1 = dm.SelectQuery(cmd);
		//		if (dtl1.Rows.Count > 0)
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("PlayerOneAlreadyParticipated") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//		}
		//		else
		//		{
		//			cmd = "select * from Lgp where EmailID='" + elgp2txt.Text.ToLower().ToString() + "'";
		//			DataTable dtl2 = dm.SelectQuery(cmd);
		//			if (dtl2.Rows.Count > 0)
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("PlayerTwoAlreadyParticipated") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//			}
		//			else
		//			{
		//				cmd = "select * from Lgp where EmailID='" + elgp3txt.Text.ToLower().ToString() + "'";
		//				DataTable dtl3 = dm.SelectQuery(cmd);
		//				if (dtl3.Rows.Count > 0)
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("PlayerThreeAlreadyParticipated") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//				}
		//				else
		//				{
		//					cmd = "select * from Lgp where EmailID='" + elgp4txt.Text.ToLower().ToString() + "'";
		//					DataTable dtl4 = dm.SelectQuery(cmd);
		//					if (dtl4.Rows.Count > 0)
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("PlayerFourAlreadyParticipated") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//					}
		//					else
		//					{
		//						cmd = "select * from SRegistration where EmailID='" + elgp1txt.Text.ToLower().ToString() + "'";
		//						DataTable dts1 = dm.SelectQuery(cmd);
		//						if (dts1.Rows.Count > 0)
		//						{
		//							cmd = "select * from SRegistration where EmailID='" + elgp2txt.Text.ToLower().ToString() + "'";
		//							DataTable dts2 = dm.SelectQuery(cmd);
		//							if (dts2.Rows.Count > 0)
		//							{
		//								cmd = "select * from SRegistration where EmailID='" + elgp3txt.Text.ToLower().ToString() + "'";
		//								DataTable dts3 = dm.SelectQuery(cmd);
		//								if (dts3.Rows.Count > 0)
		//								{
		//									cmd = "select * from SRegistration where EmailID='" + elgp4txt.Text.ToLower().ToString() + "'";
		//									DataTable dts4 = dm.SelectQuery(cmd);
		//									if (dts4.Rows.Count > 0)
		//									{
		//										if (dts1.Rows[0]["Status"].ToString() != "VERIFIED BNF" || dts2.Rows[0]["Status"].ToString() != "VERIFIED BNF" || dts3.Rows[0]["Status"].ToString() != "VERIFIED BNF" || dts4.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//										{
		//											pswrd = em.EncryptMyData(plgptxt.Text.ToString());
		//											cmd = "select * from SRegistration where EmailID='" + elgp1txt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//											DataTable dtp = dm.SelectQuery(cmd);
		//											if (dtp.Rows.Count > 0)
		//											{
		//												string player = "PLAYER 1";
		//												nm = dts1.Rows[0]["FName"].ToString() + " " + dts1.Rows[0]["LName"].ToString();
		//												cmd = "insert into Lgp values('" + dts1.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts1.Rows[0]["Department"].ToString() + "','" + dts1.Rows[0]["Branch"].ToString() + "','" + dts1.Rows[0]["Year"].ToString() + "','" + tnlgptxt.Text.ToUpper().ToString() + "','" + player + "','" + dts1.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts1.Rows[0]["College"].ToString() + "')";
		//												if (dm.ExInsertUpdateorDelete(cmd))
		//												{
		//													player = "PLAYER 2";
		//													nm = dts2.Rows[0]["FName"].ToString() + " " + dts2.Rows[0]["LName"].ToString();
		//													cmd = "insert into Lgp values('" + dts2.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts2.Rows[0]["Department"].ToString() + "','" + dts2.Rows[0]["Branch"].ToString() + "','" + dts2.Rows[0]["Year"].ToString() + "','" + tnlgptxt.Text.ToUpper().ToString() + "','" + player + "','" + dts2.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts2.Rows[0]["College"].ToString() + "')";
		//													if (dm.ExInsertUpdateorDelete(cmd))
		//													{
		//														player = "PLAYER 3";
		//														nm = dts3.Rows[0]["FName"].ToString() + " " + dts3.Rows[0]["LName"].ToString();
		//														cmd = "insert into Lgp values('" + dts3.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts3.Rows[0]["Department"].ToString() + "','" + dts3.Rows[0]["Branch"].ToString() + "','" + dts3.Rows[0]["Year"].ToString() + "','" + tnlgptxt.Text.ToUpper().ToString() + "','" + player + "','" + dts3.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts3.Rows[0]["College"].ToString() + "')";
		//														if (dm.ExInsertUpdateorDelete(cmd))
		//														{
		//															player = "PLAYER 4";
		//															nm = dts4.Rows[0]["FName"].ToString() + " " + dts4.Rows[0]["LName"].ToString();
		//															cmd = "insert into Lgp values('" + dts4.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts4.Rows[0]["Department"].ToString() + "','" + dts4.Rows[0]["Branch"].ToString() + "','" + dts4.Rows[0]["Year"].ToString() + "','" + tnlgptxt.Text.ToUpper().ToString() + "','" + player + "','" + dts4.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts4.Rows[0]["College"].ToString() + "')";
		//															if (dm.ExInsertUpdateorDelete(cmd))
		//															{
		//																Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//															}
		//															else
		//															{
		//																cmd = "delete from Lgp where Team='" + tnlgptxt.Text.ToUpper().ToString() + "'";
		//																dm.ExInsertUpdateorDelete(cmd);
		//																Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//															}
		//														}
		//														else
		//														{
		//															cmd = "delete from Lgp where Team='" + tnlgptxt.Text.ToUpper().ToString() + "'";
		//															dm.ExInsertUpdateorDelete(cmd);
		//															Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//														}
		//													}
		//													else
		//													{
		//														cmd = "delete from Lgp where Team='" + tnlgptxt.Text.ToUpper().ToString() + "'";
		//														dm.ExInsertUpdateorDelete(cmd);
		//														Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//													}
		//												}
		//												else
		//												{
		//													cmd = "delete from Lgp where Team='" + tnlgptxt.Text.ToUpper().ToString() + "'";
		//													dm.ExInsertUpdateorDelete(cmd);
		//													Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//												}
		//											}
		//											else
		//											{
		//												Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//											}
		//										}
		//										else
		//										{
		//											Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//										}
		//									}
		//									else
		//									{
		//										Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered4") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//									}
		//								}
		//								else
		//								{
		//									Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered3") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//								}
		//							}
		//							else
		//							{
		//								Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered2") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//							}
		//						}
		//						else
		//						{
		//							Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered1") + "&showevent=" + em.EncryptMyData("Lg") + "");
		//						}
		//					}
		//				}
		//			}
		//		}
		//	}
		//}
	}

	protected void wdbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (ewdtxt.Text == "" || pwdtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Wd") + "");
		//}
		//else
		//{
		//	cmd = "select * from Wd where EmailID='" + ewdtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + ewdtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pwdtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + ewdtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Wd values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Wd") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Wd") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Wd") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void osbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (eostxt.Text == "" || postxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Os") + "");
		//}
		//else
		//{
		//	if (osspchtxt.Checked == false && ostrncttxt.Checked == false && osbdttxt.Checked == false)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("ChooseAnyOne") + "&showevent=" + em.EncryptMyData("Os") + "");
		//	}
		//	cmd = "select * from Os where EmailID='" + eostxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + eostxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			string spch = "NOPE", trnct = "NOPE", dbt = "NOPE";
		//			if (osspchtxt.Checked == true)
		//				spch = "PARTICIPATED";
		//			if (ostrncttxt.Checked == true)
		//				trnct = "PARTICIPATED";
		//			if (osbdttxt.Checked == true)
		//				dbt = "PARTICIPATED";
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(postxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + eostxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Os values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + spch + "','" + trnct + "','" + dbt + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Os") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Os") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Os") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void fpbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (efptxt.Text == "" || pfptxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Fp") + "");
		//}
		//else
		//{
		//	cmd = "select * from Fp where EmailID='" + efptxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + efptxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pfptxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + efptxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Fp values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Fp") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Fp") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Fp") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void dncbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (ednctxt.Text == "" || pdnctxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Dnc") + "");
		//}
		//else
		//{
		//	cmd = "select * from Dnc where EmailID='" + ednctxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + ednctxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pdnctxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + ednctxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Dnc values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Dnc") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Dnc") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Dnc") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void sngbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (esngtxt.Text == "" || psngtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Sng") + "");
		//}
		//else
		//{
		//	cmd = "select * from Sng where EmailID='" + esngtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + esngtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(psngtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + esngtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Sng values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Sng") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Sng") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Sng") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void ptrybtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (eptrytxt.Text == "" || pptrytxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Ptry") + "");
		//}
		//else
		//{
		//	if (ptryswtxt.Checked == false && ptryfptxt.Checked == false)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("ChooseAnyOne") + "&showevent=" + em.EncryptMyData("Ptry") + "");
		//	}
		//	cmd = "select * from Ptry where EmailID='" + eptrytxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + eptrytxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			string sw = "NOPE", fp = "NOPE";
		//			if (ptryswtxt.Checked == true)
		//				sw = "PARTICIPATED";
		//			if (ptryfptxt.Checked == true)
		//				fp = "PARTICIPATED";
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pptrytxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + eptrytxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Ptry values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + sw + "','" + fp + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Ptry") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Ptry") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Ptry") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void phtgbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (ephtgtxt.Text == "" || pphtgtxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Phtg") + "");
		//}
		//else
		//{
		//	cmd = "select * from Phtg where EmailID='" + ephtgtxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + ephtgtxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pphtgtxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + ephtgtxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Phtg values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Phtg") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Phtg") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Phtg") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void rnglybtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (ernglytxt.Text == "" || prnglytxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Rngly") + "");
		//}
		//else
		//{
		//	cmd = "select * from Rngly where EmailID='" + ernglytxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + ernglytxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(prnglytxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + ernglytxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Rngly values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Rngly") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Rngly") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Rngly") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}

	protected void drmtcsbtn_Click(object sender, EventArgs e)
	{
		Response.Write("<script>alert('Participation Closed.')</script>");
		//if (edrmtcstxt.Text == "" || pdrmtcstxt.Text == "")
		//{
		//	Response.Redirect("Events?information=" + em.EncryptMyData("ShouldNotBlank") + "&showevent=" + em.EncryptMyData("Drmtcs") + "");
		//}
		//else
		//{
		//	cmd = "select * from Drmtcs where EmailID='" + edrmtcstxt.Text.ToLower().ToString() + "'";
		//	DataTable dte = dm.SelectQuery(cmd);
		//	if (dte.Rows.Count > 0)
		//	{
		//		Response.Redirect("Events?information=" + em.EncryptMyData("AlreadyParticipated") + "");
		//	}
		//	else
		//	{
		//		cmd = "select * from SRegistration where EmailID='" + edrmtcstxt.Text.ToLower().ToString() + "'";
		//		DataTable dts = dm.SelectQuery(cmd);
		//		if (dts.Rows.Count > 0)
		//		{
		//			if (dts.Rows[0]["Status"].ToString() != "VERIFIED BNF")
		//			{
		//				pswrd = em.EncryptMyData(pdrmtcstxt.Text.ToString());
		//				cmd = "select * from SRegistration where EmailID='" + edrmtcstxt.Text.ToLower().ToString() + "' and Password='" + pswrd + "'";
		//				DataTable dtp = dm.SelectQuery(cmd);
		//				if (dtp.Rows.Count > 0)
		//				{
		//					nm = dts.Rows[0]["FName"].ToString() + " " + dts.Rows[0]["LName"].ToString();
		//					cmd = "insert into Drmtcs values('" + dts.Rows[0]["EmailID"].ToString() + "','" + nm + "','" + dts.Rows[0]["Department"].ToString() + "','" + dts.Rows[0]["Branch"].ToString() + "','" + dts.Rows[0]["Year"].ToString() + "','" + dts.Rows[0]["Contact"].ToString() + "','" + DateTime.Now.ToString() + "','" + dts.Rows[0]["College"].ToString() + "')";
		//					if (dm.ExInsertUpdateorDelete(cmd))
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("ParticipatedSuccessfully") + "&showevent=" + em.EncryptMyData("Drmtcs") + "");
		//					}
		//					else
		//					{
		//						Response.Redirect("Events?information=" + em.EncryptMyData("QueryNotSubmitted") + "&showevent=" + em.EncryptMyData("Drmtcs") + "");
		//					}
		//				}
		//				else
		//				{
		//					Response.Redirect("Events?information=" + em.EncryptMyData("InvalidUserIDorPassword") + "&showevent=" + em.EncryptMyData("Drmtcs") + "");
		//				}
		//			}
		//			else
		//			{
		//				Response.Redirect("Events?information=" + em.EncryptMyData("UpdateYourProfile") + "");
		//			}
		//		}
		//		else
		//		{
		//			Response.Redirect("Events?information=" + em.EncryptMyData("NotRegistered") + "");
		//		}
		//	}
		//}
	}
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class StudentZone_Default : System.Web.UI.Page
{
    string cmd, fn, tem, fsign;
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
			fsign= Request.Cookies["emailid"].Value;
			cmd = "select * from SRegistration where EmailID='" + fsign + "'";
			DataTable dt = dm.SelectQuery(cmd);
			if (dt.Rows.Count > 0)
			{
				u1lbl.Text = "" + dt.Rows[0][2];
				uemaillbl.Text = "" + dt.Rows[0][0];
				lastloginlbl.Text = "" + dt.Rows[0]["LastLogin"];
				cmd = "select * from Os where EmailID='" + fsign + "'";
				DataTable dosk = dm.SelectQuery(cmd);
				if (dosk.Rows.Count > 0)
				{
					if (("" + dosk.Rows[0]["Speech"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Turcoat"] == "NOPE") && ("" + dosk.Rows[0]["Debate"] == "NOPE"))
						oslbl.Text = "Oratory Skills (Speech), ";
					else if (("" + dosk.Rows[0]["Speech"] == "NOPE") && ("" + dosk.Rows[0]["Turcoat"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Debate"] == "NOPE"))
						oslbl.Text = "Oratory Skills (Turncoat), ";
					else if (("" + dosk.Rows[0]["Speech"] == "NOPE") && ("" + dosk.Rows[0]["Turcoat"] == "NOPE") && ("" + dosk.Rows[0]["Debate"] == "PARTICIPATED"))
						oslbl.Text = "Oratory Skills (Debate), ";
					else if (("" + dosk.Rows[0]["Speech"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Turcoat"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Debate"] == "NOPE"))
						oslbl.Text = "Oratory Skills (Speech, Turncoat), ";
					else if (("" + dosk.Rows[0]["Speech"] == "NOPE") && ("" + dosk.Rows[0]["Turcoat"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Debate"] == "PARTICIPATED"))
						oslbl.Text = "Oratory Skills (Turncoat, Debate), ";
					else if (("" + dosk.Rows[0]["Speech"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Turcoat"] == "NOPE") && ("" + dosk.Rows[0]["Debate"] == "PARTICIPATED"))
						oslbl.Text = "Oratory Skills (Speech, Debate), ";
					else if (("" + dosk.Rows[0]["Speech"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Turcoat"] == "PARTICIPATED") && ("" + dosk.Rows[0]["Debate"] == "PARTICIPATED"))
						oslbl.Text = "Oratory Skills (ALL), ";
					else
						oslbl.Text = "";
				}
				cmd = "select * from Qz where EmailID='" + fsign + "'";
				DataTable dq = dm.SelectQuery(cmd);
				if (dq.Rows.Count > 0)
				{
					qlbl.Text = "Quiz, ";
				}
				cmd = "select * from Grft where EmailID='" + fsign + "'";
				DataTable dgrft = dm.SelectQuery(cmd);
				if (dgrft.Rows.Count > 0)
				{
					grftlbl.Text = "Graffiti, ";
				}
				cmd = "select * from Sktch where EmailID='" + fsign + "'";
				DataTable dsktch = dm.SelectQuery(cmd);
				if (dsktch.Rows.Count > 0)
				{
					sktchlbl.Text = "Sketching, ";
				}
				cmd = "select * from Pntng where EmailID='" + fsign + "'";
				DataTable dpnt = dm.SelectQuery(cmd);
				if (dpnt.Rows.Count > 0)
				{
					pntlbl.Text = "Painting, ";
				}
				cmd = "select * from Wd where EmailID='" + fsign + "'";
				DataTable dwd = dm.SelectQuery(cmd);
				if (dwd.Rows.Count > 0)
				{
					wdlbl.Text = "Web Designing, ";
				}
				cmd = "select * from Fp where EmailID='" + fsign + "'";
				DataTable dfp = dm.SelectQuery(cmd);
				if (dfp.Rows.Count > 0)
				{
					fplbl.Text = "Face Painting, ";
				}
				cmd = "select * from Dnc where EmailID='" + fsign + "'";
				DataTable ddnc = dm.SelectQuery(cmd);
				if (ddnc.Rows.Count > 0)
				{
					dnclbl.Text = "Dancing, ";
				}
				cmd = "select * from Sng where EmailID='" + fsign + "'";
				DataTable dsng = dm.SelectQuery(cmd);
				if (dsng.Rows.Count > 0)
				{
					snglbl.Text = "Singing, ";
				}
				cmd = "select * from Rngly where EmailID='" + fsign + "'";
				DataTable drng = dm.SelectQuery(cmd);
				if (drng.Rows.Count > 0)
				{
					rnglylbl.Text = "Rangoli, ";
				}
				cmd = "select * from Drmtcs where EmailID='" + fsign + "'";
				DataTable ddrm = dm.SelectQuery(cmd);
				if (ddrm.Rows.Count > 0)
				{
					drmtcslbl.Text = "Dramatics, ";
				}

				cmd = "select * from Boow where EmailID='" + fsign + "'";
				DataTable dboow = dm.SelectQuery(cmd);
				if (dboow.Rows.Count > 0)
				{
					boowlbl.Text = "Best Out of Waste, ";
				}
				cmd = "select * from Phtg where EmailID='" + fsign + "'";
				DataTable dpg = dm.SelectQuery(cmd);
				if (dpg.Rows.Count > 0)
				{
					pglbl.Text = "Photography, ";
				}
				cmd = "select * from Pptp where EmailID='" + fsign + "'";
				DataTable dppt = dm.SelectQuery(cmd);
				if (dppt.Rows.Count > 0)
				{
					pptlbl.Text = "PPT Competition, ";
				}
				cmd = "select * from Mm where EmailID='" + fsign + "'";
				DataTable dmm = dm.SelectQuery(cmd);
				if (dmm.Rows.Count > 0)
				{
					mmlbl.Text = "Model Making, ";
				}
				cmd = "select * from Lgnfs where EmailID='" + fsign + "'";
				DataTable dnfs = dm.SelectQuery(cmd);
				if (dnfs.Rows.Count > 0)
				{
					nfslbl.Text = "LAN Gaming (NFS), ";
				}
				cmd = "select * from Lgp where EmailID='" + fsign + "'";
				DataTable dlgp = dm.SelectQuery(cmd);
				if (dlgp.Rows.Count > 0)
				{
					lgplbl.Text = "LAN Gaming (PUBG), ";
				}

				//*******************
				//Lan gaming section
				//********************

				cmd = "select * from Th where EmailID='" + fsign + "'";
				DataTable dth = dm.SelectQuery(cmd);
				if (dth.Rows.Count > 0)
				{
					thlbl.Text = "Treasure Hunt, ";
				}
				cmd = "select * from Dv where EmailID='" + fsign + "'";
				DataTable ddv = dm.SelectQuery(cmd);
				if (ddv.Rows.Count > 0)
				{
					dvlbl.Text = "Documentary Videos, ";
				}
				cmd = "select * from Ch where EmailID='" + fsign + "'";
				DataTable dch = dm.SelectQuery(cmd);
				if (dch.Rows.Count > 0)
				{
					chlbl.Text = "Code Hunt, ";
				}
				cmd = "select * from Ptry where EmailID='" + fsign + "'";
				DataTable dpo = dm.SelectQuery(cmd);
				if (dpo.Rows.Count > 0)
				{
					if ("" + dpo.Rows[0]["SelfWritten"] == "PARTICIPATED" && "" + dpo.Rows[0]["FamousPoet"] == "NOPE")
						plbl.Text = "Poetry (Self Written), ";
					else if ("" + dpo.Rows[0]["SelfWritten"] == "NOPE" && "" + dpo.Rows[0]["FamousPoet"] == "PARTICIPATED")
						plbl.Text = "Poetry (Famous Poet's), ";
					else if ("" + dpo.Rows[0]["SelfWritten"] == "PARTICIPATED" && "" + dpo.Rows[0]["FamousPoet"] == "PARTICIPATED")
						plbl.Text = "Poetry (ALL), ";
					else
						plbl.Text = "";
				}
				cmd = "select * from Ws where EmailID='" + fsign + "'";
				DataTable dws = dm.SelectQuery(cmd);
				if (dws.Rows.Count > 0)
				{
					if ("" + dws.Rows[0]["Poetry"] == "PARTICIPATED" && "" + dws.Rows[0]["Article"] == "NOPE" && "" + dws.Rows[0]["Drama"] == "NOPE")
						wslbl.Text = "Writing Skills (Poetry), ";
					else if ("" + dws.Rows[0]["Poetry"] == "NOPE" && "" + dws.Rows[0]["Article"] == "PARTICIPATED" && "" + dws.Rows[0]["Drama"] == "NOPE")
						wslbl.Text = "Writing Skills (Article), ";
					else if ("" + dws.Rows[0]["Poetry"] == "NOPE" && "" + dws.Rows[0]["Article"] == "NOPE" && "" + dws.Rows[0]["Drama"] == "PARTICIPATED")
						wslbl.Text = "Writing Skills (Drama), ";
					else if ("" + dws.Rows[0]["Poetry"] == "PARTICIPATED" && "" + dws.Rows[0]["Article"] == "PARTICIPATED" && "" + dws.Rows[0]["Drama"] == "NOPE")
						wslbl.Text = "Writing Skills (Poetry, Article), ";
					else if ("" + dws.Rows[0]["Poetry"] == "NOPE" && "" + dws.Rows[0]["Article"] == "PARTICIPATED" && "" + dws.Rows[0]["Drama"] == "PARTICIPATED")
						wslbl.Text = "Writing Skills (Article, Drama), ";
					else if ("" + dws.Rows[0]["Poetry"] == "PARTICIPATED" && "" + dws.Rows[0]["Article"] == "NOPE" && "" + dws.Rows[0]["Drama"] == "PARTICIPATED")
						wslbl.Text = "Writing Skills (Poetry, Drama), ";
					else if ("" + dws.Rows[0]["Poetry"] == "PARTICIPATED" && "" + dws.Rows[0]["Article"] == "PARTICIPATED" && "" + dws.Rows[0]["Drama"] == "PARTICIPATED")
						wslbl.Text = "Writing Skills (ALL), ";
					else
						wslbl.Text = "";
				}
				
			}
			else
			{
				Response.Redirect("Student_Login");
			}
		}
		

        
    }
    //--------------------------------------------------------------------registration for events-------------------------------------------------------------------
    //**************************************************************************************************************************************************************
	


    //**********************************************************************De registration************************************************************
    //*************************************************************************************************************************************************



    protected void subderegevbtn_Click(object sender, EventArgs e)
    {
        if (deregevdrpdwn.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select any event for cancel Your Application for that event.')</script>");
        }
        else
        {
            if (deregevdrpdwn.SelectedValue == "Best Out of Waste")
            {
                cmd = "select * from Boow where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Boow where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Best Out of Waste.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Documentary Video")
            {
                cmd = "select * from Dv where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Dv where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Documentary Video.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "PPT Presentation")
            {
                cmd = "select * from Pptp where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Pptp where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for PPT Presentation.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Treasure Hunt")
            {
                cmd = "select * from Th where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Th where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for PPT Treasure Hunt.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Writing Skills (ALL)")
            {
                cmd = "select * from Ws where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Ws where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Writing Skills.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Graffiti")
            {
                cmd = "select * from Grft where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Grft where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Graffiti.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Quiz")
            {
                cmd = "select * from Qz where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Qz where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Quiz.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Sketching")
            {
                cmd = "select * from Sktch where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Sktch where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Sketching.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Painting")
            {
                cmd = "select * from Pnt where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Pnt where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Painting.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Code Hunt")
            {
                cmd = "select * from Ch where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Ch where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Code Hunt.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Model Making")
            {
                cmd = "select * from Mm where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Mm where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Model Making.')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "LAN Gaming (NFS)")
            {
                cmd = "select * from Lgnfs where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Lgnfs where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for LAN Gaming (NFS).')</script>");
                }
            }
            else if (deregevdrpdwn.SelectedValue == "Web Designing")
            {
                cmd = "select * from Wd where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Wd where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Web Designing.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Oratory Skills (ALL)")
            {
                cmd = "select * from Os where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Os where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Oratory Skills.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Face Painting")
            {
                cmd = "select * from Fp where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Fp where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Face Painting.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Dancing")
            {
                cmd = "select * from Dnc where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Dnc where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Dancing.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Singing")
            {
                cmd = "select * from Sng where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Sng where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Singing.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Poetry (ALL)")
            {
                cmd = "select * from Ptry where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Ptry where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Poetry (ALL).')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Photography")
            {
                cmd = "select * from Phtg where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Phtg where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Photography.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Rangoli")
            {
                cmd = "select * from Rngly where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Rngly where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Rangoli.')</script>");
                }
            }
			else if (deregevdrpdwn.SelectedValue == "Dramatics")
            {
                cmd = "select * from Drmtcs where EmailID='" + fsign + "'";
                DataTable dst = dm.SelectQuery(cmd);
                if (dst.Rows.Count > 0)
                {
                    cmd = "delete from Drmtcs where EmailID='" + fsign + "'";
                    dm.ExInsertUpdateorDelete(cmd);
                    Response.Redirect("Student_Home");
                }
                else
                {
                    Response.Write("<script>alert('Dont Worry, You are not register for Dramatics.')</script>");
                }
            }

        }
    }

    protected void subquerybtn_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + fsign + "'";
        DataTable ds = dm.SelectQuery(cmd);
        fn = "" + ds.Rows[0][1] + " " + ds.Rows[0][2];
        if (querytxt.Text == "")
            Response.Write("<script>alert('Please Enter your Query.')</script>");
        else
        {
            cmd = "insert into Query(Name,EmailID,Query,QDate,ClgName) values('" + fn + "','" + ds.Rows[0][0] + "','" + querytxt.Text.ToString() + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
            if (dm.ExInsertUpdateorDelete(cmd) == true)
            {
                Response.Write("<script>alert('Send Successfully')</script>");
                querytxt.Text = "";
            }
            else
                Response.Write("<script>alert('Something went wrong, please try again. Thank You.')</script>");
        }
    }

    protected void subfdbkbtn_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + fsign + "'";
        DataTable ds = dm.SelectQuery(cmd);
        fn = "" + ds.Rows[0][1] + " " + ds.Rows[0][2];
        if (fdbktxt.Text == "")
            Response.Write("<script>alert('Please Enter your Feedback.')</script>");
        else
        {
            cmd = "insert into Feedback(Name,EmailID,Feedback,FDate,ClgName) values('" + fn + "','" + ds.Rows[0][0] + "','" + fdbktxt.Text.ToString() + "','" + DateTime.Now.ToString() + "','" + ds.Rows[0][12] + "')";
            if (dm.ExInsertUpdateorDelete(cmd) == true)
            {
                Response.Write("<script>alert('Send Successfully')</script>");
                fdbktxt.Text = "";
            }
            else
                Response.Write("<script>alert('Something went wrong, please try again. Thank You.')</script>");
        }
    }

    protected void btnmagfile_Click(object sender, EventArgs e)
    {
        cmd = "select * from Registration where EmailID='" + fsign + "'";
        DataTable dt = dm.SelectQuery(cmd);
        if(dt.Rows.Count>0)
        {
            string name = dt.Rows[0][1].ToString() + " " + dt.Rows[0][2].ToString();
            cmd = "insert into Magazine values('" + dt.Rows[0][0].ToString() + "','" + name + "','" + dt.Rows[0][5].ToString() + "','" + dt.Rows[0][6].ToString() + "','" + dt.Rows[0][7].ToString() + "','" + dt.Rows[0][0].ToString() + "_" + magfile.FileName + "','" + DateTime.Now.ToString() + "')";
            if(dm.ExInsertUpdateorDelete(cmd))
            {
                magfile.SaveAs(Server.MapPath("../MagazineFiles/" + dt.Rows[0][0].ToString() + "_" + magfile.FileName));
                Response.Redirect("Student_Home");
            }
            else
            {
                Response.Write("<script>alert('Something went wrong, please try again. Thank You.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Unauthorized access.')</script>");
        }
        
    }
	
}
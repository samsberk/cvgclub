using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_AdminHome : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string scmd;
        scmd = "select * from SRegistration";
        DataTable dt = dm.SelectQuery(scmd);
        regno.Text = "" + dt.Rows.Count;

        scmd = "select * from Boow";
        DataTable dos = dm.SelectQuery(scmd);
        boowlbl.Text = "" + dos.Rows.Count;

		scmd = "select * from Dv";
        DataTable dspchos = dm.SelectQuery(scmd);
        dvlbl.Text = "" + dspchos.Rows.Count;

        scmd = "select * from Pptp";
        DataTable dq = dm.SelectQuery(scmd);
        pptplbl.Text = "" + dq.Rows.Count;

        scmd = "select * from Th";
        DataTable dpg = dm.SelectQuery(scmd);
        thlbl.Text = "" + dpg.Rows.Count;

        scmd = "select * from Ws";
        DataTable dppt = dm.SelectQuery(scmd);
        wslbl.Text = "" + dppt.Rows.Count;

        scmd = "select * from Grft";
        DataTable dmm = dm.SelectQuery(scmd);
        grftlbl.Text = "" + dmm.Rows.Count;

        scmd = "select * from Qz";
        DataTable dnfs = dm.SelectQuery(scmd);
        qzlbl.Text = "" + dnfs.Rows.Count;

        scmd = "select * from Sktch";
        DataTable dcslan = dm.SelectQuery(scmd);
        sktchlbl.Text = "" + dcslan.Rows.Count;

        scmd = "select * from Pntng";
        DataTable dth = dm.SelectQuery(scmd);
        pntlbl.Text = "" + dth.Rows.Count;

        scmd = "select * from Ch";
        DataTable ddv = dm.SelectQuery(scmd);
        chlbl.Text = "" + ddv.Rows.Count;

        scmd = "select * from Mm";
        DataTable dch = dm.SelectQuery(scmd);
        mmlbl.Text = "" + dch.Rows.Count;

        scmd = "select * from Lgnfs";
        DataTable daa = dm.SelectQuery(scmd);
        lgnfslbl.Text = "" + daa.Rows.Count;

        scmd = "select * from Lgp";
        DataTable daask = dm.SelectQuery(scmd);
        lgplbl.Text = "" + daask.Rows.Count;

        scmd = "select * from Wd";
        DataTable daabw = dm.SelectQuery(scmd);
        wdlbl.Text = "" + daabw.Rows.Count;

        scmd = "select * from Os";
        DataTable daafp = dm.SelectQuery(scmd);
        oslbl.Text = "" + daafp.Rows.Count;

        scmd = "select * from Fp";
        DataTable daar = dm.SelectQuery(scmd);
        fplbl.Text = "" + daar.Rows.Count;

        scmd = "select * from Dnc";
        DataTable dp = dm.SelectQuery(scmd);
        dnclbl.Text = "" + dp.Rows.Count;

        scmd = "select * from Sng";
        DataTable dpsw = dm.SelectQuery(scmd);
        snglbl.Text = "" + dpsw.Rows.Count;

        scmd = "select * from Ptry";
        DataTable dpfp = dm.SelectQuery(scmd);
        ptrylbl.Text = "" + dpfp.Rows.Count;

        scmd = "select * from Phtg";
        DataTable dws = dm.SelectQuery(scmd);
        phtglbl.Text = "" + dws.Rows.Count;

        scmd = "select * from Rngly";
        DataTable dwsp = dm.SelectQuery(scmd);
        rnglylbl.Text = "" + dwsp.Rows.Count;

        scmd = "select * from Drmtcs";
        DataTable dwspa = dm.SelectQuery(scmd);
        drmtcslbl.Text = "" + dwspa.Rows.Count;
		
    }
	

    protected void btnsendmail_Click(object sender, EventArgs e)
    {
        if (tomail.Text == "" || submail.Text == "" || msgmail.Text == "")
        {
            Response.Write("<script>alert('Fill the text first')</script>");
        }
        else
        {
            bool x = mm.SendMail(tomail.Text, submail.Text, msgmail.Text);
            if (x == true)
            {
                Response.Write("<script>alert('Successfully sent.')</script>");
                tomail.Text = "";
                submail.Text = "";
                msgmail.Text = "";
            }
            else
                Response.Write("<script>alert('Could not sent.')</script>");
        }
    }

    protected void delregbtn_Click(object sender, EventArgs e)
    {
        string cmd;
        cmd = "delete from SRegistration where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Registration where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Boow where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Dv where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Pptp where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Th where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Ws where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Grft where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Qz where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Sktch where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Pntng where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Ch where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Mm where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Lgnfs where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from Lgp where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Wd where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Os where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Fp where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
        cmd = "delete from Dnc where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from Sng where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from Ptry where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from Phtg where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from Rngly where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);
		cmd = "delete from Drmtcs where EmailID='" + delregtxt.Text.ToString().ToLower() + "'";
        dm.ExInsertUpdateorDelete(cmd);

        Response.Redirect("Admin_Home");
    }
}
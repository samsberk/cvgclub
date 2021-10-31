using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

/// <summary>
/// Summary description for SMSSender
/// </summary>
public class SMSSender
{
	string mysenderid, myuserid, myscode;
	public SMSSender()
	{
		mysenderid = "SignUp";
		myuserid = "mayankshivam";
		myscode = "123456";

	}
	public bool sendsms(string mobno, string msg)
	{

		string api = "http://198.15.103.106/API/pushsms.aspx?loginID="+myuserid+"&password="+myscode+"&mobile="+mobno+"&text="+msg+"&senderid="+mysenderid+"&route_id=1&Unicode=0";
		WebClient wc = new WebClient();
		try
		{
			wc.DownloadString(api);
			return true;
		}
		catch
		{
			return false;
		}
	}
}
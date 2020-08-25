using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class SearchBot : UserClass
{
	public SearchBot(string userName)
        : base(userName)
	{
		
	}

    public string BuildQueryString(int zip, int range, string type, string make, string model, int year)
    {

        string strQry;

        strQry = "select * from profileproperty";

        return strQry;
    }
}
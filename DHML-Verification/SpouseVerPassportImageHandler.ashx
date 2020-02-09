<%@ WebHandler Language="C#" Class="SpouseVerPassportImageHandler" %>

using System;
using System.Web;

public class SpouseVerPassportImageHandler: IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["SpouseVerImageByte"]) != null)
        {
            byte[] SpouseVerImage= (byte[])(context.Session["SpouseVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(SpouseVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
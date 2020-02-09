<%@ WebHandler Language="C#" Class="DeathCertVerImageHandler" %>

using System;
using System.Web;

public class DeathCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["DeathCertVerImageByte"]) != null)
        {
            byte[] DeathCertVerImage = (byte[])(context.Session["DeathCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(DeathCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
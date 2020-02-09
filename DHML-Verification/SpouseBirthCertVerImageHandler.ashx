<%@ WebHandler Language="C#" Class="SpouseBirthCertVerImageHandler" %>

using System;
using System.Web;

public class SpouseBirthCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["SpouseBirthCertVerImageByte"]) != null)
        {
            byte[] SpouseBirthCertVerImage = (byte[])(context.Session["SpouseBirthCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(SpouseBirthCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
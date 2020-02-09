<%@ WebHandler Language="C#" Class="Child3BirthCertVerImageHandler" %>

using System;
using System.Web;

public class Child3BirthCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child3BirthCertVerImageByte"]) != null)
        {
            byte[] Child3BirthCertVerImage = (byte[])(context.Session["Child3BirthCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child3BirthCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
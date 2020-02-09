<%@ WebHandler Language="C#" Class="Child2BirthCertVerImageHandler" %>

using System;
using System.Web;

public class Child2BirthCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child2BirthCertVerImageByte"]) != null)
        {
            byte[] Child2BirthCertVerImage = (byte[])(context.Session["Child2BirthCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child2BirthCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
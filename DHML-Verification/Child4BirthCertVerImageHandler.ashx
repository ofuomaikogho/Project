<%@ WebHandler Language="C#" Class="Child4BirthCertVerImageHandler" %>

using System;
using System.Web;

public class Child4BirthCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child4BirthCertVerImageByte"]) != null)
        {
            byte[] Child4BirthCertVerImage = (byte[])(context.Session["Child4BirthCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child4BirthCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
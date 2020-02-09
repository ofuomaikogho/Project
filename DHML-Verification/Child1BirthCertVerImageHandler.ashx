<%@ WebHandler Language="C#" Class="Child1BirthCertVerImageHandler" %>

using System;
using System.Web;

public class Child1BirthCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child1BirthCertVerImageByte"]) != null)
        {
            byte[] Child1BirthCertVerImage = (byte[])(context.Session["Child1BirthCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child1BirthCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
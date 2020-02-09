<%@ WebHandler Language="C#" Class="Child1VerPassportImageHandler" %>

using System;
using System.Web;

public class Child1VerPassportImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child1VerImageByte"]) != null)
        {
            byte[] Child1VerImage = (byte[])(context.Session["Child1VerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child1VerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
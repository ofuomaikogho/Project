<%@ WebHandler Language="C#" Class="EnroleePassportImageHandler" %>

using System;
using System.Web;

public class EnroleePassportImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["EnroleeImageByte"]) != null)
        {
            byte[] EnroleeImage = (byte[])(context.Session["EnroleeImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(EnroleeImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
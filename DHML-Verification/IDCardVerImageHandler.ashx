<%@ WebHandler Language="C#" Class="IDCardVerImageHandler" %>

using System;
using System.Web;

public class IDCardVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["IDCardVerImageByte"]) != null)
        {
            byte[] IDCardVerImage = (byte[])(context.Session["IDCardVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(IDCardVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
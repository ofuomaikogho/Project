<%@ WebHandler Language="C#" Class="MarriageCertVerImageHandler" %>

using System;
using System.Web;

public class MarriageCertVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["MarriageCertVerImageByte"]) != null)
        {
            byte[] MarriageCertVerImage = (byte[])(context.Session["MarriageCertVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(MarriageCertVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
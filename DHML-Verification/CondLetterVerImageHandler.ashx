<%@ WebHandler Language="C#" Class="CondLetterVerImageHandler" %>

using System;
using System.Web;

public class CondLetterVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["CondLetterVerImageByte"]) != null)
        {
            byte[] CondLetterVerImage = (byte[])(context.Session["CondLetterVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(CondLetterVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
<%@ WebHandler Language="C#" Class="NoKinLetterVerImageHandler" %>

using System;
using System.Web;

public class NoKinLetterVerImageHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["NoKinLetterVerImageByte"]) != null)
        {
            byte[] NoKinLetterVerImage = (byte[])(context.Session["NoKinLetterVerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(NoKinLetterVerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
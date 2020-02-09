<%@ WebHandler Language="C#" Class="Child4VerPassportImageHandler" %>

using System;
using System.Web;

public class Child4VerPassportImageHandler: IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child4VerImageByte"]) != null)
        {
            byte[] Child4VerImage= (byte[])(context.Session["Child4VerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child4VerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
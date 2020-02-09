<%@ WebHandler Language="C#" Class="Child2VerPassportImageHandler" %>

using System;
using System.Web;

public class Child2VerPassportImageHandler: IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child2VerImageByte"]) != null)
        {
            byte[] Child2VerImage= (byte[])(context.Session["Child2VerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child2VerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
<%@ WebHandler Language="C#" Class="Child3VerPassportImageHandler" %>

using System;
using System.Web;

public class Child3VerPassportImageHandler: IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        //Checking whether the imagebytes variable have anything else not doin anything
        if ((context.Session["Child3VerImageByte"]) != null)
        {
            byte[] Child3VerImage= (byte[])(context.Session["Child3VerImageByte"]);
            context.Response.ContentType = "image/JPEG";
            context.Response.BinaryWrite(Child3VerImage);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
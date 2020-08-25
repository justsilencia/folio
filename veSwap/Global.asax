<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">
    
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        // RegisterRoutes(RouteTable.Routes);
    }
    
    static void RegisterRoutes(RouteCollection routes)
    {
        //routes.MapPageRoute("SubmitRating", "SubmitRating", "~/MyProfile/SubmitRating.aspx");
        //routes.MapPageRoute("Landing", "veSwap", "~/Landing.aspx");
        //routes.MapPageRoute("EditProfile", "EditProfile", "~/EditProfile.aspx");
        //routes.MapPageRoute("VeSearch", "VeSearch", "~/Search/SearchHome.aspx");
        //routes.MapPageRoute("ProfileHomeParam", "ProfileHome/{user}/{var1}", "~/MyProfile/MyProfile.aspx");
        //routes.MapPageRoute("ProfileHome", "ProfileHome/{user}", "~/MyProfile/MyProfile.aspx");
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>

<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<$rootnamespace$.Models.Home.IndexModel>" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
        
        <title>Elmah plugin for Glimpse</title>
        <script src="<%: Url.Content("~/Scripts/jquery-1.6.2.min.js") %>" type="text/javascript"></script>
        <script src="<%: Url.Content("~/Glimpse.axd?r=Pager&resource=Pager") %>" type="text/javascript"></script>

    </head>

    <body>
        
        <% using (Html.BeginForm("Index", "Home")) { %>
            <fieldset>
                <p>
                    <%: Html.DropDownListFor(m => m.ExceptionTypeToThrow, new SelectList(Model.ExceptionTypes, "FullName", "Name")) %>
                </p>
            </fieldset>

            <br />

            <input type="submit" value="Throw" />
        <% } %>

    </body>

</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Import Namespace="WebApplication1.Services" %>
<%@ Import Namespace="WebApplication1.Services.Models" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                var info = new UserInfo();
                info.firstname = Request.Form["firstname"];
                info.lastname = Request.Form["lastname"];
                info.dob =DateTime.Parse(Request.Form["dob"]);
                info.education = Request.Form["education"];
                info.gender = Request.Form["gender"];
                info.address = Request.Form["address"];


                var service = new UserRegistationService();
                service.Add(info);


            %>

            <%="<h1>Your Response SuccessFully Inserted ..!</h1>" %>
        </div>
    </form>
</body>
</html>
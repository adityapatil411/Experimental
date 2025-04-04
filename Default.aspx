<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="PartyStyle.css" rel="stylesheet" />
    <style type="text/css">
        .container {
            width: 403px;
        }
    </style>
</head>
<body>
    <form id="resform" method="post" action="Default.aspx" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <div class="container">
            <label>Your name:</label> <input type="text" name="gname" id="name" runat="server"/><br />
            <label>Your email:</label><input type="email" name="mail" id="email" runat="server"/><br />
            <label>Your phone number:</label><input type="number" name="phno" id="phone" runat="server"/><br />
            
            <label>Will you attend?</label>
            <select id="willattend" name="D1" runat="server">
                <option value="">Choose option below</option>
                <option value="true">Yes</option>
                <option value="false">No</option>
            </select>
            <button type="submit">Submit</button>
        </div>
        </form>
    </body>
</html>

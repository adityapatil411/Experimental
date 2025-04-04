<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="WebApplication1.Summary" %>
<%@ Import Namespace="WebApplication1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <h2>Summary</h2>
        <h3>People Attending</h3>
        <table>
            <thead>
                <tr>
                    <th>
                        Name
                    </th>
                    <th>
                        email
                    </th>
                    <th>
                        Phone
                    </th>
                </tr>
            </thead>
            <tbody>
                <%var yesData = RespRepo.GetRepo().GetResponses().Where(r => r.WillAttend.HasValue && r.WillAttend.Value);
                    foreach(var rsvp in yesData)
                    {
                        Response.Write(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>", rsvp.Name, rsvp.Email, rsvp.Phone));
                    }
                %>
            </tbody>
        </table>

        <h3>People who are not attending</h3>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Mail</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
                <%=GetNoShow() %>
            </tbody>
        </table>
        <form runat="server" id="form1">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Check me" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true"/> <br />
            <br />
            <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            <asp:BulletedList ID="BulletedList1" runat="server" SelectMethod="someBullets"></asp:BulletedList>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="textbox_method" AutoPostBack="true"></asp:TextBox>
             
            <div id="label1"></div>

            <asp:Button ID="Button1" runat="server" Text="Click me" Height="100px" Width="100px" OnClick="Button1_Click" />
        </form>
    </div>
    <script type="text/javascript">
        var txt = document.querySelector('#TextBox1');
        txt.addEventListener('input', () => {
            document.querySelector('#label1').innerHTML = txt.value;
            console.log(txt.value);
        })
        txt.addEventListener('load', () => {
            document.querySelector('#label1').innerHTML = txt.value;
            console.log(txt.value);
        })
    </script>
</body>
</html>

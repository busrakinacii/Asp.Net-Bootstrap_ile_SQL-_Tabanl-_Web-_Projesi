<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="UdemyWeb.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 790px;
        }
        .auto-style2 {
            color: #FFFFFF;
            margin-bottom: 0px;
        }
        .auto-style3 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style4 {
            width: 210px;
            height: 165px;
        }
        .newStyle1 {
            font-family: "Arial Black";
        }
        .newStyle2 {
            font-family: "Curlz MT";
        }
        .newStyle3 {
            font-family: Algerian;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="background-image: url('image/photo.jpg')">
        <div style="width: 700px; margin: auto">
            <br />
            <h2 style="text-align: center; margin-left: auto; margin-right: auto; margin-top: auto;" class="auto-style2"><span class="newStyle3">Udemy Web Ögrenci Not Sistemi</span></h2>
            <br />
            <div style="margin: auto; text-align: center">
                <img src="image/image.png" class="auto-style4" />
            </div>
            <br />
            <div>
                <strong>
                <asp:Label for="TxtNumara" runat="server" Style="margin-top: 10px" CssClass="auto-style3">KULLANICI ADI</asp:Label>
                </strong>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Style="margin-top: 15px"></asp:TextBox>
            </div>
            <br />
            <div>
                <strong>
                <asp:Label for="TxtSifre" runat="server" Style="margin-top: 10px" CssClass="auto-style3">ŞİFRE</asp:Label>
                </strong>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Style="margin-top: 15px" TextMode="Password"></asp:TextBox>
            </div>

            <strong>

            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" Style="margin-top: 15px; font-weight: bold;" OnClick="Button1_Click" />
         
            <asp:Button ID="Button2" runat="server" Text="İptal Et" CssClass="btn btn-danger" Width="200px" Style="margin-top: 15px; font-weight: bold;" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" Style="margin-top: 15px; font-weight: bold;" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" Style="margin-top: 15px; font-weight: bold;"  />
            </strong>
        </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="UdemyWeb.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Numara</asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Ad Soyad</asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Mail</asp:TextBox>
            </div>

            <div>
                <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Telefon</asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Şifre</asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="TxtCinsiyet" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Cinsiyet</asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="TxtFoto" runat="server" CssClass="form-control" Style="margin-top: 20px" Enabled="false">Fotograf</asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-primary" Style="margin-top: 10px" OnClick="Button1_Click"/>

        </div>

    </form>

</asp:Content>

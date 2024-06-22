<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="UdemyWeb.OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtOgrAd" runat="server" Style="margin-top: 10px">Öğrenci Adı</asp:Label>
                <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrSoyad" runat="server" Style="margin-top: 10px">Öğrenci Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrTel" runat="server" Style="margin-top: 10px">Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="TxtOgrTel" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrMail" runat="server" Style="margin-top: 10px">Öğrenci Mail</asp:Label>
                <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrSifre" runat="server" Style="margin-top: 10px">Öğrenci Şifre</asp:Label>
                <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrFoto" runat="server" Style="margin-top: 10px">Öğrenci Fotoğraf Linki</asp:Label>
                <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="KAYDET" CssClass="btn btn-info" Style="margin-top: 10px" OnClick="Button1_Click"/>


        </div>

    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="UdemyWeb.OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Style="margin-top: 20px" Enable="False">Numara</asp:TextBox>
            </div>

            <div>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Style="margin-top: 20px">Şifre</asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="TxtSifreTekrar" runat="server" CssClass="form-control" Style="margin-top: 20px">Şifre Tekrar</asp:TextBox>
            </div>


            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" Style="margin-top: 10px" OnClick="Button1_Click" />

        </div>

    </form>

</asp:Content>

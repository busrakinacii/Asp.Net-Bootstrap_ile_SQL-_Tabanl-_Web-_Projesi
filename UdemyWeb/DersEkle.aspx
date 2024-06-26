<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="UdemyWeb.DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">

            <div>
                <asp:Label for="TxtDersAd" runat="server" Style="margin-top: 10px">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>


            <asp:Button ID="Button1" runat="server" Text="DERS EKLE" CssClass="btn btn-info" Style="margin-top: 10px" OnClick="Button1_Click" />
        </div>

    </form>

</asp:Content>

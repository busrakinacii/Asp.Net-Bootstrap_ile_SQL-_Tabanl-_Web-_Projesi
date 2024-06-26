<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="UdemyWeb.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtDersID" runat="server" Style="margin-top: 10px">Ders ID</asp:Label>
                <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control" Style="margin-top: 5px" Enabled="false"></asp:TextBox>
            </div>
        
            <div>
                <asp:Label for="TxtDersAd" runat="server" Style="margin-top: 10px">Ders Ad</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" Style="margin-top: 10px" OnClick="Button1_Click"/>

        </div>

    </form>



</asp:Content>

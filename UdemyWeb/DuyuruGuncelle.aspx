<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="UdemyWeb.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtDuyuruID" runat="server" Style="margin-top: 10px">Duyuru ID</asp:Label>
                <asp:TextBox ID="TxtDuyuruID" runat="server" CssClass="form-control" Style="margin-top: 5px" Enabled="false"></asp:TextBox>
            </div>
           <%-- <div>
                <asp:Label for="DrpDuyuruOgretmen" runat="server" Style="margin-top: 10px">Duyuru Öğretmen</asp:Label>
                <asp:DropDownList ID="DrpDuyuruOgretmen" runat="server" CssClass="form-control" Enabled="false"></asp:DropDownList>
            </div>--%>
            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server" Style="margin-top: 10px">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtAreaDuyuruIcerik" runat="server" Style="margin-top: 10px">Duyuru İçerik</asp:Label>
                <textarea id="TxtAreaDuyuruIcerik" runat="server" cols="20" rows="6" class="form-control"></textarea>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" Style="margin-top: 10px" OnClick="Button1_Click" />

        </div>

    </form>


</asp:Content>

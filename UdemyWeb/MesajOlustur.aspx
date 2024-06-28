<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="UdemyWeb.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtMesajGonderen" runat="server" Style="margin-top: 10px">Gönderen</asp:Label>
                <asp:TextBox ID="TxtMesajGonderen" runat="server" CssClass="form-control" Style="margin-top: 5px" Enabled="false"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtMesajAlici" runat="server" Style="margin-top: 10px">Alıcı</asp:Label>
                <asp:TextBox ID="TxtMesajAlici" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtMesajBaslik" runat="server" Style="margin-top: 10px">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtAreaMesajIcerik" runat="server" Style="margin-top: 10px">Mesaj İçerik</asp:Label>
                <textarea id="TxtAreaMesajIcerik" runat="server" cols="20" rows="6" class="form-control"></textarea>
            </div>

            <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" Style="margin-top: 10px" OnClick="BtnGonder_Click" />
        </div>

    </form>

</asp:Content>

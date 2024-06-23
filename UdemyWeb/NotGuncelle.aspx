<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="UdemyWeb.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <div class="form-group">
     
            <div>
                <asp:Label for="TxtDersAd" runat="server" Style="margin-top: 10px">Ders AD</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrID" runat="server" Style="margin-top: 10px">Öğrenci ID</asp:Label>
                <asp:TextBox ID="TxtOgrID" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server" Style="margin-top: 10px">Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>

            <div>
                <asp:Label for="TxtSinav1" runat="server" Style="margin-top: 10px">Sınav 1</asp:Label>
                <asp:TextBox ID="TxtSinav1" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtSinav2" runat="server" Style="margin-top: 10px">Sınav 2</asp:Label>
                <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtSinav3" runat="server" Style="margin-top: 10px">Sınav 3</asp:Label>
                <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtOrtalama" runat="server" Style="margin-top: 10px">Ortalama</asp:Label>
                <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtDurum" runat="server" Style="margin-top: 10px">Durum</asp:Label>
                <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control" Style="margin-top: 5px"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="HESAPLA" CssClass="btn btn-info" Style="margin-top: 20px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="GÜNCELLE" CssClass="btn btn-primary" Style="margin-top: 20px" OnClick="Button2_Click" />
        </div>

    </form>


</asp:Content>

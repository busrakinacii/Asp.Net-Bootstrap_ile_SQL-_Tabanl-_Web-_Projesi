<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesajlar.aspx.cs" Inherits="UdemyWeb.GidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">ALICI</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TARİH</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <itemtemplate>
                    <tr>
                        <td><%#Eval("MESAJID") %></td>
                        <td><%#Eval("ALICI") %></td>
                        <td><%#Eval("BASLIK") %></td>
                        <td><%#Eval("ICERIK") %></td>
                        <td><%#Eval("TARIH") %></td>
                        <%-- <td>

                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/DuyuruSil.aspx?DUYURUID="+Eval("DUYURUID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink>
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/DuyuruGuncelle.aspx?DUYURUID="+Eval("DUYURUID") %>' CssClass="btn btn-success">Güncelle</asp:HyperLink>
                     </td>--%>
                    </tr>
                </itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>


</asp:Content>

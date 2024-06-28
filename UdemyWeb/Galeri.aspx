<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="UdemyWeb.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    
                    <th scope="col">ÖĞRENCİ</th>
                    <th scope="col">NUMARA</th>
                    <th scope="col">RESİM</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>


                            <td><%#Eval("OGRAD ") %>  <%#Eval("OGRSOYAD") %></td>
                             <td><%#Eval("NUMARA ") %></td>
                            <td>
                                <img alt="Foto" src="<%#Eval("OGRFOTOGRAF") %>" class="img-thumbnail" width="100" height="100" /></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

    </form>

</asp:Content>

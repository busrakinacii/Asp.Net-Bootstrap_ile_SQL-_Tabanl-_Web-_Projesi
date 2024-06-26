<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="UdemyWeb.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 19px;
            width: 530px;
            text-align: center;
        }
        .auto-style3 {
            width: 530px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        &nbsp;<table class="table table-bordered table-hover">
            <tr>
                <td class="auto-style2">
                    <asp:Chart ID="Chart1" runat="server" Width="530px" BorderlineColor="Black" Height="338px" Palette="Light">
                        <series>
                            <asp:Series Name="Dersler" ChartArea="ChartArea1" Color="Transparent" IsValueShownAsLabel="True" Legend="Legend1" Palette="Grayscale">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Legends>
                            <asp:Legend BackColor="Silver" BackGradientStyle="Center" BackImageTransparentColor="Silver" BackSecondaryColor="Gray" BorderColor="224, 224, 224" Font="Microsoft Sans Serif, 8pt, style=Bold" IsTextAutoFit="False" Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title BackColor="Gray" BackGradientStyle="Center" BackImageTransparentColor="Silver" BackSecondaryColor="LightGray" BorderColor="Gray" Font="Microsoft Sans Serif, 12pt, style=Bold" Name="Title1" Text="Öğrencilerin Toplam Ders Alma Grafiği">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:Chart ID="Chart2" runat="server" Width="530px" Palette="Grayscale">
                        <series>
                            <asp:Series Name="DersAd" ChartType="Doughnut">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Titles>
                            <asp:Title BackColor="Gray" BackGradientStyle="Center" BorderColor="ControlDarkDark" Font="Microsoft Sans Serif, 12pt, style=Bold" Name="Title1" Text="Öğretmen Branş Grafiği">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Chart ID="Chart3" runat="server" Width="530px" Enabled="False" Palette="Grayscale">
                        <series>
                            <asp:Series Name="Cinsiyet" ChartType="Pie" IsValueShownAsLabel="True" IsXValueIndexed="True" Legend="Erkek-Kız">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Legends>
                            <asp:Legend BorderColor="Silver" Font="Microsoft Sans Serif, 11.25pt, style=Bold" IsTextAutoFit="False" Name="Erkek-Kız" Title="Erkek Kız Dağılımı" TitleBackColor="Transparent">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title BackColor="Silver" BackGradientStyle="Center" BackImageTransparentColor="Black" BackSecondaryColor="Gray" BorderColor="Black" DockingOffset="1" Font="Microsoft Sans Serif, 12pt, style=Bold" Name="Title1" ShadowColor="Black" Text="ERKEK KIZ DAĞILIMI">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart4" runat="server" Width="530px" Palette="Grayscale">
                        <series>
                            <asp:Series Name="Notlar" BackGradientStyle="DiagonalRight" BackHatchStyle="DarkUpwardDiagonal" BorderColor="Silver" ChartArea="ChartArea1" ChartType="Bar" CustomProperties="PointWidth=0.5" Font="Microsoft Sans Serif, 8.25pt, style=Bold" Label="#VAL" LabelForeColor="DimGray" MarkerSize="12" YValuesPerPoint="12">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                        <Legends>
                            <asp:Legend Font="Microsoft Sans Serif, 9pt, style=Bold" IsTextAutoFit="False" Name="Legend1" ShadowColor="Silver">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title BackColor="64, 64, 64" BackGradientStyle="Center" BackImageTransparentColor="Silver" BorderColor="DimGray" Font="Microsoft Sans Serif, 11.25pt, style=Bold" Name="Title1" Text="Matemetik Dersini Alan Öğrencilerin İlk Sınav Grafiği">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Анимация прыжка" CodeBehind="Jump.aspx.cs" Inherits="WebApplication2.Jump" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="jump" runat="server">Анимация прыжка</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="jump1" runat="server">
                        В этой анимации достаточно двух кадров: начального положения и конечного. Лучше эту анимацию не зацикливать,
                        чтобы всё выглядело красиво. Потом просто при приземлении переключить анимацию на любую другую нужную.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="jumpImg1" onmouseover="zoomImg(true, 'jumpImg1', 20);" onmouseout="zoomImg(false, 'jumpImg1', 20);" src="/img/Jump/jumpAnimation1.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="jumpImg2" onmouseover="zoomImg(true, 'jumpImg2', 20);" onmouseout="zoomImg(false, 'jumpImg2', 20);" src="/img/Jump/jumpAnimation2.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <a runat="server" href="~/CrouchWalk.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <a runat="server" href="~/Somersault.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Анимация режима присев игрового персонажа" CodeBehind="CrouchIdle.aspx.cs" Inherits="WebApplication2.CrouchIdle" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table HorizontalAlign="Center" runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="crouchIdle" runat="server">Анимация режима присев игрового персонажа</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="crouchIdle1" runat="server">
                        В этой анимации так же, как в анимации спокойного состояния персонаж не двигается, он находится в спокойном состоянии.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="crouchIdleImg" onmouseover="zoomImg(true, 'crouchIdleImg', 20);" onmouseout="zoomImg(false, 'crouchIdleImg', 20);" src="/img/CrouchIdle/crouchIdleAnimation.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <a runat="server" href="~/Run.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell>
                    <a runat="server" href="~/CrouchWalk.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
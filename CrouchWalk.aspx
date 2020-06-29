<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Анимация ходьбы в режиме присев" CodeBehind="CrouchWalk.aspx.cs" Inherits="WebApplication2.CrouchWalk" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="crouchWalk" runat="server">Анимация ходьбы в режиме присев</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="crouchWalk1" runat="server">
                        Эта анимация похожа на анимацию обычной ходьбы, только если вы просто сделаете так анимацию,
                        персонаж будет висеть в воздухе, потому что его коллайдер не изменяется при изменении структуры игрока.
                        Если поднять ноги, коллайдер будет такой же высоты, что и если ноги опущены. Для того, чтобы это исправить,
                        нужно в анимацию добавить элемент коллайдер и его свойства центр по координате ‘y’ и/или высоту и подстроить
                        так, чтобы персонаж мог полностью находиться на земле.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="crouchWalkImg1" onmouseover="zoomImg(true, 'crouchWalkImg1', 20);" onmouseout="zoomImg(false, 'crouchWalkImg1', 20);" src="/img/CrouchWalk/crouchWalkAnimation1.png" style="width: 100%" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="crouchWalkImg2" onmouseover="zoomImg(true, 'crouchWalkImg2', 20);" onmouseout="zoomImg(false, 'crouchWalkImg2', 20);" src="/img/CrouchWalk/crouchWalkAnimation2.png" style="width: 100%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="crouchWalkImg3" onmouseover="zoomImg(true, 'crouchWalkImg3', 20);" onmouseout="zoomImg(false, 'crouchWalkImg3', 20);" src="/img/CrouchWalk/crouchWalkAnimation3.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <a runat="server" href="~/CrouchIdle.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <a runat="server" href="~/Jump.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Анимация кувырка" CodeBehind="Somersault.aspx.cs" Inherits="WebApplication2.Somersault" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="somersault" runat="server">Анимация кувырка</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="somersault1" runat="server">
                        Анимация кувырка самая сложная из всех перечисленных выше анимаций. Здесь нужно всё детально отобразить каждое действие,
                        перемещение и вращение каждой части тела персонажа, и чтобы он не выпал под землю.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="somersaultImg1" onmouseover="zoomImg(true, 'somersaultImg1', 20);" onmouseout="zoomImg(false, 'somersaultImg1', 20);" src="/img/Somersault/somersaultAnimation1.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="somersaultImg2" onmouseover="zoomImg(true, 'somersaultImg2', 20);" onmouseout="zoomImg(false, 'somersaultImg2', 20);" src="/img/Somersault/somersaultAnimation2.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="somersaultImg3" onmouseover="zoomImg(true, 'somersaultImg3', 20);" onmouseout="zoomImg(false, 'somersaultImg3', 20);" src="/img/Somersault/somersaultAnimation3.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="somersaultImg4" onmouseover="zoomImg(true, 'somersaultImg4', 20);" onmouseout="zoomImg(false, 'somersaultImg4', 20);" src="/img/Somersault/somersaultAnimation4.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="somersaultImg5" onmouseover="zoomImg(true, 'somersaultImg5', 20);" onmouseout="zoomImg(false, 'somersaultImg5', 20);" src="/img/Somersault/somersaultAnimation5.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="somersaultImg6" onmouseover="zoomImg(true, 'somersaultImg6', 20);" onmouseout="zoomImg(false, 'somersaultImg6', 20);" src="/img/Somersault/somersaultAnimation6.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="somersaultImg7" onmouseover="zoomImg(true, 'somersaultImg7', 20);" onmouseout="zoomImg(false, 'somersaultImg7', 20);" src="/img/Somersault/somersaultAnimation7.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="somersaultImg8" onmouseover="zoomImg(true, 'somersaultImg8', 20);" onmouseout="zoomImg(false, 'somersaultImg8', 20);" src="/img/Somersault/somersaultAnimation8.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="somersaultImg9" onmouseover="zoomImg(true, 'somersaultImg9', 20);" onmouseout="zoomImg(false, 'somersaultImg9', 20);" src="/img/Somersault/somersaultAnimation9.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="somersault2" runat="server">
                        В 0:50 и 0:55 я отдельно добавил, чтобы персонаж не провалился под землю.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <a runat="server" href="~/Jump.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <a runat="server" href="~/LinkAndPlay.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
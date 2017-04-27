<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPages/SecurityMasterPage.master" AutoEventWireup="true" CodeFile="Modulo.aspx.cs" Inherits="Administration_Modulo_Modulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <h1>Modulo</h1>
        <div class="breadcrumb greenContainer">
            <a href="../Default.aspx" class="whiteText">Inicio</a>
            / <a href="ListaModulos.aspx" class="whiteText">Lista</a>
            
        </div>
        <div>
            <h2>
                <asp:Literal runat="server" ID="tituloLiteral" /></h2>
            <asp:Panel runat="server" ID="RegistroEditarPanel">
                <div>Id:</div>
                <asp:TextBox runat="server" Enabled="false" ID="Id_Txt" CssClass="form-control" />
            </asp:Panel>
            <div>Area:</div>
            <asp:DropDownList runat="server" ID="Area_Cbx" CssClass="form-control"></asp:DropDownList>
            <div>Descripcion:</div>
            <asp:TextBox runat="server" ID="Descripcion_Txt" CssClass="form-control" />
        </div>
        <div>
            <asp:Button Text="Guardar" runat="server" ID="GuardarBtn" OnClick="GuardarBtn_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />


             <asp:Button href="ListaModulos.aspx" runat="server" Text="Cancelar" CssClass="btn btn-info btn-fill btn-wd boton-registro" />

            
        </div>
    </div>

</asp:Content>


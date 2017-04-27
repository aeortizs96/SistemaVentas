<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPages/SecurityMasterPage.master" AutoEventWireup="true" CodeFile="Acceso.aspx.cs" Inherits="Administration_Acceso_Acceso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <h1>Acceso</h1>
        <div class="breadcrumb greenContainer">
            <a href="ListaAccesos.aspx" class="whiteText">Lista</a>
            / Area
        </div>
        <h2>
            <asp:Literal runat="server" ID="tituloLiteral" /></h2>
        <div>
            <asp:Panel runat="server" ID="RegistroEditarPanel">
                <div>Id:</div>
                <asp:TextBox runat="server" Enabled="false" ID="Id_Txt" CssClass="form-control" />
                <div>Usuario:</div>
                <asp:TextBox runat="server" Enabled="false" ID="Usuario_Txt" CssClass="form-control" />
                <div>Contrasena:</div>
                <asp:TextBox runat="server" Enabled="false" ID="Contrasena_Txt" CssClass="form-control" />
            </asp:Panel>
            <div>
                <div>Modulos:</div>
                <asp:GridView runat="server" ID="ListaModulos_GV" CssClass="table table-striped whiteContainer" AutoGenerateColumns="false" OnRowDataBound="ListaModulos_GV_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Asignar">
                            <ItemTemplate>
                                <asp:HiddenField runat="server" ID="ModuloIdHF" Value='<%# Eval("ModuloId") %>' />
                                <asp:CheckBox runat="server" ID="Modulo_CheckBox" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="AreaId" HeaderText="Area" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div>
            <asp:Button Text="Guardar" runat="server" ID="GuardarBtn" OnClick="GuardarBtn_Click" CssClass="btn btn-primary" />
            <a href="ListaAccesos.aspx" class="btn btn-danger">Cancelar</a>
        </div>
    </div>

</asp:Content>


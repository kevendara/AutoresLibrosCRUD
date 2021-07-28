<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2 align="center">AUTORES</h2>
        <br />
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_autores" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" OnClientClick="return confirm('Seguro desea eliminar ? ');" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id_autores" HeaderText="id_autores" SortExpression="id_autores" />
                <asp:BoundField DataField="autor_uno_nombre" HeaderText="autor_uno_nombre" SortExpression="autor_uno_nombre" />
                <asp:BoundField DataField="autor_dos_nombre" HeaderText="autor_dos_nombre" SortExpression="autor_dos_nombre" />
                <asp:BoundField DataField="autor_tres_nombre" HeaderText="autor_tres_nombre" SortExpression="autor_tres_nombre" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="delete_autores_sp" InsertMethod="insertar_autores_sp" SelectMethod="lista_autores" TypeName="Servicios.Biblioteca.WebService" UpdateMethod="actualizar_autores_sp">
            <DeleteParameters>
                <asp:Parameter Name="id_autores" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="autor_uno_nombre" Type="String" />
                <asp:Parameter Name="autor_dos_nombre" Type="String" />
                <asp:Parameter Name="autor_tres_nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_autores" Type="Int32" />
                <asp:Parameter Name="autor_uno_nombre" Type="String" />
                <asp:Parameter Name="autor_dos_nombre" Type="String" />
                <asp:Parameter Name="autor_tres_nombre" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <Fields>
                <asp:BoundField DataField="id_autores" HeaderText="id_autores" SortExpression="id_autores" Visible="False" />
                <asp:BoundField DataField="autor_uno_nombre" HeaderText="autor_uno_nombre" SortExpression="autor_uno_nombre" />
                <asp:BoundField DataField="autor_dos_nombre" HeaderText="autor_dos_nombre" SortExpression="autor_dos_nombre" />
                <asp:BoundField DataField="autor_tres_nombre" HeaderText="autor_tres_nombre" SortExpression="autor_tres_nombre" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
        <br />
        <h2 align="center">LIBROS</h2>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_libro" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" OnClientClick="return confirm('Seguro desea eliminar ? ');" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id_libro" HeaderText="id_libro" SortExpression="id_libro" />
                <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                <asp:BoundField DataField="id_autores" HeaderText="id_autores" SortExpression="id_autores" />
                <asp:BoundField DataField="editorial" HeaderText="editorial" SortExpression="editorial" />
                <asp:BoundField DataField="fecha_publicacion" HeaderText="fecha_publicacion" SortExpression="fecha_publicacion" />
                <asp:BoundField DataField="idioma" HeaderText="idioma" SortExpression="idioma" />
                <asp:BoundField DataField="numero_paginas" HeaderText="numero_paginas" SortExpression="numero_paginas" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="delete_libro_sp" InsertMethod="insertar_libros_sp" SelectMethod="lista_libros" TypeName="Servicios.Biblioteca.WebService" UpdateMethod="actualizar_libros_sp">
            <DeleteParameters>
                <asp:Parameter Name="id_libro" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="titulo" Type="String" />
                <asp:Parameter Name="id_autores" Type="Int32" />
                <asp:Parameter Name="editorial" Type="String" />
                <asp:Parameter Name="fecha_publicacion" Type="String" />
                <asp:Parameter Name="idioma" Type="String" />
                <asp:Parameter Name="numero_paginas" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_libro" Type="Int32" />
                <asp:Parameter Name="titulo" Type="String" />
                <asp:Parameter Name="id_autores" Type="Int32" />
                <asp:Parameter Name="editorial" Type="String" />
                <asp:Parameter Name="fecha_publicacion" Type="String" />
                <asp:Parameter Name="idioma" Type="String" />
                <asp:Parameter Name="numero_paginas" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="ObjectDataSource2" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id_libro" HeaderText="id_libro" SortExpression="id_libro" Visible="False" />
                <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                <asp:BoundField DataField="id_autores" HeaderText="id_autores" SortExpression="id_autores" />
                <asp:BoundField DataField="editorial" HeaderText="editorial" SortExpression="editorial" />
                <asp:BoundField DataField="fecha_publicacion" HeaderText="fecha_publicacion" SortExpression="fecha_publicacion" />
                <asp:BoundField DataField="idioma" HeaderText="idioma" SortExpression="idioma" />
                <asp:BoundField DataField="numero_paginas" HeaderText="numero_paginas" SortExpression="numero_paginas" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="Complex_Property_In_Template" %>

<%-- BeginRegion Page setup --%>
<%@ Register Assembly="DevExpress.Web.v13.1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to show a complex property value in a column's DataItemTemplate</title>
</head>
<body>
    <form id="form1" runat="server">

        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Width="1000px" AutoGenerateColumns="False" EnableRowsCache="false"
            DataSourceID="ObjectDataSource1" KeyFieldName="Id">
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="Id" VisibleIndex="0" Width="10%">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Name" VisibleIndex="1" Width="30%">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Address" VisibleIndex="2" Caption="Street" Width="30%">
                    <DataItemTemplate>
                        <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Text='<%#Eval("Address.Street")%>' Width="100%"></dxe:ASPxTextBox>
                    </DataItemTemplate>
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn Caption="City" FieldName="Address" VisibleIndex="3" Width="33%">
                    <DataItemTemplate>
                        <dxe:ASPxTextBox ID="ASPxTextBox2" runat="server" Text='<%#Eval("Address.City")%>' Width="100%"></dxe:ASPxTextBox>
                    </DataItemTemplate>
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
        </dxwgv:ASPxGridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectData" TypeName="Person">
        </asp:ObjectDataSource>
    </form>
</body>
</html>
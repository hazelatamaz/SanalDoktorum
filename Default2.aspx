<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="Black" 
                    Text="&amp; Belirtilerinizi Seçiniz : " Font-Bold="True" 
                    Font-Names="Comic Sans MS" Font-Size="Medium"></asp:Label>
                <br />
            </td>
       </tr>
</table>
    <div  style="height: 200px; overflow: auto">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="belirti_Adi" 
            DataValueField="belirti_Adi">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString2 %>" 
            SelectCommand="SELECT [belirti_Adi] FROM [belirti]"></asp:SqlDataSource>
    </div>
    &nbsp;&nbsp;<table style="width: 100%">
        <tr>
            <td style="height: 128px">

    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Seçtiğiniz Belirtiler" BackColor="#474747" ForeColor="White" 
                    BorderStyle="None" Font-Names="Comic Sans MS" Font-Underline="False" 
                    Height="30px" Width="170px" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#474747" ForeColor="White" 
                    onclick="Button3_Click1" Text="Yeni Belirtiler" Width="164px" 
                    BorderStyle="None" Font-Names="Comic Sans MS" Height="30px" 
                    CausesValidation="False" />
                <br />
                <br />
  

    <asp:ListBox ID="ListBox1" runat="server" BackColor="#CCCCCC" Width="495px" 
                    onselectedindexchanged="ListBox1_SelectedIndexChanged" 
                    DataTextField="belirti_Adi" DataValueField="belirti_Adi" ForeColor="Black"></asp:ListBox>
  

                &nbsp;&nbsp;&nbsp;<br />
                <asp:Label ID="Label4" runat="server" Font-Names="Comic Sans MS" 
                    Text="Seçtiğiniz belirtiyi silmek istermisiniz ?"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#CCCCCC" BorderColor="White" 
                    BorderStyle="None" CausesValidation="False" EnableTheming="True" 
                    Font-Names="Comic Sans MS" onclick="Button4_Click" Text="Evet" Width="53px" />
                &nbsp;&nbsp;
  

            </td>
        </tr>
        <tr>
            <td style="height: 69px">
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Olası Hastalık Durumunuz" BackColor="#474747" ForeColor="White" 
                    Width="183px" BorderStyle="None" Font-Names="Comic Sans MS" 
                    Height="30px" CausesValidation="False" />
  

    &nbsp;
  

                <br />
                <br />
               
       <asp:ListBox ID="ListBox2" runat="server" BackColor="#CCCCCC"
                    onselectedindexchanged="ListBox2_SelectedIndexChanged" 
                    Width="495px" Height="70px" style="margin-top: 7px"></asp:ListBox>
                   
            </td>
        </tr>
    </table>
    <br />
    &nbsp;<asp:Button ID="Button5" runat="server" CausesValidation="False" 
        onclick="Button5_Click" 
        Text="Seçilen hastalık belirtilerini görmek için tıklayın" BackColor="#474747" 
        BorderStyle="None" Font-Names="Comic Sans MS" ForeColor="White" Height="30px" 
        Width="312px" />
    <br />
    <br />
    &nbsp;<asp:ListBox ID="ListBox3" runat="server" Width="495px" 
        BackColor="#CCCCCC"></asp:ListBox>
    <br />
&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp; 
  

    </asp:Content>


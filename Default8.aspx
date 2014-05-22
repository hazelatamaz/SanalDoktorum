<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder8" Runat="Server" >
    <p>
        <a style="font-family: 'Comic Sans MS'">Hoşgeldin Admin :)</a></p>
    <p>
       <a style="font-family: 'Comic Sans MS'"> Yapmak istediğiniz işlemi seçiniz :</a></p>
    <p>
        &gt;&gt;<asp:LinkButton ID="kayıtEkle_btn" runat="server" CausesValidation="False" 
            onclick="kayıtEkle_btn_Click">Kayıt Ekle</asp:LinkButton>
</p>
    <p>
        &gt;&gt;<asp:LinkButton ID="kayıtSil_btn" runat="server" CausesValidation="False" 
            onclick="kayıtSil_btn_Click">Kayıt Sil</asp:LinkButton>
</p>
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
            &nbsp; <a style="font-family: 'Comic Sans MS'">
                *Hastalık numarasını seçiniz : </a>
                <br />
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" BackColor="#515151" 
                    DataSourceID="SqlDataSource2" DataTextField="hastalik_Adi" 
                    DataValueField="hastalik_ID" ForeColor="White" Height="20px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="259px">
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="sil1_btn" runat="server" CausesValidation="False" 
                    onclick="sil1_btn_Click" Text="Sil" Width="76px" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString %>" 
                    SelectCommand="SELECT [hastalik_ID], [hastalik_Adi] FROM [hastalik]">
                </asp:SqlDataSource>
                <br />
&nbsp; <a style="font-family: 'Comic Sans MS'">*Belirti İsmini seçiniz :</a><br /> &nbsp;<asp:DropDownList 
                    ID="DropDownList2" runat="server" BackColor="#515151" 
                    DataSourceID="SqlDataSource9" DataTextField="belirti_Adi" 
                    DataValueField="belirti_ID" ForeColor="White" Height="20px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="259px">
                </asp:DropDownList>
                &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="sil2_btn" runat="server" CausesValidation="False" 
                    onclick="sil2_btn_Click" Text="Sil" Width="76px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString %>" 
                    SelectCommand="SELECT * FROM [belirti]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server"><a style="font-family: 'Comic Sans MS'">
                Hastalık Tablosu:</a>&nbsp;<div style="height: 148px; overflow: auto; background-color: #F7F7F7;">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource4" 
                        onselectedindexchanged="ListView1_SelectedIndexChanged">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">Hastalık Numarası :
                                <asp:Label ID="hastalik_IDLabel" runat="server" 
                                    Text='<%# Eval("hastalik_ID") %>' />
                                <br />
                                Hastalık Adı :
                                <asp:Label ID="hastalik_AdiLabel" runat="server" 
                                    Text='<%# Eval("hastalik_Adi") %>' />
                                <br />
                                Başvurulacak Uzmanlık Alanı :
                                <asp:Label ID="gidilecek_bolumLabel" runat="server" 
                                    Text='<%# Eval("gidilecek_bolum") %>' />
                                <br />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">Hastalık Numarası :
                                <asp:TextBox ID="hastalik_IDTextBox" runat="server" 
                                    Text='<%# Bind("hastalik_ID") %>' />
                                <br />
                                Hastalık Adı :
                                <asp:TextBox ID="hastalik_AdiTextBox" runat="server" 
                                    Text='<%# Bind("hastalik_Adi") %>' />
                                <br />
                                Başvurulacak Uzmanlık Alanı :
                                <asp:TextBox ID="gidilecek_bolumTextBox" runat="server" 
                                    Text='<%# Bind("gidilecek_bolum") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                    Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">Hastalık Numarası :
                                <asp:TextBox ID="hastalik_IDTextBox0" runat="server" 
                                    Text='<%# Bind("hastalik_ID") %>' />
                                <br />
                                Hastalık Adı :
                                <asp:TextBox ID="hastalik_AdiTextBox0" runat="server" 
                                    Text='<%# Bind("hastalik_Adi") %>' />
                                <br />
                                Başvurulacak Uzmanlık Alanı :
                                <asp:TextBox ID="gidilecek_bolumTextBox0" runat="server" 
                                    Text='<%# Bind("gidilecek_bolum") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                    Text="Insert" />
                                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" 
                                    Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">Hastalık Numarası :
                                <asp:Label ID="hastalik_IDLabel0" runat="server" 
                                    Text='<%# Eval("hastalik_ID") %>' />
                                <br />
                                Hastalık Adı :
                                <asp:Label ID="hastalik_AdiLabel0" runat="server" 
                                    Text='<%# Eval("hastalik_Adi") %>' />
                                <br />
                                Başvurulacak Uzmanlık Alanı :
                                <asp:Label ID="gidilecek_bolumLabel0" runat="server" 
                                    Text='<%# Eval("gidilecek_bolum") %>' />
                                <br />
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul ID="itemPlaceholderContainer" runat="server" 
                                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Hastalık 
                                Numarası :
                                <asp:Label ID="hastalik_IDLabel1" runat="server" 
                                    Text='<%# Eval("hastalik_ID") %>' />
                                <br />
                                Hastalık Adı :
                                <asp:Label ID="hastalik_AdiLabel1" runat="server" 
                                    Text='<%# Eval("hastalik_Adi") %>' />
                                <br />
                                Başvurulacak Uzmanlık Alanı :
                                <asp:Label ID="gidilecek_bolumLabel1" runat="server" 
                                    Text='<%# Eval("gidilecek_bolum") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString %>" 
                        SelectCommand="SELECT [hastalik_ID], [hastalik_Adi], [gidilecek_bolum] FROM [hastalik]">
                    </asp:SqlDataSource>
                </div>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td height="10px" style="font-family: 'comic Sans MS';" bgcolor="#F7F7F7" 
                            width="191px">
                            Hastalık Numarası :
                        </td>
                        <td bgcolor="#F7F7F7">
                            <asp:TextBox ID="TextBox3" runat="server" Width="219px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="10px" style="font-family: 'comic Sans MS';" bgcolor="#F7F7F7" 
                            width="191px">
                            Hastalık Adı :</td>
                        <td bgcolor="#F7F7F7">
                            <asp:TextBox ID="TextBox6" runat="server" Width="219px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: 'comic Sans MS';" bgcolor="#F7F7F7" width="191px">
                            Başvurulacak Uzmanlık Alanı :&nbsp;&nbsp;</td>
                        <td style="height: 10px" bgcolor="#F7F7F7">
                            <asp:TextBox ID="TextBox7" runat="server" Width="219px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ekle_btn1" runat="server" Text="Ekle" Width="89px" 
                                CausesValidation="False" onclick="ekle_btn1_Click" />
                            &nbsp;</td>
                    </tr>
                </table><a style="font-family: 'Comic Sans MS'">
                Belirti Tablosu:</a><br /> <br />
                <div style="height: 148px; overflow: auto; background-color: #F7F7F7;">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFF8DC;">Belirti ID :
                            <asp:Label ID="belirti_IDLabel" runat="server" 
                                Text='<%# Eval("belirti_ID") %>' />
                            <br />
                            Belirti Adı :
                            <asp:Label ID="belirti_AdiLabel" runat="server" 
                                Text='<%# Eval("belirti_Adi") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #008A8C;color: #FFFFFF;">Belirti ID :
                            <asp:TextBox ID="belirti_IDTextBox" runat="server" 
                                Text='<%# Bind("belirti_ID") %>' />
                            <br />
                            Belirti Adı :
                            <asp:TextBox ID="belirti_AdiTextBox" runat="server" 
                                Text='<%# Bind("belirti_Adi") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">Belirti ID :
                            <asp:TextBox ID="belirti_IDTextBox" runat="server" 
                                Text='<%# Bind("belirti_ID") %>' />
                            <br />
                            Belirti Adı :
                            <asp:TextBox ID="belirti_AdiTextBox" runat="server" 
                                Text='<%# Bind("belirti_Adi") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #DCDCDC;color: #000000;">Belirti ID :
                            <asp:Label ID="belirti_IDLabel" runat="server" 
                                Text='<%# Eval("belirti_ID") %>' />
                            <br />
                            Belirti Adı :
                            <asp:Label ID="belirti_AdiLabel" runat="server" 
                                Text='<%# Eval("belirti_Adi") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul ID="itemPlaceholderContainer" runat="server" 
                            style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Belirti ID :
                            <asp:Label ID="belirti_IDLabel" runat="server" 
                                Text='<%# Eval("belirti_ID") %>' />
                            <br />
                            Belirti Adı :
                            <asp:Label ID="belirti_AdiLabel" runat="server" 
                                Text='<%# Eval("belirti_Adi") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString %>" 
                    SelectCommand="SELECT [belirti_ID], [belirti_Adi] FROM [belirti]">
                </asp:SqlDataSource>
                </div>
                <br />
                <table style="width: 100%; font-family: 'Comic Sans MS';">
                    <tr>
                        <td bgcolor="#F7F7F7" style="height: 10px" width="191px">
                            Belirti ID :</td>
                        <td style="width: 323px; height: 10px" bgcolor="#F7F7F7">
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox8" runat="server" Width="219px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#F7F7F7" height="10px" width="191px">
                            Belirti Adı :</td>
                        <td style="width: 323px" bgcolor="#F7F7F7">
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox9" runat="server" Width="219px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ekle_btn2" runat="server" CausesValidation="False" 
                                onclick="ekle_btn2_Click" Text="Ekle" Width="89px" />
                        </td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td><a style="font-family: 'Comic Sans MS'">
                            Belirti Adı ve Hastalık Adını Seçiniz :</a><br />
                            <br />
                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                DataSourceID="SqlDataSource7" DataTextField="belirti_Adi" 
                                DataValueField="belirti_ID" Height="25px" Width="380px" 
                                BackColor="#515151" ForeColor="White">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString %>" 
                                SelectCommand="SELECT * FROM [belirti]"></asp:SqlDataSource>
                            &nbsp;<br />
                            <br />
                            <asp:DropDownList ID="DropDownList4" runat="server" 
                                DataSourceID="SqlDataSource8" DataTextField="hastalik_Adi" 
                                DataValueField="hastalik_ID" Height="25px" Width="380px" 
                                BackColor="#515151" ForeColor="White">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SanalDoktorumConnectionString %>" 
                                SelectCommand="SELECT [hastalik_ID], [hastalik_Adi] FROM [hastalik]">
                            </asp:SqlDataSource>
                            <table style="width: 102%">
                                <tr>
                                    <td bgcolor="#F7F7F7">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="birlestir_btn" runat="server" CausesValidation="False" 
                                            onclick="birlestir_btn_Click" Text="Birleştir" Width="89px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:View>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:MultiView>
</p>
</asp:Content>


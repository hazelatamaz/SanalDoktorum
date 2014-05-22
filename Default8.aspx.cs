using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class Default8 : System.Web.UI.Page
{
    Class1 op = new Class1();
    SqlConnection cnnStr = new SqlConnection("Data Source=.;Initial Catalog=SanalDoktorum;Integrated Security=true;");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void kayıtEkle_btn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

    }
    protected void kayıtSil_btn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string command = "select hastalik_Adi from hastalik where hastalik_ID ='" + DropDownList1.SelectedValue + "'";
        //table = op.SelectTable(command);
        //for (int i = 0; i < table.Rows.Count; i++)
        //{
        //    for (int j = 0; j < table.Columns.Count; j++)
        //    {
        //        Label4.Text = table.Rows[i][j].ToString();
        //    }
        //}
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string command = "select belirti_Adi from belirti where belirti_ID ='" + DropDownList2.SelectedValue + "'";
        //table = op.SelectTable(command);
        //for (int i = 0; i < table.Rows.Count; i++)
        //{
        //    for (int j = 0; j < table.Columns.Count; j++)
        //    {
        //        Label5.Text = table.Rows[i][j].ToString();
        //    }
        //}
    }
    protected void sil1_btn_Click(object sender, EventArgs e)
    {
        int SatirSayisi = op.runCommand("DELETE FROM hastalik Where hastalik_ID=" + DropDownList1.SelectedValue + "");
        int SatirSayisi2 = op.runCommand("DELETE FROM belirti_hastalik Where hastalik_ID=" + DropDownList1.SelectedValue + "");
        if (SatirSayisi > 0 || SatirSayisi2 >0)
        {  
           Response.Write("<script>alert('Silme işlemi başarılıdır...')</script>");
        }
        else
            Response.Write("<script>alert('Silme işlemi başarısız ! ')</script>");
    }
    protected void sil2_btn_Click(object sender, EventArgs e)
    {
        int SatirSayisi = op.runCommand("DELETE FROM belirti Where belirti_ID='" + DropDownList2.SelectedValue + "'");
        int SatirSayisi2 = op.runCommand("DELETE FROM belirti_hastalik Where belirti_ID='" + DropDownList2.SelectedValue + "'");
        if (SatirSayisi > 0 || SatirSayisi2 >0)
        {
            Response.Write("<script>alert('Silme işlemi başarılıdır...')</script>");
        }
        else
            Response.Write("<script>alert('Silme işlemi başarısız ! ')</script>");
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void ekle_btn1_Click(object sender, EventArgs e)
    {
        string command = "insert into hastalik Values(" + TextBox3.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "')";
        int count;
        count = op.runCommand(command);
        if (count == -1)
            Response.Write("<script>alert('Ekleme işlemi başarısız ! ')</script>");
            
        else
            Response.Write("<script>alert('Ekleme işlemi başarılıdır...')</script>");
            
    }
    protected void ekle_btn2_Click(object sender, EventArgs e)
    {
        string command = "insert into belirti Values('"+ TextBox8.Text + "','" + TextBox9.Text + "')";
        int count;
        count = op.runCommand(command);
        if (count == -1)
            Response.Write("<script>alert('Ekleme işlemi başarısız ! ')</script>");
        else
            Response.Write("<script>alert('Ekleme işlemi başarılıdır...')</script>");

    }
    protected void birlestir_btn_Click(object sender, EventArgs e)
    {
        string command = "insert into belirti_hastalik Values('" + DropDownList3.SelectedValue +
                "'," + DropDownList4.SelectedValue + ")";
        int count;
        count = op.runCommand(command);
        if (count == -1)
            Response.Write("<script>alert('Birleştirme işlemi başarısız ! ')</script>");
        else
            Response.Write("<script>alert('Birleştirme işlemi başarılıdır...')</script>");
    }
}
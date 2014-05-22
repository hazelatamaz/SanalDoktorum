using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;


public partial class Default2 : System.Web.UI.Page
{
    Class1 op = new Class1();
    SqlConnection cnnStr = new SqlConnection("Data Source=.;Initial Catalog=SanalDoktorum;Integrated Security=true;");
    DataTable table;

    protected void Button1_Click(object sender, EventArgs e)
    {

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected == true)
            {
                ListBox1.Items.Add(CheckBoxList1.Items[i].Text);
                CheckBoxList1.Items[i].Selected = false;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            string command = "select hastalik_Adi from hastalik where hastalik_ID in(select belirti_hastalik.hastalik_ID from belirti_hastalik where belirti_ID in(select belirti.belirti_ID from belirti where belirti_Adi='" + ListBox1.Items[i].Text + "'))";
            table = op.SelectTable(command);
            for (int k = 0; k < table.Rows.Count; k++)
            {
                for (int j = 0; j < table.Columns.Count; j++)
                {   
                    //ListBox2.Items.Add(""+ListBox1.Items[i].ToString()+"-->"+table.Rows[k][j].ToString());
                    ListBox2.Items.Add(table.Rows[k][j].ToString());
                }
            }
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        ListBox2.Items.Clear();
        ListBox3.Items.Clear();
    }
  
    
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Remove(ListBox1.SelectedItem.ToString());
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button5_Click(object sender, EventArgs e)
    {   
                string command = "select belirti_Adi from belirti where belirti_ID in(select belirti_hastalik.belirti_ID from belirti_hastalik where hastalik_ID in(select hastalik.hastalik_ID from hastalik where hastalik_Adi='" + ListBox2.SelectedItem.ToString() + "'))";
                table = op.SelectTable(command);
                for (int k = 0; k < table.Rows.Count; k++)
                {
                    for (int j = 0; j < table.Columns.Count; j++)
                    {
                     
                         ListBox3.Items.Add("*"+table.Rows[k][j].ToString());
                         
                    }
                }
            }
  }

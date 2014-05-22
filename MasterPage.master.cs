using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Class1 op = new Class1();
    SqlConnection cnnStr = new SqlConnection("Data Source=.;Initial Catalog=SanalDoktorum;Integrated Security=true;");
    DataTable table;
    DataTable table2;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void aktar(List<string> array, List<string> array2)
    {
        string command = "select admin_kullaniciAdi from admin_giris";
        string command2 = "select admin_sifre from admin_giris";
        table = op.SelectTable(command);
        table2 = op.SelectTable(command2);
        for (int k = 0; k < table.Rows.Count; k++)
        {
            for (int j = 0; j < table.Columns.Count; j++)
            {
                array.Add(table.Rows[k][j].ToString());
                array2.Add(table2.Rows[k][j].ToString());
            }
        }
    }
    protected void giris_btn_Click(object sender, EventArgs e)
    {
        List<string> array = new List<string>();
        List<string> array2 = new List<string>();
        aktar(array, array2);

        for (int i = 0; i < array.Count; i++)
        {
            if (TextBox1.Text == array[i] && TextBox2.Text == array2[i])
            {
                Response.Redirect("Default8.aspx?");
            }
            else
                Label3.Text = "Hatalı Giriş!";

        }
    }

    protected void cıkıs_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?");
    }
}


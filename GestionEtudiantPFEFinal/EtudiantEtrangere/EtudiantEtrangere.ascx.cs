using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Data;
using System.DirectoryServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace GestionEtudiantPFEFinal.EtudiantEtrangere
{
    [ToolboxItemAttribute(false)]
    public partial class EtudiantEtrangere : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public EtudiantEtrangere()
        {
        }

        private DataTable GetItemDetailsA()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["Nationnalité"];
            return myList.Items.GetDataTable();
        }
        private DataTable GetItemDetailsEtudiantE()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantN"];
            return myList.Items.GetDataTable();
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SPWeb currentWeb = SPContext.Current.Web;


            SPList oList = currentWeb.Lists["Nationnalité"];
            //string url = string.Empty;
            foreach (SPListItem oItem in oList.Items)
            {

                DropDownList2.Items.Add(new ListItem(oItem.Title));

            }
            Panel1.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                Panel2.Visible = true;
                int j;
                int i = 0;
                SPWeb currentWeb = SPContext.Current.Web;
                SPList myList = currentWeb.Lists["Nationnalité"];
                DataTable dt = GetItemDetailsA();
                Table t = new Table();
                titre1.Text = DropDownList2.SelectedValue;
                //SPListItem listItem = myList.GetItemById(j);
                foreach (DataRow row in dt.Rows)
                {
                    if (row["title"].ToString() == DropDownList2.SelectedValue)
                    {
                        string tof = row["image"].ToString();
                        Image1.ImageUrl = @tof;

                        //SPWeb currentWeb = SPContext.Current.Web;
                        SPList myList1 = currentWeb.Lists["EtudiantN"];
                        DataTable dt1 = GetItemDetailsEtudiantE();
                        Table t1 = new Table();
                        titre1.Text = DropDownList2.SelectedValue;
                        //SPListItem listItem = myList.GetItemById(j);
                        foreach (DataRow row1 in dt1.Rows)
                        {
                            if (row1["Classe"].ToString() == DropDownList2.SelectedValue)
                            {





                                //myList.Items.Add();
                                //string tofAdresse = "Image"+ i;

                                string tof1 = @"C:\Users\spadmin\Desktop\image\563902_358518084191769_413856496_n.jpg";

                                i = i + 1;

                                Image im = new Image();
                                im.ImageUrl = tof1;
                                im.Width = 150;
                                im.Height = 150;
                                string nom = row["Title"].ToString();
                                Label l = new Label();
                                l.ForeColor = System.Drawing.Color.White;
                                l.Text = "llllllll";

                                //l.Text=nom;

                                Panel2.Controls.Add(im);

                                Panel2.Controls.Add(l);


                                //Chart1.add







                                //listItem.Update();

                                //int i;














                                Panel3.Visible = true;

                            }
                        }
                    }
                }
            }
        }
    }
}
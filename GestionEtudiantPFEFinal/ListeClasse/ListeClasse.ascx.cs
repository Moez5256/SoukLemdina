using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Data;
using System.DirectoryServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace GestionEtudiantPFEFinal.ListeClasse
{
    [ToolboxItemAttribute(false)]
    public partial class ListeClasse : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public ListeClasse()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        private DataTable GetItemDetailsA()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantA"];
            return myList.Items.GetDataTable();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SPWeb currentWeb = SPContext.Current.Web;


            SPList oList = currentWeb.Lists["Classe"];
            //string url = string.Empty;
            foreach (SPListItem oItem in oList.Items)
            {

                DropDownList2.Items.Add(new ListItem(oItem.Title));


            }
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Panel1.Visible = false;
            int j;
            int i = 0;
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantA"];
            DataTable dt = GetItemDetailsA();
            Table t = new Table();
            titre1.Text = DropDownList2.SelectedValue;
            //SPListItem listItem = myList.GetItemById(j);
            foreach (DataRow row in dt.Rows)
            {
                if (row["Classe"].ToString() == DropDownList2.SelectedValue)
                {





                    //myList.Items.Add();
                    //string tofAdresse = "Image"+ i;

                    string tof = row["Adresse"].ToString();

                    i = i + 1;

                    Image im = new Image();
                    im.ImageUrl = @tof;
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











                    // ImageList1 = new ImageList();

                }
            }
            Label T = new Label();

            Panel2.Visible = true;
            T.ForeColor = System.Drawing.Color.Plum;
            T.Text = "<br /> Le Nombre D'Etudaint affecté a cette Classe est : " + i;

            //l.Text=nom;

            Panel2.Controls.Add(T);


            Panel3.Visible = true;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/SitePages/2.aspx");

        }


    }
}
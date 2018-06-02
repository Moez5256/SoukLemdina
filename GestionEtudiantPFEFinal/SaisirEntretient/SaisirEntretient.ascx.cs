using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Data;
using System.Web.UI.WebControls.WebParts;

namespace GestionEtudiantPFEFinal.SaisirEntretient
{
    [ToolboxItemAttribute(false)]
    public partial class SaisirEntretient : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public SaisirEntretient()
        {
        }

        

        private DataTable GetItemDetails()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantN"];
            return myList.Items.GetDataTable();
        }
        private DataTable GetItemDetailsEntretient()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["Entretient"];
            return myList.Items.GetDataTable();
        }
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SPWeb currentItem = SPContext.Current.Web;
            SPList listV = currentItem.Lists["Entretient"];

            SPListItem listItem = listV.Items.Add();
            listItem["Title"] = nomprenom.Text;
            listItem["Prenom"] = nomprenom.Text;
            listItem["CINP"] = TextBox1.Text;

            /*  listItem["Classe"] = TextBox3.Text;
             listItem["Identifiant"] = TextBox4.Text;
              listItem["CIN2"] = TextBox5.Text;
              listItem["Email Esprit"] = TextBox6.Text;*/
            listItem["NoteFrancais"] = TextBox2.Text;
            listItem["NoteAnglais"] = TextBox3.Text;
            listItem["NotePsy"] = TextBox4.Text;
            int fr = Int32.Parse(listItem["NoteFrancais"].ToString());
            int an = Int32.Parse(listItem["NoteAnglais"].ToString());
            int psy = Int32.Parse(listItem["NotePsy"].ToString());
            int moy = (fr + an + psy) / 3;


            listItem["Moyenne"] = moy.ToString();

            listItem.Update();
            DataTable dt = GetItemDetails();
            int k;

            foreach (DataRow row10 in dt.Rows)
            {
                if (((row10["CIN"].ToString()) == TextBox1.Text) || (row10["Passport"].ToString() == TextBox1.Text))
                {
                    k = (int)row10["ID"];

                    SPWeb currentWeb = SPContext.Current.Web;
                    SPList myList = currentWeb.Lists["EtudiantN"];
                    SPListItem listItem10 = myList.GetItemById(k);
                    myList.Items.Add();
                    listItem10["Acceptation"] = "Oui";
                    if (moy > 11)
                    {
                        listItem10["Etat"] = "Accepté";

                        SPList myList2 = currentWeb.Lists["EtudiantA"];
                        SPListItem listItem2 = myList2.Items.Add();
                        listItem2["CIN"] = TextBox1.Text;
                        listItem2["Title"] = listItem10["Title"];
                        listItem2["Prenom"] = listItem10["Prenom"];
                        listItem2["Adresse"] = listItem10["Adresse"];
                        listItem2.Update();
                    }
                    else if (moy < 10) { listItem10["Etat"] = "non Accepté"; }
                    listItem10.Update();

                   // listItem["Email"] = TextBox3.Text;
                   // listItem["Telephone"] = TextBox4.Text;
                    //listItem["Etat"] = "non validé";

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = GetItemDetails();

            Panel1.Visible = false;
            Label2.Visible = false;
            Label1.Visible = true;

            foreach (DataRow row in dt.Rows)
            {
                if ((row["CIN"].ToString() == TextBox1.Text) || (row["Passport"].ToString() == TextBox1.Text))
                {
                    string test = row["Acceptation"].ToString();
                    if (test == "non")
                    {
                        string tof = row["Adresse"].ToString();
                        Image1.ImageUrl = @tof;
                        Image1.Visible = true;

                        titre1.Text = row["Title"].ToString() + " " + row["Prenom"].ToString();

                        nomprenom.Text = row["Title"].ToString() + " " + row["Prenom"].ToString();
                        Email.Text = row["Email"].ToString();
                        //nationnalite.Text = row["Nationnalite"].ToString();
                        if (row["CIN"].ToString() == TextBox1.Text)
                        {
                            Cin.Text = row["CIN"].ToString();
                        }
                        else Cin.Text = row["Passport"].ToString();
                        //Etab.Text = row["Specialite"].ToString();





                        Panel1.Visible = true;
                        Label1.Visible = false;
                    }
                    else
                    {
                        Label1.Visible = false;
                        Label2.Visible = true;
                        Modifier.Visible = true;
                        //Panel9.Visible = true;
                    }



                }





            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Modifier.Visible = false;
            Panel10.Visible = true;
            Panel10.Visible = true;
            DataTable dt = GetItemDetailsEntretient();
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["Entretient"];


            int k;
            foreach (DataRow row in dt.Rows)
            {
                if (row["CINP"].ToString() ==TextBox1.Text)
                {
                    k = (int)row["ID"];


                    SPListItem listItem10 = myList.GetItemById(k);
                    myList.Items.Add();
                    np.Text = row["Title"].ToString() + " " + row["Prenom"].ToString();
                    TextBox17.Text = row["Moyenne"].ToString();
                    TextBox18.Text = row["NoteAnglais"].ToString();
                    TextBox19.Text = row["NotePsy"].ToString();
                    listItem10["NoteFrancais"] = TextBox17.Text;
                    listItem10["NoteAnglais"] = TextBox18.Text;
                    listItem10["NotePsy"] = TextBox19.Text;

                    listItem10.Update();




                }






            }

        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Panel10.Visible = true;
            DataTable dt = GetItemDetailsEntretient();


            int k;
            foreach (DataRow row in dt.Rows)
            {
                if (row["Moyenne"].ToString() == TextBox1.Text)
                {
                    k = (int)row["ID"];

                    SPWeb currentWeb = SPContext.Current.Web;
                    SPList myList = currentWeb.Lists["Entretient"];
                    SPListItem listItem10 = myList.GetItemById(k);
                    myList.Items.Add();
                    // TextBox16.Text = row["Title"].ToString();
                    TextBox17.Text = row["NoteFrancais"].ToString();
                    TextBox18.Text = row["NoteAnglais"].ToString();
                    TextBox19.Text = row["NotePsy"].ToString();
                    listItem10["NoteFrancais"] = TextBox17.Text;
                    listItem10["NoteAnglais"] = TextBox18.Text;
                    listItem10["NotePsy"] = TextBox19.Text;
                    listItem10.Update();




                }




            }
        }
    }

}





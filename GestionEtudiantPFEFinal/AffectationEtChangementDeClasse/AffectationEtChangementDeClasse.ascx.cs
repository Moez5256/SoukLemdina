using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Data;
using System.DirectoryServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace GestionEtudiantPFEFinal.AffectationEtChangementDeClasse
{
    [ToolboxItemAttribute(false)]
    public partial class AffectationEtChangementDeClasse : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public AffectationEtChangementDeClasse()
        {
        }


        DirectoryEntry de = new DirectoryEntry()
        {
            Path = "LDAP://win-ohbmf3r14c3.SPdev.local",
            Username = @"SPDEV\Administrateur",
            Password = "123*Aazerty",
            AuthenticationType = AuthenticationTypes.Secure
        };

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel10.Visible = false;
            /*  DropDownList1.Text = string.Empty;
              DropDownList2.Text = string.Empty;*/



        }
        private DataTable GetItemDetails()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantN"];
            return myList.Items.GetDataTable();
        }
        private DataTable GetItemDetailsA()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantA"];
            return myList.Items.GetDataTable();
        }
        private DataTable GetClasseDetails()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["Classe"];
            return myList.Items.GetDataTable();
        }

        Label img = new Label();

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
                    string test = row["Etat"].ToString();
                    string test2 = row["Acceptation"].ToString();
                    if (test2 == "Affecté") { 
                        Panel9.Visible = true;
                        Label1.Visible = false;
                        Label2.Visible = false;
                        Label16.Visible = false;
                     }
                    else
                    {
                        if (test == "Accepté")
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
                            Etab.Text = row["Specialite"].ToString();
                            nationnalite.Text = row["prenom"].ToString();
                            TextBox3.Text = row["Title"].ToString() + " " + row["Prenom"].ToString();
                            TextBox8.Text = TextBox1.Text;
                            TextBox4.Text = row["Adresse"].ToString();
                            TextBox9.Text = row["Identifiant"].ToString();
                            bac.Text = "bac";
                            Label13.Text = "adresse";
                            etablii.Text = "etablisssement";




                            Panel1.Visible = true;
                            Label1.Visible = false;
                        }
                        else if (test == "non Accepté")
                        {
                            Label1.Visible = false;
                            Label2.Visible = false;
                            Label16.Visible = true;
                            Panel9.Visible = true;
                        }
                        else if (test == "En attente")
                        {
                            Label1.Visible = false;
                            Label2.Visible = false;
                            Label16.Visible = false;
                            Label17.Visible = true;
                        }

                    }



                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            {

                DataTable mat = GetItemDetailsA();
                string test = "true";

                foreach (DataRow row21 in mat.Rows)
                {
                    if (row21["Matricule"].ToString() == TextBox6.Text)
                    {
                        test = "false";
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                    "alert('Cette Matriculation est déja prise ');", true);
                    }
                }
                if (test == "true")
                {

                    DataTable dt1 = GetClasseDetails();


                    int i;
                    foreach (DataRow row in dt1.Rows)
                    {
                        int a = int.Parse(row["nbr"].ToString());
                        string classe = (string)row["Title"];
                        if (classe == DropDownList1.SelectedValue)
                        {
                            int a1 = int.Parse(row["nbr"].ToString());
                            int b1 = int.Parse(row["Max"].ToString());


                            if (a1 >= b1)
                            {
                                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                "alert('Classe Pleine  ');", true);
                            }



                            else
                            {



                                //mmmmmmmmmm
                                DataTable dt = GetItemDetails();
                                DataTable dt11 = GetItemDetailsA();

                                 int o;

                                        foreach (DataRow row15 in dt11.Rows)
                                        {
                                            
                                                if (row15["CIN"].ToString() == TextBox1.Text)
                                                {
                                                    o = (int)row15["ID"];

                                                    SPWeb currentWeb10 = SPContext.Current.Web;
                                                    SPList myList10 = currentWeb10.Lists["EtudiantA"];
                                                    SPListItem listItem15 = myList10.GetItemById(o);
                                                    myList10.Items.Add();
                                                    listItem15["Classe"] = DropDownList1.SelectedValue;
                                                    listItem15["Matricule"] = TextBox6.Text;

                                                    listItem15.Update();

                                                }
                                            
                                        

                                 
                                        SPWeb currentItem1 = SPContext.Current.Web;
                                        SPList listV1 = currentItem1.Lists["Classe"];
                                        SPListItem listItem1 = listV1.Items.Add();

                                        i = (int)row["ID"];
                                        SPListItem listItem2 = listV1.GetItemById(i);
                                        listV1.Items.Add();
                                        classe = row["nbr"].ToString();
                                        int nbr = int.Parse(classe) + 1;

                                        listItem2["nbr"] = nbr.ToString();
                                        listItem2.Update();
                                    }
                                        foreach (DataRow row16 in dt.Rows)
                                        {

                                            if (row16["CIN"].ToString() == TextBox1.Text)
                                            {
                                                o = (int)row16["ID"];

                                                SPWeb currentWeb10 = SPContext.Current.Web;
                                                SPList myList20 = currentWeb10.Lists["EtudiantN"];
                                                SPListItem listItem20 = myList20.GetItemById(o);
                                                myList20.Items.Add();
                                                listItem20["Acceptation"] = "Affecté";
                                                //listItem20["Matricule"] = TextBox6.Text;

                                                listItem20.Update();

                                            }
                                        }
                                //Acceptation=affecté
                                }
                                try
                                {

                                    DirectoryEntry user = de.Children.Add("CN=" + TextBox3.Text + ", CN=Users", "user");
                                    if (DirectoryEntry.Exists(user.Path))
                                    {
                                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                      "alert('User Existe Deja !!! ');", true);
                                    }
                                    else
                                    {

                                        user.Properties["givenname"].Add(TextBox3.Text);//Prénom 
                                        user.Properties["sn"].Add(TextBox4.Text);//Nom 
                                        user.Properties["samAccountName"].Add(TextBox3.Text);//Login 
                                        user.Properties["mail"].Add(TextBox9.Text);//Email 
                                        user.Properties["displayName"].Add(TextBox4.Text + " " + TextBox3.Text);
                                        user.CommitChanges();
                                        user.Invoke("SetPassword", new object[] { TextBox6.Text });
                                        user.CommitChanges();

                                        int val = (int)user.Properties["userAccountControl"].Value;
                                        user.Properties["userAccountControl"].Value = val & ~0x2;
                                        user.CommitChanges();
                                        int val1 = (int)user.Properties["userAccountControl"].Value;
                                        user.Properties["userAccountControl"].Value = val1 | 0X10000;
                                        user.CommitChanges();
                                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                    "alert('User est bien ajoutée !!! ');", true);
                                        //Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/SitePages/2.aspx");
                                    }
                                }








                                catch (System.DirectoryServices.DirectoryServicesCOMException E) { }
                                //doSomething with E.Message.ToString();


                            }



                        }




                    }
                
                else { Panel2.Visible = true; }
            }


        }



        // Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/SitePages/2.aspx");








        // Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/SitePages/2.aspx");




        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel3.Visible = false;
            Panel2.Visible = true;

            SPWeb currentWeb = SPContext.Current.Web;


            SPList oList = currentWeb.Lists["Classe"];
            //string url = string.Empty;
            foreach (SPListItem oItem in oList.Items)
            {
                DropDownList1.Items.Add(new ListItem(oItem.Title));
                DropDownList2.Items.Add(new ListItem(oItem.Title));


            }
        }

        protected void Button7_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel3.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            DataTable dt = GetItemDetails();
            int i;

            foreach (DataRow row in dt.Rows)
            {
                if (row["Title"].ToString() == TextBox1.Text)
                {
                    i = (int)row["ID"];

                    SPWeb currentWeb = SPContext.Current.Web;
                    SPList myList = currentWeb.Lists["EtudiantN"];
                    SPListItem listItem = myList.GetItemById(i);
                    myList.Items.Add();
                    listItem["Etat"] = "Validé";
                    listItem.Update();
                    Panel1.Visible = true;





                }
            }

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Panel10.Visible = true;
            DataTable dt = GetItemDetailsA();



            foreach (DataRow row in dt.Rows)
            {
                if (row["CIN"].ToString() == TextBox1.Text)
                {


                    TextBox16.Text = row["Title"].ToString();
                    TextBox17.Text = row["Classe"].ToString();
                    TextBox19.Text = row["Classe"].ToString();
                    {
                        string tof = row["Adresse"].ToString();
                        Image2.ImageUrl = @tof;
                        Image3.ImageUrl = @tof;
                        Image2.Visible = true;
                        Image3.Visible = true;
                        SPWeb currentWeb = SPContext.Current.Web;


                        SPList oList = currentWeb.Lists["Classe"];
                        //string url = string.Empty;
                        foreach (SPListItem oItem in oList.Items)
                        {
                            // DropDownList1.Items.Add(new ListItem(oItem.Title));
                            DropDownList2.Items.Add(new ListItem(oItem.Title));


                        }




                    }
                }
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {

            SPWeb currentItem1 = SPContext.Current.Web;
            SPList listV1 = currentItem1.Lists["Classe"];
            SPListItem listItem1 = listV1.Items.Add();

            DataTable dt1 = GetClasseDetails();


            int i;
            foreach (DataRow row in dt1.Rows)
            {
                int a = int.Parse(row["nbr"].ToString());
                string classe = (string)row["Title"];
                if (classe == TextBox17.Text)
                //DropDownList1.SelectedValue
                {


                    foreach (DataRow row10 in dt1.Rows)
                    {


                        string classe1 = (string)row10["Title"];

                        if (classe1 == DropDownList2.SelectedValue)
                        //DropDownList1.SelectedValue
                        {
                            int a1 = int.Parse(row10["nbr"].ToString());
                            int b1 = int.Parse(row10["Max"].ToString());


                            if (a1 >= b1)
                            {
                                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                 "alert('Classe Pleine destinataire testing  ');", true);
                            }
                            else
                            {
                                i = (int)row10["ID"];
                                SPListItem listItem20 = listV1.GetItemById(i);
                                listV1.Items.Add();
                                classe1 = row10["nbr"].ToString();
                                int nbr10 = int.Parse(classe1) + 1;

                                listItem20["nbr"] = nbr10.ToString();
                                listItem20.Update();


                                i = (int)row["ID"];
                                SPListItem listItem2 = listV1.GetItemById(i);
                                listV1.Items.Add();
                                classe = row["nbr"].ToString();
                                int nbr = int.Parse(classe) - 1;

                                listItem2["nbr"] = nbr.ToString();
                                listItem2.Update();
                                DataTable dt = GetItemDetailsA();
                                int j;

                                foreach (DataRow row1 in dt.Rows)
                                {
                                    if (row1["CIN"].ToString() == TextBox1.Text)
                                    {
                                        j = (int)row1["ID"];

                                        SPWeb currentWeb = SPContext.Current.Web;
                                        SPList myList = currentWeb.Lists["EtudiantA"];
                                        SPListItem listItem = myList.GetItemById(j);
                                        myList.Items.Add();
                                        listItem["Classe"] = DropDownList2.SelectedValue;
                                        ;

                                        listItem.Update();

                                        //int i;







                                        Panel1.Visible = true;





                                    }
                                }
                            }
                        }
                    }
                }
            }
            // Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/SitePages/2.aspx");

        }



        protected void Button12_Click(object sender, EventArgs e)
        {

            Panel11.Visible = true;
        }


        protected void Button13_Click1(object sender, EventArgs e)
        {
            //Panel12.Visible = true;
            DataTable dt = GetItemDetailsA();

            //Panel11.Visible = false;


            foreach (DataRow row in dt.Rows)
            {
                if (row["CIN"].ToString() == TextBox20.Text)
                {
                    Panel12.Visible = true;
                    Panel11.Visible = false;



                    Label7.Text = row["Title"].ToString() + " " + row["Prenom"].ToString();
                    Label8.Text = row["CIN"].ToString();
                    Label9.Text = row["Classe"].ToString();
                    Label10.Text = row["Classe"].ToString();
                    string tof = row["Adresse"].ToString();

                    Image4.ImageUrl = @tof;
                    Image4.Visible = true;

                    Label3.Text = TextBox16.Text;
                    Label4.Text = TextBox17.Text;
                    Label6.Text = TextBox19.Text;

                }
                else { Label11.Visible = true; }
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            {
                DataTable dt = GetItemDetailsA();
                int j;

                foreach (DataRow row1 in dt.Rows)
                {
                    if (row1["CIN"].ToString() == Label8.Text)
                    {
                        j = (int)row1["ID"];

                        SPWeb currentWeb = SPContext.Current.Web;
                        SPList myList = currentWeb.Lists["EtudiantA"];
                        SPListItem listItem = myList.GetItemById(j);
                        myList.Items.Add();
                        listItem["Classe"] = Label6.Text;

                        listItem.Update();

                    }


                }
                foreach (DataRow row in dt.Rows)
                {
                    if (row["Title"].ToString() == Label3.Text)
                    {
                        j = (int)row["ID"];

                        SPWeb currentWeb = SPContext.Current.Web;
                        SPList myList = currentWeb.Lists["EtudiantA"];
                        SPListItem listItem = myList.GetItemById(j);
                        myList.Items.Add();
                        listItem["Classe"] = Label10.Text;

                        listItem.Update();
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                   "alert('La Permutation a été Effectué ');", true);
                        // Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/SitePages/2.aspx");
                    }


                }
            }
        }


    }
}
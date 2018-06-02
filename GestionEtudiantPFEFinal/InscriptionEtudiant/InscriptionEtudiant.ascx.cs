using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;
using System.Text;
using System.Net;
using System.Data;
using Microsoft.SharePoint.Administration;
using System.Collections.Specialized;
using Microsoft.SharePoint.Utilities;
using System.IO;
using Microsoft.Web.Hosting.Administration;
using System.Web.UI.WebControls;
using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Data;
//using System.DirectoryServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


namespace GestionEtudiantPFEFinal.InscriptionEtudiant
{
    [ToolboxItemAttribute(false)]
    public partial class InscriptionEtudiant : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public InscriptionEtudiant()
        {
        }
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }
        
        private DataTable GetItemDetails()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["EtudiantN"];
            return myList.Items.GetDataTable();
        }

     

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel5.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel6.Visible = false;
            Panel1.Visible = true;
            Panel4.Visible = false;
            Etrangere.Visible = false;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            if (DropDownList4.SelectedValue == "Tunisienne")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Etrangere.Visible = false;

            }
            else
            {

                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Etrangere.Visible = true;
                SPWeb currentWeb = SPContext.Current.Web;


                SPList oList = currentWeb.Lists["Nationnalité"];
                //string url = string.Empty;
                foreach (SPListItem oItem in oList.Items)
                {
                    DropDownList10.Items.Add(new ListItem(oItem.Title));


                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            DataTable dt = GetItemDetails();
            string test = "true";

            foreach (DataRow row10 in dt.Rows)
            {
                if (row10["CIN"].ToString() == TextBox8.Text)
                {
                    test = "false";
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                                "alert('Cette CIN est déjà prise ');", true);
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;


                }
                if (test == "true")
                {
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedIndex == 0)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;



                //Panel4.Visible = true;
            }
            else if (DropDownList2.SelectedIndex == 1)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
                Panel6.Visible = false;

                Label1.Text = TextBox8.Text + "jmt" + TextBox1.Text;
                Label2.Text = TextBox1.Text + "." + TextBox2.Text + "@esprit.tn";

            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
                Panel6.Visible = false;

                Label1.Text = TextBox8.Text + "jmt" + TextBox1.Text;
                Label2.Text = TextBox1.Text + "." + TextBox2.Text + "@esprit.tn";

            }

            //TextBox13.Text = TextBox8.Text + "jmt" + TextBox1.Text;

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            String civilité = "";
            if (TextBox15.Text == TextBox16.Text)
            {
                SPWeb currentWeb = SPContext.Current.Web;
                SPList myList = currentWeb.Lists["EtudiantN"];
                SPListItem listItem = myList.Items.Add();
                listItem["Nom"] = TextBox1.Text;
                listItem["Prenom"] = TextBox2.Text;
                listItem["Email"] = TextBox3.Text;
                listItem["Telephone"] = TextBox4.Text;
                listItem["Etat"] = "En attente";
                listItem["Acceptation"] = "non";


                if (RadioButton1.Checked)
                {
                    civilité = RadioButton1.Text;
                }

                // On vérifie si c'est le radio button 2 qui est sélectionné
                if (RadioButton2.Checked)
                {
                    civilité = RadioButton2.Text;
                }
                listItem["Civilite"] = civilité;
                if (DropDownList10.SelectedValue == "Tunisienne")
                {

                    listItem["Date de Naissance"] = TextBox6.Text;
                    //listItem["Nationnalite"] = DropDownList3.SelectedItem.Text;
                    listItem["CIN"] = TextBox8.Text; ;
                    listItem["Année Bac"] = TextBox9.Text;
                    listItem["Specialite"] = DropDownList1.SelectedItem.Text;
                    listItem["Adresse"] = TextBox11.Text;
                    listItem["Email Esprit"] = Label1.Text;
                    listItem["Identifiant"] = Label2.Text;
                }
                else
                {
                    listItem["Passport"] = Passport.Text;
                    listItem["Nationnalite"] = DropDownList10.SelectedValue;
                    listItem["Date de Naissance"] = naiss.Text;
                    //listItem[""] 
                }
                if (FileUpload1.HasFile)
                {
                    //acFileUpload1.SaveAs(FileUpload1.PostedFile.FileName);
                    //SPFolder myLibrary = oWeb.Folders[documentLibraryName];


                    // Boolean replaceExistingFiles = true;
                    string filePath = FileUpload1.PostedFile.FileName; //string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    // FileUpload1.SaveAs(Server.Map("~/") + filename);
                    listItem["Adresse"] = filePath;



                }



                listItem.Update();

                /*  SmtpClient mailClient;
                  mailClient = new SmtpClient("moez.drira@esprit.tn");
                  mailClient.Credentials = new NetworkCredential("moez.drira@esprit.tn", "09608856");

                
                  MailMessage mailMessage = new MailMessage("moez.drira@esprit.tn", "moez.drira@esprit.tn", "subject", "body");

                  mailClient.Send(mailMessage);*/
                Panel5.Visible = true;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                  "alert('Password incompatible ');", true);
                TextBox15.Text = "";
                TextBox16.Text = "";

            }
            /*Panel4.Visible = false;
            Panel3.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = false;

            Panel5.Visible = false;
            Panel6.Visible = true;
            Label9.Text = TextBox1.Text;
            Label10.Text = " " + TextBox2.Text;
            Label4.Text = TextBox1.Text + " " + TextBox2.Text;
            Label5.Text = TextBox6.Text;
            Label6.Text = TextBox11.Text;
            Label7.Text = RadioButton1.Text;
            Label8.Text = TextBox9.Text + " " + "Spécialité" + " " + DropDownList1.SelectedItem.Text;*/


            /* string fromaddr = "moez.drira@esprit.tn";
             string toaddr = "moez.drira@esprit.tn";//TO ADDRESS HERE
             string password = "09608856";


             MailMessage msg = new MailMessage();
             msg.Subject = "moez.drira@esprit.tn &09608856";
             msg.From = new MailAddress(fromaddr);
             msg.Body = "Message BODY";
             msg.To.Add(new MailAddress("moez.drira@esprit.tn"));
             SmtpClient smtp = new SmtpClient();
             smtp.Host = "smtp.gmail.com.";
             smtp.Port = 25;
             smtp.UseDefaultCredentials = false;
             smtp.EnableSsl = true;
             NetworkCredential nc = new NetworkCredential(fromaddr, password);
             smtp.Credentials = nc;
             smtp.Send(msg);*/
            Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionEtudiant01/SitePages/Home.aspx");

        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["CVEtudiant"];
            SPListItem listItem = myList.Items.Add();
            listItem["NomPrenom"] = Label4.Text;
            listItem["Date de Naissance"] = Label5.Text;
            listItem["Civilité"] = Label6.Text;
            listItem["Année et spec"] = Label7.Text;
            listItem["Stage"] = TextArea2.InnerText;
            listItem["compétance"] = TextArea1.InnerText;
            listItem["loisir"] = TextArea3.InnerText;

            Page.Response.Redirect("http://win-ohbmf3r14c3:81/sites/gestionpfe/_layouts/15/start.aspx#/");




        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            TextArea2.Value = TextBox22.Text + "\r\n" + TextArea2.Value;
            TextBox22.Text = "";
            Panel4.Visible = false;
            Panel3.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = false;

            Panel5.Visible = false;
            Panel6.Visible = true;

        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            TextArea1.Value = TextBox23.Text + "\r\n" + TextArea1.Value;
            TextBox23.Text = "";
            Panel4.Visible = false;
            Panel3.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = false;
            Panel6.Visible = true;

            Panel5.Visible = false;
            //Panel6.Visible = true;

        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            TextArea3.Value = TextBox24.Text + "\r\n" + TextArea3.Value;
            TextBox24.Text = "";
            Panel4.Visible = false;
            Panel3.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = false;

            Panel5.Visible = false;
            Panel6.Visible = true;
        }






        public string content { get; set; }

        protected void Button19_Click(object sender, EventArgs e)
        {
            var wkhtmlDir = @"C:\Users\spadmin\Desktop\test";
            //var wkhtmlDir = AppDomain.CurrentDomain.BaseDirectory;
            var wkhtml = @"C:\Program Files (x86)\wkhtmltopdf\bin";

            var info = new ProcessStartInfo(wkhtml);

            info.CreateNoWindow = true;
            info.RedirectStandardOutput = true;
            info.RedirectStandardError = true;
            info.RedirectStandardInput = true;
            info.UseShellExecute = false;
            info.WorkingDirectory = wkhtmlDir;
            info.FileName = wkhtml;
            info.Arguments = @"C:\Users\spadmin\Desktop\test\1.html C:\Users\spadmin\Desktop\test\22.pdf";
            Process.Start(info);

        }

        protected void documentUpload_OnClick(object sender, EventArgs e)
        {

        }

        protected void Button23_Click(object sender, System.EventArgs e)
        {
            Panel4.Visible = false;
            Panel3.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = false;
            Etrangere.Visible = false;

            Panel5.Visible = true;
            Panel6.Visible = false;

        }

    }
}



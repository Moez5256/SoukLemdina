using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
namespace GestionEtudiantPFEFinal.AjouterClasse
{
    [ToolboxItemAttribute(false)]
    public partial class AjouterClasse : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public AjouterClasse()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            SPWeb currentWeb = SPContext.Current.Web;
            SPList myList = currentWeb.Lists["Classe"];
            SPListItem listItem = myList.Items.Add();
            listItem["Title"] = TextBox1.Text;
            listItem["nbr"] = DropDownList1.SelectedValue;
            listItem["Max"] = DropDownList1.SelectedValue;

            listItem.Update();
        }
    }
}

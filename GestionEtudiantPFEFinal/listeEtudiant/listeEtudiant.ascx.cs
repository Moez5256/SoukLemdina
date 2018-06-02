using Microsoft.SharePoint;
using System;
using System.ComponentModel;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


namespace GestionEtudiantPFEFinal.listeEtudiant
{
    [ToolboxItemAttribute(false)]
    public partial class listeEtudiant : WebPart
    {
        // Supprimez les marques de commentaire de l'attribut SecurityPermission suivant uniquement lors du profilage des performances sur une solution de batterie de serveurs
        // à l'aide de la méthode Instrumentation, puis supprimez l'attribut SecurityPermission lorsque le code est prêt
        // pour la production. Dans la mesure où l'attribut SecurityPermission ignore la vérification de sécurité pour les appelants de
        // votre constructeur, il n'est pas recommandé pour les besoins de la production.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public listeEtudiant()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SPWeb currentWeb = SPContext.Current.Web;
                SPList lst = currentWeb.Lists["EtudiantN"];
                SPListItemCollection myColl = lst.Items;
                if (myColl.Count > 0)
                {
                    if (!IsPostBack)
                    {
                        dgvEditUpdateDelete.DataSource = myColl.GetDataTable();
                        dgvEditUpdateDelete.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {

            }

        }
        public void getData()
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList lst = currentWeb.Lists["EtudiantN"];
            SPListItemCollection myColl = lst.Items;
            if (myColl.Count > 0)
            {
                dgvEditUpdateDelete.DataSource = myColl.GetDataTable();
                dgvEditUpdateDelete.DataBind();
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        string strItemID1;
        protected void dgvEditUpdateDelete_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                strItemID1 = dgvEditUpdateDelete.DataKeys[e.RowIndex].Value.ToString();
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    DeleteRow(strItemID1);
                    getData();
                });
            }
            catch (Exception ex)
            {

                //Response.Write(ex.ToString());
            }
        }

        protected void dgvEditUpdateDelete_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                dgvEditUpdateDelete.EditIndex = e.NewEditIndex;
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    getData();
                });

            }
            catch (Exception ex)
            {

            }
        }
        protected void dgvEditUpdateDelete_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Label lbl = (Label)dgvEditUpdateDelete.Rows[e.RowIndex].Cells[2].FindControl("lblItemID");
                TextBox txtTitle1 = (TextBox)dgvEditUpdateDelete.Rows[e.RowIndex].Cells[2].FindControl("txtTitle");
                // TextBox1.Text = txtTitle1.Text;
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {

                    updateRow(lbl.Text, TextBox1.Text, TextBox2.Text, TextBox3.Text);
                    dgvEditUpdateDelete.EditIndex = -1;
                    getData();
                });
            }
            catch (Exception ex)
            {

            }
        }
        public void updateRow(string ItemID1, string Title, string prenom, string email)
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList lst = currentWeb.Lists["EtudiantN"];
            SPListItem item = null;
            item = lst.GetItemById(int.Parse(ItemID1));
            currentWeb.AllowUnsafeUpdates = true;
            item["Title"] = Title;
            item["Prenom"] = prenom;
            item["Email"] = email;

            item.Update();
            lst.Update();
            currentWeb.AllowUnsafeUpdates = false;

        }
        public void DeleteRow(string ItemIDNew)
        {
            SPWeb currentWeb = SPContext.Current.Web;
            SPList lst = currentWeb.Lists["EtudiantN"];
            SPListItem item = null;
            item = lst.GetItemById(int.Parse(ItemIDNew));
            currentWeb.AllowUnsafeUpdates = true;
            item.Delete();
            lst.Update();
            currentWeb.AllowUnsafeUpdates = false;

        }
        protected void dgvEditUpdateDelete_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgvEditUpdateDelete.EditIndex = -1;
            SPSecurity.RunWithElevatedPrivileges(delegate()
            {
                getData();
            });
        }

        public bool IsPostBack { get; set; }
    }
}

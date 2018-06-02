<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AffectationEtChangementDeClasse.ascx.cs" Inherits="GestionEtudiantPFEFinal.AffectationEtChangementDeClasse.AffectationEtChangementDeClasse" %>









<style type="text/css">
    .auto-style1 {
        width: 529px;
    }
    .auto-style2 {
        width: 128px;
    }
    #TextArea1 {
        width: 576px;
        height: 87px;
    }
    #TextArea2 {
        width: 583px;
        height: 94px;
    }
    #TextArea3 {
        width: 582px;
        height: 74px;
    }
    .auto-style4 {
        width: 255px;
    }
    .auto-style5 {
        width: 250px;
    }
    .auto-style6 {
        width: 245px;
    }
    .auto-style7 {
        width: 242px;
    }
    .auto-style8 {
        width: 239px;
    }
    .auto-style9 {
        width: 236px;
    }
    .auto-style10 {
        width: 234px;
    }
    .auto-style11 {
        width: 232px;
    }
    .auto-style12 {
        width: 231px;
    }
    .auto-style13 {
        width: 227px;
    }
    .auto-style14 {
        width: 224px;
    }
    .auto-style15 {
        width: 222px;
    }
    .auto-style16 {
        width: 221px;
    }
    .auto-style18 {
        width: 542px;
    }
    .auto-style21 {
        width: 209px;
    }
    .auto-style22 {
        width: 242px;
        height: 27px;
    }
    .auto-style23 {
        width: 239px;
        height: 27px;
    }
    .auto-style25 {
        width: 127px;
    }
    .auto-style26 {
        width: 155px;
    }
    .auto-style27 {
        width: 217px;
    }
    </style>
<table>
    <tr>
<td class="auto-style1"><u style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><b>Veuillez entrer le CIN de&nbsp;l’étudiant:</b></u></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="476px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" Height="29px" Text="Chercher" Width="99px" OnClick="Button1_Click" />
        </td>
    </tr>
    </table>

<asp:Label ID="Label1" Visible="false" BackColor="Red" runat="server" Text="Veuillez verifier le nom!"></asp:Label>
<asp:Label ID="Label2" Visible="False" BackColor="Red" runat="server" Text="CE Etudiant est n'est pas accepté"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<asp:Label ID="Label16" Visible="False" BackColor="Red" runat="server" Text="CE Etudiant est déjà affecter à un classe "></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" Visible="False" BackColor="Red" runat="server" Text="Ce Etdiant est en attente"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Panel ID="Panel1" Visible="false" runat="server" Height="800px">
                <h5 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cordonnée De L&#39;Etudiant&nbsp;<asp:Label ID="titre1" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h5>

                       <asp:Image ID="Image1" runat="server" Height="155px" style="margin-left: 741px; margin-top: 0px;" widh="80" Width="155px" />
                
   <center>
    <table style="height: 397px; width: 600px">
    <tr>
        <td class="auto-style25"><b><i>Nom et Prenom :</i></b></td>
        <td class="auto-style26">
            <asp:Label ID="nomprenom" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
                            


<tr>
        <td class="auto-style25">&nbsp;<b><i>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</i></b></td>
        <td class="auto-style26">
            <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>

<tr>
        <td class="auto-style25"><b><i>Nationalité&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</i></b></td>
        <td class="auto-style26">
            <asp:Label ID="nationnalite" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>



<tr>
        <td class="auto-style25"><b><i>CIN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</i></b></td>
        <td class="auto-style26">
            <asp:Label ID="Cin" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
        <tr> 
             <td class="auto-style25"><b><i>Etablissement Précédente :</i></b></td>
        <td class="auto-style26">
            <asp:Label ID="Etab" runat="server" Text="Label"></asp:Label>


        </tr>
        
        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </caption>
        </table>
</center>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="+info" Width="136px" />
        <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" style="margin-left: 143px" Text="Modifier" Width="183px" />
        <asp:Button ID="Button4" runat="server" Height="29px" OnClick="Button4_Click" style="margin-left: 140px" Text="Affecter Classe" Width="171px" />


    <br />
    <br />
    <br />
       
</asp:Panel>


<asp:Panel ID="Panel3" Visible="false" runat="server" Height="359px">

    <table style="height: 397px; width: 783px">
    <tr>
        <td class="auto-style5">Bac et spécialité</td>
        <td class="auto-style6">
            <asp:Label ID="bac" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>

<tr>
        <td class="auto-style22">Adresse</td>
        <td class="auto-style23">
            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>

<tr>
        <td class="auto-style9">Etablissement</td>
        <td class="auto-style10">
            <asp:Label ID="etablii" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>



<tr>
        <td class="auto-style13">Spécialité </td>
        <td class="auto-style14">
            <asp:Label ID="Label15" runat="server" Text="spec"></asp:Label>
        </td>
    </tr>



<tr>
        <td class="auto-style15">
            <asp:Button ID="Button7" runat="server" Text="-info" Width="136px" OnClick="Button7_Click1" />
        </td>
        <td class="auto-style16">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </td>
    </tr>
    </table>
</asp:Panel>






<asp:Panel ID="Panel2" Visible="false" runat="server" Height="359px">

<table>
    <tr>
        <td class="auto-style4">Nom et Prenom * :</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="253px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" BackColor="blue" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir le nom et le prénom&nbsp;
</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td class="auto-style10">Nom *: </td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="250px"></asp:TextBox>
         </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" BackColor="blue" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir le nom&nbsp;
</asp:RequiredFieldValidator>
         </td>

    </tr>
     <tr>
        <td class="auto-style10">Prenom *: </td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="250px"></asp:TextBox>
         </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" BackColor="blue" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir le prénom&nbsp;
</asp:RequiredFieldValidator>
         </td>

    </tr>
    <tr>
        <td class="auto-style7">Matricule&nbsp; *:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="249px"></asp:TextBox>
        </td>
        <td class="auto-style9">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                 ControlToValidate="TextBox6"
        Text="Matricule est invalide"
        ValidationExpression="^\d{2}-\w+([-.]\w+)*\-?\d{3}$"
        BackColor="blue" 
        BorderColor ="Black" BorderStyle="Solid" BorderWidth="1px" 
        ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="X-Small" Width="212px" Height="16px"
                
                runat="server"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" BackColor="blue" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir le matricule&nbsp;
</asp:RequiredFieldValidator>
        </td>

    </tr>
    <tr>
        <td class="auto-style10">CIN *: </td>
        <td class="auto-style11">
            <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="251px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
        ControlToValidate="TextBox8"
        Text="CIN est invalide"
        ValidationExpression="^[0-9]{8}$"
        BackColor="blue" 
        BorderColor ="Black" BorderStyle="Solid" BorderWidth="1px" 
        ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="X-Small" Width="212px" Height="16px"
                 runat="server" ></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" BackColor="blue" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir le CIN&nbsp;
</asp:RequiredFieldValidator>
        </td>

    </tr>
    <tr>
        <td class="auto-style7">Email(esprit)*:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="250px"></asp:TextBox>
        </td>
        <td class="auto-style9">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
        ControlToValidate="TextBox9"
        Text="E-mail est invalide"
        ValidationExpression="\w+([-+.']\w+)*@esprit.tn"
        BackColor="blue" 
        BorderColor ="Black" BorderStyle="Solid" BorderWidth="1px" 
        ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="X-Small" Width="212px" Height="16px"
                 runat="server" 
                ></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" BackColor="blue" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir l'e-mail d'esprit&nbsp;
</asp:RequiredFieldValidator>
        </td>

    </tr>
    <tr>
        <td class="auto-style13">Classe *:</td>
        <td class="auto-style13">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="129px">
                
            </asp:DropDownList>
        </td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style14">
            <asp:Button ID="Button5" runat="server" Text="Annuler" Width="134px" OnClick="Button1_Click" />
        </td>
        <td class="auto-style14">
            <asp:Button ID="Button6" runat="server" Text="Ajouter" Width="117px" OnClick="Button2_Click" />
        </td>
    </tr>








</table>
    </asp:Panel>
<asp:Panel ID="Panel9" Visible="false" runat="server" Height="28px" Width="104px">
    <asp:Button ID="Button11" runat="server" Text="View details" OnClick="Button11_Click" />

    </asp:Panel>


<asp:Panel ID="Panel10" Visible="false" runat="server" Height="616px">

     <h5 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cordonnée De L&#39;Etudiant&nbsp;<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h5>

                       <asp:Image ID="Image2" runat="server" Height="155px" style="margin-left: 741px; margin-top: 0px;" widh="80" Width="155px" />

    vvvvv
    <table style="height: 397px; width: 783px">
    <tr>
        <td class="auto-style5">Nom et Prenom</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox16" runat="server" Height="18px" Width="295px"></asp:TextBox>
        </td>
    </tr>

<tr>
        <td class="auto-style7">Email</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox17" runat="server" Height="19px" Width="291px"></asp:TextBox>
        </td>
    </tr>

<tr>
        <td class="auto-style9">Nationalité </td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox18" runat="server" Height="18px" Width="291px"></asp:TextBox>
        </td>
    </tr>



<tr>
        <td class="auto-style13">Classe :</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox19" runat="server" Height="18px" style="margin-top: 0px" Width="95px" ReadOnly="True"></asp:TextBox>
             Veuillez Choisir Classe
            <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="129px">
                
            </asp:DropDownList>
        </td>
    <td class="auto-style13">
            &nbsp;</td>
    </tr>



<tr>
        <td class="auto-style15">
            <asp:Button ID="Button9" runat="server" Height="30px" OnClick="Button3_Click" Text="Retour" Width="178px" />
        </td>
        <td class="auto-style18">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Height="29px" style="margin-left: 0px" Text="Changer Classe" Width="152px" OnClick="Button10_Click" />
     </td><td>
            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Permutation" />
        </td>
    </tr>
    </table>
</asp:Panel>

<asp:Panel ID="Panel11" Visible="false" runat="server" Height="92px" Width="790px">
    <u style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><b>Veuillez entrer La CIN de l&#39;Etudiant
    <br />
    </b>
    <asp:TextBox ID="TextBox20" runat="server" Width="224px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button13" runat="server" Text="Verifier" Width="104px" OnClick="Button13_Click1" />
    </u>
    <asp:Label ID="Label11" Visible="false" BackColor="Red" runat="server" Text="Veuillez verifier le nom!"></asp:Label>

   

    </asp:Panel>

<asp:Panel ID="Panel12" Visible="false" runat="server" Height="92px" Width="790px">
    <table style="height: 527px; width: 938px">
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style27">
            <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Etudiant 1</h3>
        </td>
        
        
        <td class="auto-style21">
                        <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Etudiant 2</h3>

        </td></tr>
        <tr><td></td><td class="auto-style27">
                                   <asp:Image ID="Image4" runat="server" Height="115px" style="margin-left: 41px; margin-top: 0px;" widh="80" Width="115px" />


                     </td>
            <td>

                       <asp:Image ID="Image3" runat="server" Height="115px" style="margin-left: 93px; margin-top: 0px;" widh="80" Width="115px" />

            </td>
        </tr>
         <tr><td>  
           <b><i>Nom et Prenom</i></b> <br /> </td>
        <td class="auto-style27">
            &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="auto-style21">Nom et Prenom </td><td>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>


<tr>
        <td class="auto-style17">Email</td>
        <td class="auto-style27">
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </td>
    <td class="auto-style21">Email</td><td>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>

<tr>
        <td class="auto-style17">Nationalité </td>
        <td class="auto-style27">
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </td>
    <td class="auto-style21">Nationnalité</td><td>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>



<tr>
        <td class="auto-style17">Classe :</td>
        <td class="auto-style27">
            &nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    <td class="auto-style21">
            Classe</td><td>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td><td></td>
    </tr>



    </table>

    <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Permutation" style="margin-left: 413px" />

    </asp:Panel>
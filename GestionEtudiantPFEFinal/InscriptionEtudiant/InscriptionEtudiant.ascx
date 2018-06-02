<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InscriptionEtudiant.ascx.cs" Inherits="GestionEtudiantPFEFinal.InscriptionEtudiant.InscriptionEtudiant" %>





<style type="text/css">
    .auto-style14 {
        height: 43px;
    }
    .auto-style15 {
        height: 63px;
    }
    #TextArea4 {
        width: 606px;
        height: 206px;
    }
    #TextArea5 {
        width: 606px;
        height: 137px;
    }
    #TextArea6 {
        width: 602px;
        height: 151px;
    }
    #TextArea3 {
        width: 345px;
    }
    .auto-style17 {
        width: 1114px;
        height: 67px;
    }
    .auto-style18 {
        width: 2px;
    }
    .auto-style19 {
        width: 6px;
    }
    .auto-style20 {
        width: 13px;
    }
    .auto-style21 {
        width: 27px;
    }
    .auto-style22 {
        width: 31px;
    }
    .auto-style23 {
        width: 37px;
    }
    .auto-style24 {
        width: 40px;
    }
    .auto-style29 {
        width: 1114px;
    }
    .auto-style30 {
        width: 203px;
    }
</style>

<asp:Panel ID="Panel1" runat="server"  Width="534px">
<table >
    <tr>
     <td class ="auto-style14"  ><b><i>Nom*</i></b></td>
     <td class ="auto-style14">
         <asp:TextBox ID="TextBox1" runat="server" Width="214px"></asp:TextBox>
        </td>
     <td class ="auto-style15">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" BackColor="red" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px" style="margin-left: 0px" >&nbsp;Veuillez saisir le nom  &nbsp;</asp:RequiredFieldValidator>
        </td>

    </tr>

    <tr>
        <td class ="auto-style14"><b><i>Prenom*</i></b></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="213px"></asp:TextBox>
        </td> 
         <td class ="auto-style15">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" BackColor="red" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px" style="margin-left: 0px" >&nbsp;Veuillez saisir le Prenom  &nbsp;</asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td class ="auto-style15"><b><i>Email</i></b>*</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox>
        </td>
        <td class ="auto-style15">
           
            <asp:RegularExpressionValidator ID="RegularEmail"        
        ControlToValidate="TextBox3"
        Text="E-mail est invalide"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        BackColor="red" 
        BorderColor ="Black" BorderStyle="Solid" BorderWidth="1px" 
        ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="X-Small" Width="212px" Height="16px"
          
                
                runat="server" ></asp:RegularExpressionValidator>
           
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" BackColor="Red" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px" style="margin-left: 0px" >&nbsp;Veuillez saisir votre Email &nbsp;</asp:RequiredFieldValidator>
         
       

        </td>
    </tr>

<tr>
    <td class ="auto-style15"><b><i>Telephone *</i></b></td>
    <td class="auto-style15">
        <asp:TextBox ID="TextBox4" runat="server" Width="212px"></asp:TextBox>
    </td>
    <td>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  BackColor="red" ControlToValidate="TextBox4"
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px" style="margin-left: 0px" >&nbsp;Veuillez saisir votre telephone &nbsp; 
         </asp:RequiredFieldValidator>
          <br />
         <asp:RegularExpressionValidator ID="RegTel" runat="server"  ControlToValidate="TextBox4" Text="Telephone  invalide"
        ValidationExpression="^\d+$"
        BackColor="red" 
        BorderColor ="Black" BorderStyle="Solid" BorderWidth="1px" 
        ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
        Font-Size="X-Small" Width="212px" Height="16px"></asp:RegularExpressionValidator>


    </td>

</tr>
    <tr><td>
        &nbsp;</td></tr>
    <tr><td>Nationnalité</td><td>            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Value="Tunisienne"></asp:ListItem>
                <asp:ListItem Value="Etrangère"></asp:ListItem>
                
            </asp:DropDownList>
        </td></tr>

<tr>
    <td>
       
    </td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Annuler" OnClick="Button1_Click" Width="143px" />
    </td>
    <td>
        <asp:Button ID="Button2" runat="server" Text="Suivant" OnClick="Button2_Click" Width="144px" />
    </td>
</tr>
</table>
 </asp:Panel>
<asp:Panel ID="Etrangere" runat="server" Height="308px">
    <table>
    <tr><td class ="auto-style14">
        <br />
        <b><i>Numero Passport</i></b><br /> </td><td class ="auto-style14"><asp:TextBox ID="Passport" runat="server" Width="214px" OnTextChanged="Passport_TextChanged"></asp:TextBox></td><td>

   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="blue" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="Passport" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="White" Height="16px" Text="CIN est invalide" ValidationExpression="^[0-9]{8}$" Width="212px"></asp:RegularExpressionValidator>

   
    </td></tr>
    <tr><td class ="auto-style14">
        <br />
       <b><i> Nationnalité</i></b></td><td class ="auto-style14">            
        <asp:DropDownList ID="DropDownList10" runat="server">
                              
            </asp:DropDownList>
        </td></tr>
        <tr><td class ="auto-style14">
            <br />
            <b><i>Adresse</i></b></td><td class ="auto-style14"><asp:TextBox ID="adresse" runat="server" Width="215px"></asp:TextBox></td></tr>
        <tr><td>
            <br />
            <b><i>Formation</i></b></td><td class ="auto-style14"><asp:TextBox ID="formation" runat="server" Width="215px"></asp:TextBox></td></tr>
    <tr><td>
        <br />
        <b><i>Date De Naissance</i></b> </td><td class ="auto-style14">
            <asp:TextBox ID="naiss" runat="server" Width="215px"></asp:TextBox>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td><td class ="auto-style14">
        <asp:Button ID="Button23" runat="server" Text="Retour" OnClick="Button23_Click" Width="130px" />
        </td>
            <td class ="auto-style14">
        <asp:Button ID="Button7" runat="server" Text="Suivant" OnClick="Button23_Click" Width="130px" />
        </td>
        </tr>
        </table>
</asp:Panel>

<asp:Panel ID="Panel4" runat="server" Height="308px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2éme cycle<br />
    <br />
    <table>
        <tr><td class="auto-style30">Etablissement<br /> </td>
   
    <td><asp:TextBox ID="TextBox17" runat="server" Width="194px"></asp:TextBox></td></tr>
    <tr><td class="auto-style30">
    Spécialité&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> </td>
    <td><asp:TextBox ID="TextBox18" runat="server" Width="193px"></asp:TextBox></td></tr>
    
   <tr><td class="auto-style30"> Moyenne<br /> </td><td><asp:TextBox ID="TextBox19" runat="server" Width="190px"></asp:TextBox></td></tr>
    
   <tr><td class="auto-style30"> Note Anglais<br /> </td><td><asp:TextBox ID="TextBox20" runat="server" Width="194px"></asp:TextBox></td></tr>   
    
   <tr><td class="auto-style30"> Note Francias<br /> </td><td><asp:TextBox ID="TextBox21" runat="server" Width="184px"></asp:TextBox></td></tr>
   
   <tr><td class="auto-style30"> <asp:Button ID="Button16" runat="server" OnClick="Button1_Click" Text="Annuler" Width="143px" /></td>
    <td><asp:Button ID="Button17" runat="server" OnClick="Button1_Click" Text="Suivant" Width="143px" /></td></tr>
    
      </table>

    </asp:Panel>


<asp:Panel ID="Panel2" runat="server">
<table >
    <tr>
     <td class ="auto-style14"  >Civilité</td>
     <td class ="auto-style14">
         
         <asp:RadioButton ID="RadioButton1" runat="server" Text="Homme" />
         <asp:RadioButton ID="RadioButton2" runat="server" Text="femme" />
        </td>
    

    </tr>

    <tr>
        <td class ="auto-style14">DateDeNaissance</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="213px"></asp:TextBox>
        </td> 
         
    </tr>

    <tr>
        <td class ="auto-style15">Nationnalite</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="Choisir Nationlité "></asp:ListItem>
                <asp:ListItem Value="Tunisienne"></asp:ListItem>
                <asp:ListItem Value="Etrangère"></asp:ListItem>
                
            </asp:DropDownList>
        </td> 
     
    </tr>

<tr>
    <td class ="auto-style15">CIN</td>
    <td class="auto-style15">
        <asp:TextBox ID="TextBox8" runat="server" Width="212px"></asp:TextBox>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" BackColor="red" 
  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
  ForeColor="White" Font-Bold="True" Font-Names="Verdana" 
  Font-Size="X-Small" Width="212px" Height="16px">&nbsp;Veuillez saisir le CIN&nbsp;
</asp:RequiredFieldValidator>
        </td>
   

</tr>

<tr>
    <td>
       
    </td>
    <td>
        <asp:Button ID="Button3" runat="server" Text="Annuler" OnClick="Button3_Click" Width="143px" />
    </td>
    <td>
        <asp:Button ID="Button4" runat="server" Text="Suivant" OnClick="Button4_Click" Width="144px" />
    </td>
</tr>
</table>
 </asp:Panel>

<asp:Panel ID="Panel3" runat="server">
<table >
    <tr>
     <td class ="auto-style14"  >Année Bac</td>
     <td class ="auto-style14">
         <asp:TextBox ID="TextBox9" runat="server" Width="214px"></asp:TextBox>
        </td>
    

    </tr>

    <tr>
        <td class ="auto-style14">Specialité Bac</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Spcialité Bac"></asp:ListItem>
                <asp:ListItem Value="Mathematique"></asp:ListItem>
                <asp:ListItem Value="Informatique"></asp:ListItem>
                <asp:ListItem Value="Science "></asp:ListItem>
                <asp:ListItem Value="Technique "></asp:ListItem>
            </asp:DropDownList>
        </td> 
        
    </tr>

    <tr>
        <td class ="auto-style15">Adresse</td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server" Width="212px"></asp:TextBox>
        </td>
       
    </tr>

<tr>
    <td class ="auto-style15">Code Postal</td>
    <td class="auto-style15">
        <asp:TextBox ID="TextBox12" runat="server" Width="212px"></asp:TextBox>
    </td>
   

</tr>
    <tr><td></td><td>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="Choisir formation"></asp:ListItem>
            <asp:ListItem Value="1ére cycle"></asp:ListItem>
            <asp:ListItem Value="2éme cycle"></asp:ListItem>
        </asp:DropDownList>
        </td></tr>

<tr>
    <td>
       
    </td>
    <td>
        <asp:Button ID="Button5" runat="server" Text="Annuler" OnClick="Button5_Click" Width="143px" />
    </td>
    <td>
        <asp:Button ID="Button6" runat="server" Text="Suivant" OnClick="Button6_Click" Width="144px" />
    </td>
</tr>
</table>
 </asp:Panel>


<asp:Panel ID="Panel5" Visible ="false"  runat="server">
<table style="width: 752px; margin-right: 106px">
    <tr>
        <td class="auto-style18">
            <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Identifiant ESPRIT :</h3>
        </td>
        <td class="auto-style19">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        

    </tr>
    <tr>
        <td class="auto-style20">
            <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Email Esprit</h3>
        </td>
        <td class="auto-style22">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
 </tr>
<tr>
    <td class="auto-style21">
        <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Password</h3>
        <p class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            Confirmation
        </p>
    </td>
    <td class="auto-style23">
        <asp:TextBox ID="TextBox15" runat="server" Width="183px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox16" runat="server" OnTextChanged="TextBox16_TextChanged" Width="183px"></asp:TextBox>
        <br />
        <br />
    </td>
    <tr > <td></td>Ajouter Photo<td>
        <asp:FileUpload runat="server" id="FileUpload1"/>

</td></tr>
<tr>
    <td>
        <asp:Button ID="Button15" runat="server" Text="Annuler" Width="114px" OnClick="Button15_Click" />
    </td>
    <td class="auto-style24">

        <asp:Button ID="Button14" runat="server" Text="Inscription" Width="256px" OnClick="Button14_Click" />
    </td>
</tr>
</table>
</asp:Panel>








<asp:Panel ID="Panel6" Visible ="false"  runat="server">
<table style="width: 752px; margin-right: 106px">
    <center>
        <caption>
            <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CV&nbsp;</h3>
            <h3 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                &nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </h3>
        </caption>

    </center>
    <tr><td class="auto-style29">


        Nom et Prenom :
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>


        <br />


        <br />


        </td></tr>
    <tr><td class="auto-style29">Date de Naissance:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        </td></tr>
       <tr><td class="auto-style29"> Adresse : <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> 
           <br />
           </td></tr>
           <tr><td class="auto-style29"> civilité : <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> 
               <br />
               </td></tr>
           <tr><td class="auto-style29"> Année Bac et Speciajlité : <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> 
               <br />
               </td></tr>
       <tr><td class="auto-style17"> Stage :&nbsp;
           <asp:TextBox ID="TextBox22" runat="server" Width="219px"></asp:TextBox>
           <br />
           </td></tr>
   <tr>
        <td class="auto-style29">Stage Ajoutée</td>
        <td>
            <textarea id="TextArea2" name="S2" contenteditable ="false" runat="server" style="width: 436px; height: 90px;" readonly="readonly" ></textarea></td>
        <td>
            
            <asp:Button ID="Button20" runat="server" Text="Ajouter Satge" Width="153px" OnClick="Button20_Click" />
            
        </td>    
    </tr>
           <tr><td class="auto-style29"> Compétance : 
               <br />
               &nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox23" runat="server" style="margin-left: 0px" Width="191px"></asp:TextBox>
               </td></tr>
      <tr>
        <td class="auto-style29">Copétance Ajoutée</td>
        <td>
            <textarea id="TextArea1" name="S2" contenteditable ="false" runat="server" style="width: 436px; height: 90px;" readonly="readonly" ></textarea></td>
        <td>
            
            <asp:Button ID="Button21" runat="server" Text="Ajouter Compétance" Width="153px" OnClick="Button21_Click" />
            
        </td>    
    </tr>
           <tr><td class="auto-style29"> Loisir:  
               <br />
               <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
               </td></tr>

      <tr>
        <td class="auto-style29">Loisir Ajoutée</td>
        <td>
            <textarea id="TextArea3" name="S2" contenteditable ="false" runat="server" style="width: 436px; height: 90px;" readonly="readonly" ></textarea></td>
        <td>
            
            <asp:Button ID="Button22" runat="server" Text="Ajouter Loisir" Width="153px" OnClick="Button22_Click" />
            
        </td>    
    </tr>


           <tr><td class="auto-style29"> Langue:<br />
               <br />
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Annuler" Width="114px" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Créer CV" Width="114px" />
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td></tr>








</table>
</asp:Panel>
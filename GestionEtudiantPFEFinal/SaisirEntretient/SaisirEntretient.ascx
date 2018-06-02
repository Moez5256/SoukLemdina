<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SaisirEntretient.ascx.cs" Inherits="GestionEtudiantPFEFinal.SaisirEntretient.SaisirEntretient" %>

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
    .auto-style25 {
        width: 127px;
    }
    .auto-style26 {
        width: 155px;
    }
    </style>
<table>
    <tr>
<td class="auto-style1"><u style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><b>Veuillez entrer le CIN/Passport de&nbsp;l’étudiant:</b></u></td>
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

<asp:Label ID="Label1" Visible="False" BackColor="Red" runat="server" Text="Veuillez verifier l'dentifiant"></asp:Label>
<asp:Label ID="Label2" Visible="False" BackColor="Red" runat="server" Text="Les notes de l'Etretient  de ce Etudiant sont déja Affecter"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <td class="auto-style25"><b><i>CIN&nbsp;/Passport&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </i></b></td>
        <td class="auto-style26">
            <asp:Label ID="Cin" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
        <tr> 
             <td class="auto-style25"><b><i>Note Francais</i></b></td>
        <td class="auto-style26">
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 42px" Width="150px"></asp:TextBox>


        </tr>
         <tr> 
             <td class="auto-style25"><b><i>Note Anglais</i></b></td>
        <td class="auto-style26">
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 43px" Width="151px"></asp:TextBox>


        </tr>
         <tr> 
             <td class="auto-style25"><b><i>Note Psyco-Technique</i></b></td>
        <td class="auto-style26">
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 45px" Width="150px"></asp:TextBox>


        </tr>
        
        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </caption>
        </table>
</center>
        <asp:Button ID="Button4" runat="server" Height="29px" OnClick="Button4_Click" style="margin-left: 486px" Text="Confirmer" Width="171px" />


    <br />
    <br />
    <br />
       
</asp:Panel>
<asp:Panel ID="Modifier" Visible="false" runat="server" Height="28px" Width="104px">
    <asp:Button ID="Button11" runat="server" Text="Modifier Les Notes" OnClick="Button11_Click" />

    </asp:Panel>
<asp:Panel ID="Panel10" Visible="false" runat="server" Height="627px">

     <h5 class="blue" style="box-sizing: border-box; margin-top: 20px; color: rgb(71, 143, 202) !important; font-size: 22px; font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin-bottom: 10px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cordonnée De L&#39;Etudiant&nbsp;<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h5>

                       <asp:Image ID="Image2" runat="server" Height="155px" style="margin-left: 741px; margin-top: 0px;" widh="80" Width="155px" />

     &nbsp;<table style="height: 397px; width: 783px">
    <tr>
        <td class="auto-style5">Nom et Prenom</td>
        <td class="auto-style18">
            <asp:Label ID="np" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>

<tr>
        <td class="auto-style7">Note Francais</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox17" runat="server" Height="19px" Width="291px"></asp:TextBox>
        </td>
    </tr>

<tr>
        <td class="auto-style9">Note Anglais</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox18" runat="server" Height="18px" Width="291px"></asp:TextBox>
        </td>
    </tr>



<tr>
        <td class="auto-style13">Note Psy :</td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox19" runat="server" Height="18px" style="margin-top: 0px" Width="290px" ReadOnly="True"></asp:TextBox>
        </td>
    <td class="auto-style13">
            &nbsp;</td>
    </tr>



<tr>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style18">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Height="29px" style="margin-left: 0px" Text="Valider" Width="152px" OnClick="Button10_Click" />
     </td><td>
            &nbsp;</td>
    </tr>
    </table>
</asp:Panel>
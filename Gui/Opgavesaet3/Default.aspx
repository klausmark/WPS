<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gui.Opgavesaet3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Opgavesæt 3</h1>
    <h2>Opgave 3.1</h2>
    <p>Denne opgave er en videreudvikling af opgave 1.3, som så ud noget i denne retning:</p>
    <img src="Images/opgave31.PNG"/>
    <p>De vigtige elementer her er de to tekstbokse, knappen og en label ved navn lblMessage.</p>
    <p>Vi skal nu tilføje noget programkode, så et klik på Send-knappen vil vise en meddelelse i labelen lblMessage, f.eks. hvis jeg bruger programmet ville det svare: Hej Kristian, din e-mail er ktlh@smartlearning.dk.</p>
    <p>Du skal gøre følgende:</p>
    <ul>
        <li>Dobbelt-klik på knappen Send – det vil åbne Default.aspx.cs og placere cursoren i eventhandleren btnSend_Click (i min løsning hedder knappen btnSend)</li>
        <li>Du skal nu tilføje den programkode, som i labelen lblMessage viser følgende tekst: Hej + indholdet af øverste tekstboks + , din e-mail er + indholdet af nederste tekstboks</li>
    </ul>
    <h2>Opgave 3.2</h2>
    <p>Når du har løst opgave 3.1, har du sikkert opdaget at hvis brugeren klikker på knappen uden at indtaste noget i tekstboksene, vil beskeden i lblMessage ikke give mening, så der skal tilføjes noget:</p>
    <ul>
        <li>Validation Controls, som sikrer at der indtastes noget i tekstboksene (en RequiredFieldValidator) til hver tekstboks</li>
        <li>For at sikre at der indtastes noget der ligner en email i nederste tekstboks kan du anvende en RegularExpressionValidator, som kan sættes op til at tjekke at indholdet er i overensstemmelse men en emails syntax (snabel-a og punktum osv.); men den tjekker dog ikke om adressen faktisk eksisterer.</li>
    </ul>
    <h2>Opgave 3.3</h2>
    <p>av en web side med en meget enkel grænseflade:</p>
    <ul>
        <li>Tre tekstbokse, hvor brugeren skal indtaste hhv. timer, minutter og sekunder</li>
        <li>En knap som skal starte en beregning (se nedenfor)</li>
        <li>En label hvor resultatet af beregningen skal vises</li>
    </ul>
    <p>Beregningen skal vise hvor mange sekunder det indtastede antal timer, minutter og sekunder udgør.</p>
    <p>F.eks.</p>
    <p>Input: 1 time, 4 minutter, 12 sekunder</p>
    <p>Output: 3852 sekunder</p>
    <p><strong>En lille ekstra opgave hvis du har tid og lyst:</strong></p>
    <p>Du vil sikkert opdage når du tester dit program, at hvis der klikkes på knappen mens tekstfelterne er tomme, så går giver programmet fejl.</p>
    <p>Derfor kan det være en god ide at tilføje Validation Controls, som kan sikre at tekstboksene har indhold, og at indholdet er numerisk (heltal …. dvs. integers)</p>
</asp:Content>

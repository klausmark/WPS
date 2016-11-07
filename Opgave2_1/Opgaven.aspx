<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Opgaven.aspx.cs" Inherits="Opgaven" %>

<asp:Content ID="Opgaven" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Opgavesæt 2</h1>
    <h2>Opgave 2.1</h2>
    <p>Denne opgave handler om at lave et web site for virksomheden Valdemars Vin, som er en en-mands virksomhed, der importerer vin fra Frankrig, og sælger det til kunder i Danmark.</p>
    <p>Start et nyt web site og hent de filer du skal bruge opgave.</p>
    <p>De findes under ugens modul , hvor du også fandt denne opgavetekst. Du skal hente filerne WalthersWines.zip, som indeholder en database-fil, og filen WalthersImages.zip, som indeholder de billeder, der skal bruges. I tabellen Wine i databasen er et felt Picture, som indeholder navnet på den billedfil, som er associeret med den enkelte vin.</p>
    <p>I Solution Explorer tilføjer du en ASP.NET folder App_Data, og i denne folder placerer du filen WalthersWines.mdf (unzip WalthersWines.zip). Tilføj også en folder Images, og i denne folder placerer du billedfilerne fra WalthersImages.zip.</p>
    <p>Websitet skal bestå af 5 sider (.aspx-sider) – se sitemap nedenfor.</p>
    <p>Den overordnede struktur på siderne er noget med en header med logo (find et), firmanavn og en menu/navigation, plads til noget indhold, og så en footer i bunden – gerne med copyright-info og link til webmaster.</p>
    <p>Kender du til MasterPages og ContentPages i Visual Studio kan du bruge det, og ellers så lav enkeltstående sider. Menuen/navigationen skal selvfølgelig fungere.</p>
    <img src="Images/sitemap.PNG"/>
    <p>Valdemars database består af 6 tabeller, og ser sådan ud:</p>
    <img src="Images/tabeller.PNG"/>
    <p>De enkelte sider skal have noget indhold:</p>
    <ul>
        <li>Home: Måske et billede, måske noget tekst om Valdemars Vin – det er helt op til dig</li>
        <li>About Us: information om forretningen: adresse, telefonnr, email osv.</li>
        <li>Wines: en GridView Control (fra Data-delen af Visual Studios Toolbox). I denne control skal vises oplysninger om vinene, dvs. fra Wine-tabellen felterne WineName, WineDescription, Country, District, Year, Price</li>
    </ul>
    <p>Når man trækker en GridView control fra toolboxen ind på siden (i design-view), åbnes et lille panel (en wizard), hvori man opsætter forbindelsen til databasen</p>
    <ul>
        <li>i Choose Data Source vælges New Data Source og derefter SQL database</li>
        <li>i næste panel klikkes på New Connection da vi jo ikke tidligere på dette web site har  etableret en connection mellem .aspx-siderne og databasen</li>
        <li>Data Source: vælg Microsoft SQL Server Database file</li>
        <li>Database file name: browse til dit web sites App_Data folder (hvor du placerede databasen)  og vælg filen WalthersWines.mdf</li>
        <li>det anbefales ikke at ændre navn på Connection’en; men lad den beholde default-navnet  ConnectionString</li>
        <li>følg wizardens forslag, vælg tabellen Wines og deri de nævnte felter</li>
    </ul>
    <p>Når wizarden er færdig, så test siden for at tjekke at alt fungerer</p>
    <ul>
        <li>Districts: en GridView control som viser District og DistrictDescription fra District-tabellen - der skal opsættes en Data Source Control, næste som beskrevet ovenfor, MEN  da vi allerede har en Connection til databasen genbruger vi den. I stedet for at vælge New Connection, vælger vi DropDown-listen den vi gemte i web.config-filen  (ConnectionString nævnt ovenfor) - følg wizardens forslag, vælg tabellen District og deri de nævnte felter</li>
        <li>MyPage: kan du lade være tom indtil videre (vi fylder indhold på i en senere opgave )</li>
    </ul>
    <p>Jeg ved det er en stor og måske kompliceret mundfuld; men læs bogen og brug de uploadede programeksempler, og brug forummet flittigt, hvis du sidder fast undervejs.</p>
    <p>Jeg vil antage, at du skal bruge 3-4 timer på denne opgave.</p>
    <p>Som tidligere nævnt vil jeg bede dig aflevere dine løsninger som én fil. Du kan hente pakke/komprimeringsprogrammet 7-zip gratis her: http://www.7-zip.org/, og det kan håndtere de mest brugte komprimerings-formater .zip, .rar og .7z.</p>
</asp:Content>


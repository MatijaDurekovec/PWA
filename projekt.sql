-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 02:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime_korisnika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prezime_korisnika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_korisnika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_korisnika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sifra_korisnika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime_korisnika`, `prezime_korisnika`, `email_korisnika`, `username_korisnika`, `sifra_korisnika`, `vrijeme`) VALUES
(1, 'Matija', 'Đurekovec', 'mdurekove@tvz.hr', 'matija1233', 'marko123', '2021-05-13 10:40:01'),
(2, 'Natalija', 'Špehar', 'natalija@123.hr', 'natal123', 'natalija123', '2021-05-13 10:47:50'),
(3, 'Marko', 'Maric', 'markec123@tvz.hr', 'markec123', 'marko123', '2021-05-13 11:32:54'),
(4, 'Dominik', 'Brezak', 'dbrezak@tvz.hr', 'Brex123', 'dominik123', '2021-05-13 11:37:49'),
(5, 'Ana', 'Hrvat', 'anahrvat@tvz.hr', 'hrvat123', 'hrvatica123', '2021-05-13 11:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `kategorija` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `naslov` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kratki_sadrzaj` char(190) COLLATE utf8_unicode_ci NOT NULL,
  `sadrzaj` text COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arhiva` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `kategorija`, `naslov`, `kratki_sadrzaj`, `sadrzaj`, `slika`, `arhiva`, `vrijeme`) VALUES
(11, 'GAMING', 'PES navodno ide u penziju, ostaje samo eFootball', 'Konami po svemu sudeći planira još jednom promijeniti naziv svog nogometnog serijala. Umjesto kratice PES mogao bi nas dočekati samo eFootball.', 'Fanovi nogometnog serijala Pro Evolution Soccer iskopali su informaciju da je tvrtka Konami na tržištima Argentine i Brazila podnijela prijavu za registraciju igre zvane eFootball. U sklopu prijave primijećen je i potencijalni novi logotip koji je malo drugačijeg dizajna nego do sada korišteni logo za eFooball PES igre.\r\n\r\nOno što se u cijeloj stvari zapravo najviše ističe jest izostavljanje kratice PES. Moguće je tako da se od ove godine Konamijev nogomet više neće zvati PES nego samo eFootball 2022. Nije službeno potvrđeno, ali je lako moguće s obzirom da Konamijevu igru ove godine čekaju velike promjene na temelju prelaska na drugi engine. Novo poglavlje u povijesti tog serijala moglo bi još jednom započeti pod novim imenom.\r\n\r\nKažemo još jednom jer je Konamijev nogometni serijal već nekoliko puta mijenjao nazive. U devedesetima je tako bio International Superstar Soccer, pa je kasnije postao Goal Storm, pa ISS Pro, pa ISS Pro Evolution te u konačnici Pro Evolution Soccer.\r\n\r\nDodavanjem eFootballa u naziv 2019. godine Pro Evolution Soccer je sveden na kraticu – PES – koju su fanovi ionako češće koristili. Međutim, u korijenu samog naziva ostao je taj američki Soccer, a PES Amerikancima nikada nije bio posebno interesantan – glavninu prodaje Konami je ostvarivao u Europi i Južnoj Americi.', 'clanak1.jpg', 'N', '2021-05-12 16:16:09'),
(12, 'GAMING', 'Days Gone na PC-u neće imati ray tracing efekte ni podršku za DLSS', 'Ekipa Sony Bend otkrila je sve detalje PC porta svoje igre Days Gone, potvrdivši što će sve biti dostupno, a što neće.', 'Ostalo je još deset dana do izlaska Sonyjeve igre Days Gone u izdanju za PC platformu. Do sada su pojedinosti PC verzije uglavnom bile poznate, no sada je Bend Studio detaljno pojasnio sve što bi moglo zanimati igrače na PC-u.\r\n\r\nPotvrđeno je tako još jednom da će Days Gone na PC-u uključivati sve DLC sadržaje koji su naknadno objavljeni u verziji za PlayStation 4, a to su Survival i Challenge Mode, dodatni dizajnovi za Deaconov motocikl te New Game Plus opcija.\r\n\r\nPonovljeno je da će igra imati podršku za 21:9 i 32:9 monitore, što podrazumijeva prilagodbu sučelja i režiranih animacija. Otkriveno je da će igra podržavati istovremeno kontroliranje različitim uređajima, dakle možete ju igrati mišem/tipkovnicom i kontrolerom u isto vrijeme – premda to valjda nikome nije praktično, ali eto – postoji ta mogućnost da npr. kombinirate kretanje kontrolerom i upravljanje kamerom pomoću miša. Što se kontrolera tiče bit će podržani svi, od DualShocka 4 preko DualSensa do Xboxovih gamepadova, Switch Pro i Steam kontrolera.\r\n\r\nOno što Days Gone neće podržavati u verziji za PC jesu ray tracing efekti. S obzirom na činjenicu da je igra prvotno rađena za PlayStation 4, a ovdje se radi o portu, Sony Bend nije se odlučio na neke drastične zahvate poput dodavanja ray tracinga. Nažalost, ništa neće biti ni od podrške za Nvidijinu DLSS tehnologiju, što bi moglo razočarati one koji se vole igrati na visokim rezolucijama.\r\n\r\nOtkriveno je kako neće biti prebacivanja snimljenih pozicija iz PS4 verzije u PC verziju, a ni obratno. Što se opcija tiče, FOV će se moći postaviti maksimalno na 100 stupnjeva, zamućenje slike će se moći isključiti, itd. Evo pune liste grafičkih postavki u PC verziji Days Gonea:', 'clanak2.jpg', 'N', '2021-05-12 16:16:36'),
(13, 'E-SPORTS', 'FunPlus Phoenix savladao G2 u borbi za IEM Summer 2021', 'U velikom balkanskom derbiju u kom smo gledali bivše saigrače u direktnom okršaju za odlazak na IEM Summer 2021, FunPlus Phoenix je uspeo da napravi iznenađenje i savlada favorizovani G2 Esp', 'Domaći navijači su imali prilike da uživaju u pravom CS:GO spektaklu u okviru trećeg kola zatvorenih kvalifikacija za IEM Summer. Nakon što je FunPlus Phoenix savladao SKADE i BIG, na red je došao G2 koji je preskočio prvu rundu kvalifikacija, da bi u drugoj nadigrao mousesports.\r\n\r\nSa jedne strane braća Kovač i Nemanja „nexa“ Isaković, a sa druge ekipa koju kao menadžer predvodi Petar „Peca“ Marković i za koju je upravo na ovom turniru debitovao Luka „emi“ Vuković uz sve boljeg i boljeg Pavla „Maden“ Boškovića. Iako je G2 Esports po mnogima jedan od najboljih CS:GO timova sveta od kojih se očekuju titule, FPX je dokazao da može da se nosi sa njima, a u meču se posebno istakao finac Jesse „zehN“ Linjala sa 65 fragova i 1.47 rejtingom, kao i sa preko 100 štete po rundi.\r\n\r\nFPX i G2 su razmenili udarce na prve dve mape. FPX je poveo 16-6 pobedom na mapi Train, dok je G2 pregazio rivale 16-3 kada je na red došao Mirage. FunPlus Phoenix je brzo poveo na odlučujućem Infernu, ali je G2 uspeo da se konsoliduje i smanji zaostatak na minimum do poluvremena. U nastavku FPX uspeva da pritisne protivnika igrajući T stranu i dođe do 16-11 pobede čime su obezbedili jedan od tri slota koja vode na završni turnir.\r\n\r\nU drugom meču za prolaz dalje OG je uspeo da savlada Movistar Riders 2-0, dok se za finalni slot danas bore preostala četiri učesnika kvalifikacija. U prvim mečevima dana gledamo veliki derbi između ekipa FaZe Clan i G2 Esports kao i duel mousesports – Movistar Riders. Dok će pobednici ovih mečeva u međusobnom okršaju odlučiti ko uz OG i FunPlus Phoenix ide dalje', 'esports_clanak2.jpg', 'N', '2021-05-12 16:16:54'),
(14, 'E-SPORTS', 'Karmine Corp doneo Francuskoj treću EU Masters titulu', 'Glavni favorit 2021 prolećnog EU Mastersa Karmine Corp je uspeo da dođe do titule u svojoj debitantskoj sezoni u takmičenju savladavši šampiona Engleske BT Excel 3-1 u velikom finalu.', 'Od kako su se prošle sezone pojavili na francuskoj LoL esport sceni, Karmine Corp ne prestaje da privlači ogromno interesovanje koje je na sreću po njihove navijače ispraćeno dobrim rezultatima. Nakon što su osvojili francusku LFL ligu Karmine Corp je nastavio sa nizanjem uspeha i odneo pehar na EU Mastersu.\r\n\r\nOvo je treći put za redom da jedan tim iz francuske osvaja prolećni EU Masters, a ako igrači Karmine Corp-a ostanu na okupu, pitanje je da li će iko moći da ih zaustavi u pohodu na letnju titulu.\r\n\r\nNjihovi mečevi su konstantno obarali rekorde gledanosti EU Mastersa, da bi na kraju samo finale pratilo preko 377.000 istovremenih gledalaca što je nadmašilo sva očekivanja. Karmine Corp je za manje od godinu dana prešao po popularnosti mnoge LEC timove, što je podiglo veliku prašinu i izazvalo mnoštvo diskusija u vezi toga da li i koliko se timovi u elitnoj evropskoj LoL ligi trude da izgrade fan bazu, i koliko je štetan sistem franšize kojim je sprečeno da novi timovi ulaze u takmičenje.\r\n\r\nPodsetimo, Karmine Corp je protutnjao kroz grupnu fazu EU Mastersa sa 6-0 skorom, da bi prvi poraz doživeli od EBL šampiona ŠAIM SE SuppUp u četvrtfinalu, ali i pored poraza u prvoj partiji uspeli su da spreče iznenađenje i preokrenu rezultat u nastavku.\r\n\r\nU polufinalu je pao prvak Španije UCAM Esports Club, dok je BT Excel do finala došao pobedom protiv mousesportsa.\r\n\r\nBT Excel je uspeo da zada prvi udarac u finalu, ali je Karmine Corp uspeo da prelomi sve tri naredne partije u svoju korist zahvaljući kako dobroj timskoj igri, tako i velikom individualnom kvalitetu koji su igrači demonstrirali, pogotovo francuski mid lejner Lucas „Saken“ Fayard koji je svojom igrom zasigurno zaslužio povratak u LEC.', 'esports_clanak3.jpg', 'N', '2021-05-12 16:17:21'),
(15, 'GAMING', 'NOVE IGRE: Ovoga tjedna ponovno postajemo Commander Shepard', 'Ovoga tjedna izlazi jedna nova igra, jedan iščekivani remaster, obećavajuća ekspanzija te konzolaški port vrlo uspješne PC igre.', 'Dugo već nismo imali neku igru prema legendi o Robinu Hoodu. I tehnički gledano Hood: Outlaws and Legends zapravo nije igra o junaku Sherwooda, ali je inspirirana idejom pljačkanja bogatih i davanja siromašnima. Bit će ovo multiplayer igra u kojoj se dva tima po četvero igrača natječu tko će ukrasti više blaga. Pljačke će se moći izvoditi tiho kroz skrivanje od stražara, ili pak glasno kroz izravnu borbu. Malo nas to sve skupa podsjeća na igre iz serijala Payday, s tim da će se akcija ovdje odvijati iz trećeg lica.', 'clanak3.jpg', 'N', '2021-05-12 16:18:11'),
(16, 'TEHNOLOGIJA', 'Xiaomi otvara prvi Mi Store u Osijeku', 'Globalni tehnološki lider Xiaomi otvorit će 15. svibnja 2021. godine s početkom u 10.00 sati prvi Mi Store u Osijeku u sklopu Portanova shopping centra.', 'Četvrti je ovo Mi Store koji će Xiaomi otvoriti na hrvatskom tržištu od 2018. godine kada je otvoren prvi Mi Store u Zagrebu, dok su u 2020. godini otvorena dva Mi Storea, u Splitu te u Rijeci. Otvaranjem Mi Storea u Osijeku, u suradnji s tvrtkom Bijelić Co, Xiaomi širi svoje poslovanje i u istočnom dijelu Hrvatske, čineći na taj način dostupnost svojih proizvoda još lakšim za krajnje korisnike, a što je i prepoznato kroz iznimne rezultate koje je Xiaomi zabilježio u prvom kvartalu ove godine.\r\n\r\nSukladno podacima Canalysa, Xiaomi je u prvom kvartalu 2021. godine zabilježio povijesne rezultate na razini cijele Europe gdje je po prvi put zauzeo 2. mjesto, dok je na području srednje i istočne Europe broj jedan po isporuci pametnih telefona. Zabilježen je godišnji rast od 82% te drži  32% tržišnog udjela. Osim toga, povijesni rezultat postignut je na hrvatskom tržištu – Xiaomi je zauzeo br. 1 u Hrvatskoj prvi put u povijesti.\r\n\r\nOtvorenju Mi Storea će, uz predstavnike Xiaomija za Hrvatsku i Sloveniju te predstavnike tvrtke Bijelić Co, nazočiti predstavnici Xiaomija za srednju i istočnu Europu te nordijsku regiju (Andrew Wong, generalni menadžer Xiaomija za srednju i istočnu Europu te nordijsku regiju; Andrzej Gladki, zamjenik generalnog menadžera Xiaomija za srednju i istočnu Europu te nordijsku regiju).', 'tehnologija1.jpeg', 'N', '2021-05-13 08:51:42'),
(17, 'TEHNOLOGIJA', 'Leakeri: Ovo je stvarno Huawei P50! Nove slike otkrivaju…', 'Već se nekoliko mjeseci šuška o nadolazećoj Huawei P50 liniji telefona koja je već trebala ugledati svijetlo dana, no Huawei ju je odgodio zbog brojnih problema u kojima se nalaze...', 'Kao što su i prve slike prikazivale, Huawei P50 serija će zaista imati dva ogromna kruga na stražnjoj strani, no u svakom od njih će se nalaziti po nekoliko kamera, odnosno senzora. Iako se smatralo da će po dvije kamere biti u svakom krugu, novi renderi pokazuju da će gornji krug kućiti tri kamere, a donji jednu uz koju će se naći LED blic.\r\n\r\nNa renderima se vide i rubovi uređaja te Huawei i dalje ne odustaje od zakrivljenih strana pa je okvir s lijeve i desne zaista jako tanak. Gornja strana je opet poravnana, a na njoj će se naći zvučnik, nešto što izgleda kao ulaz za slušalice (vjerojatno je riječ o IR blasteru ili senzoru za osvjetljenje) te sporedni mikrofon.\r\n\r\nNakon što su fanovi zumirali u nove rendere, otkrivena su slova „Leica 13-90mm) što znači da bi Huawei P50 serija mogla imati promjenjivi optički zum, odnosno periskop kameru. Inače, očekujemo Huawei P50 seriju već ovaj ili idući mjesec, no kako je Huawei i dalje u problemima te nema dovoljno čipova za proizvodnju velikog broja novih telefona, zaista nije sigurno kada novi flagshipi stižu.', 'tehnologija2.jpeg', 'N', '2021-05-13 08:56:09'),
(18, 'TEHNOLOGIJA', 'Ovo je Poco M3 Pro 5G – Iskupljenje za obični M3?', 'Poco se zaista trudi promovirati kao zaseban brend te u njihovom novom pokušaju da učine isto, poslat će Poco M3 Pro telefon. Iako se obični Poco M3 činio kao nevjerojatan telefon za cijenu.', 'Nakon odličnog Poco X3 NFC i Poco X3 Pro, stiže znatno jeftiniji Poco M3 Pro koji bi trebao promijeniti dizajn običnog M3, ali i neke unutarnje komponente koje su bile djelomično krive za loše utiske koje je na nas ostavio M3.\r\n\r\nRenderi prikazuju Poco M3 Pro s promijenjenim dizajnom stražnje strane, ali i dalje jarkim i veselim bojama poleđine. Ogromnu horizontalnu grbu na M3 modelu zamijenila je nova koja se ne čini dvokatnom kao u prethodnika. Barem na renderima, Poco M3 Pro izgleda jako lijepo.\r\n\r\nNaspram Poco M3 koji je imao Snapdragon 662 i bome trzao u radu (za što je djelomično kriv i softver), Poco M3 Pro navodno stiže s jednim od MediaTek Dimensity čipova, a mi se iskreno nadamo da je barem neki iz 700 serije što bi donijelo značajan skok u performansama. Naravno, kako će imati Dimensity čip, Poco M3 Pro će imati podršku za 5G mreže pa se možda bude zvao i Poco M3 Pro 5G.\r\n\r\nZanimljivo je to da će se Poco X3 NFC prestati prodavati baš kada Poco M3 Pro iziđe na tržište i to po sličnoj cijeni kao i X3 NFC. Svejedno, rado ćemo dati i ovom modelu šansu ako stigne u Europu jer ako ništa, dobrih, a jeftinih telefona nikada dosta.', 'tehnologija3.jpeg', 'N', '2021-05-13 08:57:15'),
(19, 'TEHNOLOGIJA', 'Na svijetu najviše developera ima za JavaScript, Rust je najbrže rastući programski jezik', 'Diljem svijeta trenutno postoji 24,3 milijuna developera softvera, a većina njih i dalje pri radu koristi JavaScript, što uključuje CoffeeScript i Microsoftov JavaScript superset jezik.', 'Ove podatke ponudio je SlashData, a tiču se prvog kvartala ove godine. Iako bi se možda ti podaci nekome neupućenom mogli činiti čudni, zapravo su realni. Jer, JavaScript je potreban u Googleovom AngularJS, Facebookovom Reactu i Vue.js. Stoga, 13,8 milijuna developera koji rade s JavaScriptom nisu neko iznenađenje.\r\n\r\nOsim tog programskog jezika iznimnu popularnost kod developera imaju Python (10,1 milijun developera) i Oracleova Java (9,4 milijuna developera). Ostali programski jezici na listi deset najpopularnijih su C/C++ (7,3 milijuna) C# (6,5 milijuna), PHP (6,3 milijuna), alati za vizualni razvoj (3,3 milijuna), Kotlin (2,6 milijuna), Swift (2,5 milijuna) i Go (2,1 milijun).\r\n\r\nTakođer, obzirom da se Java veže uz JavaScript, programeri se iz tog razloga u tolikoj mjeri okreću tom jeziku. Samim time, proći će još podosta godina prije nego se promijeni aktualna situacija. Ali, dok se sve to ponavlja iz kvartala u kvartal, potrebno je spomenuti Rust.\r\n\r\nTaj programski jezik zabilježio je najbrži rast, trenutno ga koristi 1,3 milijuna developera i 13. je na listi najpopularnijih. Naime, on kombinira brzinu i kontrolu \"low level\" programskih jezika sa sigurnošću i dobrim alatima kakvi se mogu vidjeti kod \"high level\" jezika. Rust je lako pisati, čitati, debuggirati, a brz je.\r\n\r\nTu brzinu mnogi bi programeri voljeli iskoristiti za web development. I mogu, ali uz pomoć frameworka koji se zove Rocket. Sasvim sigurno, Rust će uz pomoć WebAssemblyja imati važnu ulogu u budućnosti. Vidjet ćemo kroz brojke u drugom kvartalu koliko je još developera to prepoznalo.', 'tehnologija5.jpeg', 'Y', '2021-05-13 08:58:33'),
(20, 'TEHNOLOGIJA', 'Potpuni zaokret: Musk šokirao kriptozajednicu objavom da više nije moguće kupiti Teslu bitcoinom', 'Iz Tesle su objasnili da ne odustaju do kriptovaluta, već će pričekati s korištenjem dok se ne ispune neki bitni uvjeti.', 'Šef Tesle Elon Musk šokirao je tržište kriptovaluta objavom na Twitteru kako Tesla više neće primati bitcoin kao platežno sredstvo za svoja vozila. I to zbog pomalo neobičnog razloga.\r\n\r\nMusk je zapravo na Twitteru objavio presliku priopćenja Tesle u kojem se pojašnjava njihova najnovija odluka vezana za bitcoin, dok su istovremeno otvorili vrata mogućnosti korištenja kriptovaluta koje imaju daleko manje štetan utjecaj na okoliš.\r\n\r\nTesla je suspendirala kupovinu svojih vozila putem bitcoina. Zabrinuti smo sve većim korištenjem fosilnih goriva za rudarenje bitcoina i njegove transakcije, osobito ugljena, koji ima najgore štetne emisije od svih goriva. Kriptovaluta je dobra ideja na više razina i vjerujemo da ima obećavajuću budućnost, no to ne može doći po visoku cijenu po okoliš. Tesla neće prodavati svoj bitcoin i namjeravamo ga koristiti za transakcije čim se rudarenje prebaci na obnovljive izvore energije. Isto tako gledamo druge kriptovalute koje koriste manje od jedan posto energije/transakcije bitcoina, piše u Muskovoj objavi.\r\n\r\nNakon ove objave vrijednost bitcoina na kriptoburzama pala je u jednom trenutku i do 15 posto na vrijednost nešto veću od oko 39.000 eura, a trenutno se nalazi na nešto više od 42.000 eura. Zbog nastale panike, na nekim kriptoburzama došlo je i do prekida rada.\r\n\r\n\"Sretan brak\" između Tesle i bitcoina tako je trajao svega nekoliko mjeseci, jer ju, prisjetimo se, iz Tesle u veljači otkrili da su kupili bitcoina u vrijednosti od 1,5 milijardi dolara i prihvatili ga kao platežno sredstvo za kupovinu svojih vozila. Ta objava dala je velik legitimitet najjačoj kriptovaluti te pridonijela njezinom prihvaćanju kao legitimnog alternativnog platežnog sredstva.\r\n\r\nŠto se rudarenja bitcoina tiče, ono trenutno troši 66 posto više električne energije nego što je to bio slučaj 2015. godine, a emisije ugljika vezane za to vjerojatno će bit na udaru sve oštrijih kritika, piše u izvješću Citigroup Inc.\r\n\r\nReakcije iz kriptozajednice nisu izostale.\r\n\r\nPa valjda bi on (Musk) sve provjerio prije nego što je prihvatio bitcoin? Vrlo je čudno i zbunjujuće vidjeti ovaj brzi obrat, rekao je Nic Carter, osnivač i partner tvrtke Castle Island Ventures, koja se fokusira na ulaganja u javnu blockchain tehnologiju. Carter je ujedno i jedan od glavnih branitelja energije koja se koristi za rudarenje bitcoina.', 'tehnologija6.jpeg', 'Y', '2021-05-13 08:59:06'),
(21, 'YOUTUBE', 'Moglo bi vas iznenaditi koji video Hrvati danas najviše gledaju na YouTubeu', 'TRENDING u Hrvatskoj na YouTubeu standardno je pun Zadruge i cajki, ali je jedan video u samo 24 sata dospio na vrh.', 'U manje od 24 sata snimka je pregledana 307 tisuća puta, a Albinu osim Hrvata gledaju fanovi Eurosonga u cijeloj Europi. Kritike na njezin nastup su sjajne iako se stajling nekima nije svidio.Na drugom mjestu trendinga je intervju s Tarom Simov, koja je izbačena iz bizarnog televizijskog programa Zadruga nakon što je danima bila agresivna i razbijala unutrašnjost kuće u kojoj natjecatelji borave. \r\n\r\nTreći najgledaniji video u Hrvatskoj je spot pjevačice Nikolije za pjesmu Sve bih. Novu pjesmu kćeri Vesne Zmijanac pogledalo je 800 tisuća ljudi diljem Balkana u posljednja tri dana.', 'youtube1.jpg', 'N', '2021-05-13 09:00:30'),
(22, 'YOUTUBE', 'Kate i princ William pokrenuli YouTube kanal, skupili milijun pregleda u jednom danu', 'VOJVODA i vojvotkinja od Cambridgea, princ William i Kate Middleton, pokrenuli su svoj YouTube kanal. \r\nVijest su objavili na Twitteru. \"Sad smo i na YouTubeu\", piše u objavi.', 'Na njihovom je YouTube kanalu zasad samo jedan kratki video u trajanju od 25 sekundi, a u njemu su kratke scene njihovog izvršavanja obaveza kao članova kraljevske obitelji.\"Moraš paziti što sad govoriš jer ovi ljudi sve snimaju\", u šali je u videu William rekao Kate. \"Znam\", odgovorila je ona kroz smijeh.\r\n\r\nKratki je video u samo 16 sati pregledan gotovo milijun puta, a kanal već ima 197 tisuća pretplatnika.', 'youtube2.jpg', 'N', '2021-05-13 09:01:04'),
(23, 'YOUTUBE', 'Mladi ribar Luka (11) ima potpuno drugačiji YouTube kanal nego njegovi vršnjaci', 'MLADI ribar je YouTube kanal na kojemu videozapise objavljuje 11-godišnji Luka Prpić iz Senja.\r\n\r\nLukin YouTube kanal potpuno je drugačiji od onih kakve rade i vole njegovi vršnjaci, budući', 'Na YouTube kanalu Mladi Ribar objavljeno je nekoliko recepata, a Luka je svoju publiku do sada učio spremati teletinu ispod peke, oslića na dva načina, svinjska rebarca u pećnici, lubina u soli, šampjera u pećnici, brujet od ugora, a dao je i neke praktične savjete za ribolovce.Ime i prezime dječaka koji je oduševio sve generacije koje traže recepte na YouTubeu otkrila je plavakamenica.hr.', 'youtube3.jpg', 'N', '2021-05-13 09:01:35'),
(24, 'YOUTUBE', 'Mama otvorila YouTube kanal na kojem uči ljude praktičnim životnim vještinama', 'ODRASTANJE nije uvijek zabavno i nekad nosi puno obveza. Odrasli moraju kuhati, prati rublje, glačati, spremati i još puno toga, a neki su te vještine primorani savladati tijekom djetinjstva', 'Otvorila je YouTube kanal Mom, How Do I? te počela ljude učiti praktičnim životnim vještinama kao što su umatanje darova, čišćenje hladnjaka, šišanje ili slaganje kreveta.\r\n\r\nInspirirao ju je Rob Kenney, tata kojeg je vlastiti otac ostavio kao dijete pa je putem YouTube kanala Dad, how do I? odlučio dati djeci korisne savjete, primjerice kako svezati kravatu ili promijeniti gumu na automobilu.\r\n\r\n\"Mislim da je odlična ideja što je odlučio pomoći ljudima koji nemaju očeve ili nisu s njima bliski\", rekla je \"mama\" u uvodnom videu.\r\n\r\nSvojim pratiteljima je odlučila otkriti nešto više o sebi. Najstarija je od 12 djece te je zbog toga morala znati neke vještine već u najranijoj dobi. Danas ima šestero djece te želi pomoći svima, bez obzira na spol i predznanje, u savladavanju osnovnih životnih trikova.\r\n\r\nDo danas je skupila 55.800 pretplatnika, a njezin najpopularniji video je onaj u kojem je pojasnila kako oprati rublje. Slijede upute kako se pravilno obrijati i napraviti pletenice.', 'youtube5.jpg', 'Y', '2021-05-13 09:02:34'),
(25, 'YOUTUBE', 'Je li ovo govor mržnje koji YouTube treba iskorijeniti?', 'NAKON što je YouTube uklonio ekstremno rasistički nastrojen video konzervativnog komentatora Stevena Crowdera, učinili su to zbog širenja dezinformacija o virusu covid-19.', 'Naime, Crowder i njegovi suvoditelji servirali su više rasističkih komentara vezanih za crnce, ali iz YouTubea poručuju: \"Naša politika zabranjuje širenje mržnje prema bilo kojoj skupini na temelju rase. Iako je sadržaj uvredljiv, video na kanalu Stevena Crowdera ne krši pravila stranice\".\r\n\r\nIako je ovo teško nazvati \"širenjem mržnje\", činjenica je da bi se ovo čak i u najblažem obliku moglo nazvati prilično odvratnim ponašanjem skupine rasista čije su opaske zamišljene kao šale, ali u stvarnosti se radi tek o nizanju neduhovitih rasnih stereotipova koji ne prikrivaju njihov golemi animozitet prema Afroamerikancima.\r\n\r\n\"Slobodno možete ismijavati, karikirati i omalovažavati ljude na temelju rase, sve dok izravno ne izgovorite da ih doslovno mrzite\", komentirao je Will Oremus s portala OneZero.\r\n\r\nOvo nije prvi put da se Crowder našao u problemima zbog graničnog slučaja govora mržnje, a ako se takvo ponašanje nastavi, YouTube mu s vremenom može oduzeti status YouTube Partnera i \"poduzeti prikladne mjere\".', 'youtube6.jpg', 'Y', '2021-05-13 09:02:59'),
(26, 'GAMING', 'Idućeg tjedna bit će prikazan gameplay iz Overwatcha 2', 'Blizzard Entertainment najavio je kako će 20. 5. premijerno prikazati novosti i promjene svoje nadolazeće igre Overwatch 2.', 'Na nedavno održanoj BlizzCon konvenciji dobili smo čitav niz informacija o Overwatchu 2, ali vrlo malo materijala kojima bi sve novosti bile prikazane na djelu. Srećom, nećemo još dugo čekati da tu igru vidimo u pokretu.\r\n\r\nIz Blizzarda su najavili kako će sljedećeg tjedna, 20. 5., održati prezentaciju u kojoj će se fokusirati na PvP komponentu igre te će prikazati nove mape i značajne promjene u načinu na koji se Overwatch igra. U ovoj prezentaciji nećemo vidjeti materijale iz single-player dijela igre, odnosno igrine kampanje s pričom.\r\n\r\nNećemo također vidjeti ni glavnog kreativca Overwatcha, Jeffa Kaplana, koji je napustio Blizzard prije nekoliko tjedana. Njega je zamijenio Aaron Keller, a upravo je on i najavio nadolazeći livestream. Napomenuo je pritom da je igra još uvijek u razvoju te da ono što budu prikazali nije konačni proizvod kojega planiraju lansirati.', 'clanak4.jpg', 'Y', '2021-05-13 09:15:25'),
(27, 'GAMING', 'Najavljena je party igra My Singing Monsters Playground, serijal prvi put dolazi na konzole', 'Big Blue Bubble svoju čudovišnu serenadu dovodi na konzole. My Singing Monsters Playground obećava kompetitivnu zabavu za kućna okupljanja.', 'Ako ste ljubitelj gaminga na mobilnim uređajima, onda vam je teško mogao promaknuti serijal My Singing Monsters, koji će se u 11. mjesecu po prvi puta pojaviti i na konzolama. Ovaj šareni world builder simulator igra se tako da u principu uzgajate čudovišta i pazite na njih kako rastu, a ona vas za uzvrat počaste pjevanjem.\r\n\r\nSamim time My Singing Monsters igre oduvijek su bile zabava za cijelu obitelj, pa tako i djecu, dok je sad developer Big Blue Bubble odlučio otići i korak dalje. Novonajavljeni My Singing Monsters Playground tako će rasplamsati kompetitivnost igrača, jer nas čekaju tri različita moda (od kojih valja izdvojiti ekipna natjecanja) s 20 različitih igara u kojima se možemo nadmudrivati, a sve to uz pjevušenje ovih slatkih stvorenja:\r\n\r\nU prikazu je tako izdvojeno par igara, pa ćemo tako primjerice nastojati srušiti kule i slične strukture prije naših protivnika, trčati na pomičnoj traci, održavati ravnotežu plešući na snježnim grudama i drobeći konkurenciju, ali i još neke stvarčice koje su nam svima poznate iz nekih klasičnih igara sličnih žanrova. Dakle, možda neke igre vuku inspiraciju od postojećih naslova, ali dok vidite ova šašavo dizajnirana bića i koncept pjevanja, bit će vam žao što niste probali.\r\n\r\nMy Singing Monsters Playground igramo u 11. mjesecu 2021.  godine na Microsoftovim i Sonyevim konzolama prošle i trenutne generacije, a ni Nintendo Switch neće proći bez raspjevanih stvorenja.', 'clanak5.jpg', 'Y', '2021-05-13 09:15:53'),
(28, 'GAMING', 'Gusarska igra Skull & Bones odgođena po 101. put, mogla bi izaći 2023.', 'Ubisoft je otkrio kako napreduju njihove trenutne igre u razvoju te još jednom pomaknuo okvirni termin izlaska za igru Skull & Bones.', 'Ubisoftova igra Skull & Bones vrlo bi lako mogla postaviti novi rekord u broju odgoda izlaska. Kratak podsjetnik: ta igra gusarske tematike najavljena je još 2017. godine i trebali smo ju igrati krajem 2018. No, izlazak je potom bio pomaknut na 2019., zatim na 2020., a potom i na 2021. Ne treba vam kristalna kugla da pogodite što se dogodilo sljedeće.\r\n\r\nJučer je tvrtka Ubisoft podnijela svoje financijsko izvješće o poslovanju te je između ostaloga potvrdila još jednu odgodu Skull & Bonesa. Sada je igra u planu za period između četvrtog mjeseca 2022. i četvrtog mjeseca 2023. godine.\r\n\r\nRazlog odgode nije naveden, ali ako je vjerovati prijašnjim informacijama, igra je prošle godine vraćena na sam početak razvoja. Drugim riječima, sve ono što smo do sada vidjeli od nje u konačnici možda uopće neće izgledati ni približno onako kako je izgledalo.', 'clanak6.jpg', 'Y', '2021-05-13 09:16:14'),
(29, 'TEHNOLOGIJA', 'Signal je upravo premašio WhatsApp u kvaliteti poslanih fotografija', 'Sve popularnija aplikacija za razmjenu poruka uskoro će korisnicima omogućiti slanje fotografija i u visokim rezolucijama - sve do 4K', 'Korisnici popularnih usluga za slanje poruka svakog dana razmjenjuju milijune slika. Kako bi osigurali da te slike ne uspore rad servera, većina aplikacija, uključujući i WhatsApp, automatski komprimiraju datoteke prije nego što ih pošalju. Signal planira prekinuti tu tradiciju ponudivši korisnicima mogućnost slanja slika u rezoluciji 4K.\r\n\r\nOpcija slanja slika u visokoj rezoluciji trenutno je dostupna u beta verziji Signala gdje, ako korisnik želi poslati sliku u originalnoj veličini, samo treba pritisnuti na ikonicu slike i u donjem dijelu sučelja izabrati kvalitetu High.\r\n\r\nPrimjerice, slika rezolucije 6944 puta 9248 piksela veličine 11.6 MB do korisnika će stići u rezoluciji 3075 puta 4096 piksela i veličini 1.4 MB. Ako ju šaljete u standardnim postavkama, slika će biti smanjena na veličinu 1201 puta 1600 piksela i veličinu od 204 KB.\r\n\r\nPremda vizualna razlika među ovim slikama možda nije vidljiva, dobro je znati da Signal nudi opciju slanja slika u visokoj rezoluciji, objašnjava Android Police.', 'tehnologija4.jpeg', 'Y', '2021-05-13 09:17:27'),
(30, 'YOUTUBE', 'Talijanska policija pronašla mafijaša zahvaljujući kuharskim emisijama na YouTubeu', 'TALIJANSKA policija uspjela je locirati traženog pripadnika zloglasne mafijaške organizacije Ndrangheta, a u tome su karabinjerima pomogle kuharske emisije koje je mafijaš objavljivao na YT', 'Potraga za raspačavačem droge traje još od 2014., objavila je talijanska policija u ponedjeljak. Traženi okrivljenik je prebjegao u Dominikansku Republiku, gdje je bio poznat samo pod imenom Marc.\r\n\r\nIstražitelji su ga dugo i bezuspješno tražili, jer se u svakodnevnom životu vješto krio. No, napravio je kobnu pogrešku kad je sa suprugom napravio kanal na You Tubeu u kojem se bavio kuhanjem talijanskih specijaliteta.\r\n\r\nIako nikada nije pokazivao svoje lice, policija ga je prepoznala prema tetovažama koje su bile vidljive.\r\n\r\n\"Ljubav prema talijanskoj kuhinji omogućila nam je da slijedimo tragove ostavljene na internetu i društvenim mrežama\", stoji u priopćenju talijanske policije.\r\n\r\nPolicija Dominikanske Republike je prošlu srijedu uhitila bjegunca u operaciji vođenoj uz pomoć Interpola, a u ponedjeljak je ponovno stigao na talijansko tlo sletjevši u zrakoplovnu luku u Milanu.', 'youtube4.jpg', 'Y', '2021-05-13 09:18:32'),
(31, 'E-SPORTS', 'Emi zvanično potpisao za FunPlus Phoenix', 'Srpski CS:GO igrač Luka \"emi\" Vuković je kompletirao sastav FunPlus Phoenix, potvrdila je slavna kineska esport organizacija.', 'FunPlus Phoenix se našao u žiži interesovanja kada je prošle godine ulogu menadžera njihovih CS:GO i VALORANT ekipa preuzeo srpski esport stručnjak Petar „Peca“ Marković. Nekoliko meseci je trajala potraga za CS:GO ekipom, da bi 25. januara FPX i zvanično preuzeo sastav GODSENT-a.\r\n\r\nTada je na pozajmicu iz ekipe mousesports došao Chris „chrisJ“ de Jong, ali su pregovori oko njegovog prelaska za stalno propali. Pored njega FPX je razmatrao još dva igrača, jedan od njih je Finac Miikka „suNny“ Kemppi koji je na kraju formirao miks sa bivšom zvezdom Fnatica Robinom „flusha“ Ronnquistom.\r\n\r\nDrugi igrač je našim navijačama dobro poznati emi, veteran domaće esport scene koji je svoju karijeru gradio preko ekipe iNation/Binary Dragons/Valiance/CR4ZY. Svoj najveći uspeh je postgao kao trener CR4ZY sa kojima je zauzeo top 12 finiš na StarLadder Berlin Majoru gde je CR4ZY zaustavljen u borbi za četvrtfinale od strane ekipe Na’Vi.\r\n\r\nUbrzo nakon toga ekipu preuzima c0ntact Gaming čiji je član bio sve do sredine oktobra prošle godine, a u novembru i decembru igra dva turnira sa ekipom GODSENT uključujući i zadovoljavajući top 4 finiš DreamHack Masters Winter turniru.\r\n\r\nEmi će kao lider debitovati za FunPlus Phoenix u zatvorenim kvalifikacijama za IEM Summer 26. aprila, a u maju gledamo FPX u novom sastavu u prvom RMR kvalifikacionom turniru za predstojeći Major.\r\n\r\nFunPlus Phoenix sada u punom sastavu izgleda ovako:\r\n\r\nMartin „STYKO“ Styk\r\nPavle „maden“ Bošković\r\nLuka „emi“ Vuković\r\nAsger „farlig“ Jensen\r\nJesse „zehN“ Linjala\r\n\r\nJonatan „Devilwalk“ Lundberg – trener', 'esports_clanak4.jpeg', 'Y', '2021-05-13 09:21:42'),
(32, 'E-SPORTS', 'Argentinci izbacili Vitality sa BLAST-a', 'Nakon Astralisa i Team Liquida još jedan favorit BLAST Premier Spring Showdowna je ispao već u prvom kolu takmičenja, a za to je zaslužan argentinski sastav 9z Team koji je nadigrao Vitality', 'Iako se nije previše očekivalo od ekipe 9z koja je bila primorana da igra sa izmenom, jer je Martin „rox“ Molina prema nezvaničnim informacijama zaražen korona virusom, zbog čega je u petorku uskočio Španac Rajohn „EasTor“ Gregory Linato, oni su pružili sjajnu borbu protiv tima koji je pre samo nekoliko meseci bio na vrhu HLTV rang liste.\r\n\r\nČinilo se da je u pitanju meč koji će Vitality rutinski pobediti nakon što su poveli 12-3 na mapi Nuke, koju su deset rundi kasnije dobili rezultatom 16-9, ali nakon toga sledi veliki preokret. Vitality gubi svoj pik Overpass 11-16, a potom sledi strahovito dobra T strana argentinske ekipe na Infernu gde su uzeli čak 13 rundi u prvom delu igre. Vitality je uspeo da dođe do dvocifrenog broja rundi u nastavku, ali je pri rezultatu 15-12 9z uspeo da stavi tačku na meč i uz veliku radost igrača dođe do verovatno svoje najveće pobede.\r\n\r\nNjih već sutra čeka još jedan težak meč protiv trećeg tima sveta Heroica, dok danas u direktnom prenosu na Sport Klub Esports TV kanalu možete od 15:30 gledati derbi drugog kola između ekipa G2 Esports i OG.\r\n\r\nParovi druge runde BLAST Premier Spring Showdowna:\r\n\r\nG2 Esports – OG\r\nTeam Spirit – Dignitas\r\n9z Team – Heroic\r\nFURIA – Gambit', 'esports_clanak5.jpg', 'Y', '2021-05-13 09:22:02'),
(33, 'E-SPORTS', 'Oproštaj od veterana – RpK napušta Vitality', 'Francuski CS:GO igrač Cedric \"RpK\" Guipouy će istupiti iz startne postave ekipe Vitality nakon BLAST Premier Spring Showdowna, objavljeno je u zvaničnom saopštenju organizacije.', 'Ovaj popularni 31-godišnjak je član Vitality od njenog ulaska u CS:GO esport početkom oktobra 2018. godini. Tokom prošle godine igrao je izuzetno bitnu ulogu u uspesima ekipe koja je na kratko vreme uspela da se probije na prvo mesto HLTV svetske rang liste. Vitality nije uspeo da nastavi sa dobrim igrama ove godine, što je dovelo do nekoliko promena.\r\n\r\nPrvo je u februaru na samo deset dana kapiten ekipe Dan „apEX“ Madesclaire napustio tim, potom je saopšteno da Nabil „Nivera“ Benrlitom više neće igrati za ekipu, a sada na red dolaz i odlazak RpK-a.\r\n\r\nNjega će zameniti Jayson „Kyojin“ Nguyen Van, mladi igrač o kome se malo toga zna i koji još uvek nije imao prilike da se dokaže na profesionalnim turnirima. Prema glasinama reč je o veoma talentovanom igraču, pred kojim je izuzetno težak zadatak da se za kratko vreme uklopi u tim i pomogne im da se vrate u sam vrh CS:GO esporta.', 'esports_clanak6.jpg', 'Y', '2021-05-13 09:22:22'),
(34, 'E-SPORTS', 'NaVi savladao Gambit 3-0 u finalu DreamHack Spring Mastersa', 'Ruski derbi u velikom finalu DreamHack Masters Spring CS:GO turnira je pripao ekipi Natus Vincere koja je uspela da bez izgubljene mape savlada trenutno najbolje rangirani tim sveta Gambit.', 'Na’Vi je odličnim učinkom uspeo da spreči nastavak dominacije ekipa Gambit i Heroic koje su obeležile proteklih nekoliko nedelja u svetu CS:GO esporta.\r\n\r\nPut do finala za Na’Vi nije protekao glatko. Dva putu su gubili nakon prve mape, protiv ekipe FURIA u četvrtfinalu a potom i protiv Heroica u polufinalu, ali su uspevali da preokrenu rezultat i izbore mesto u borbi za titulu gde ih je čekao Gambit.\r\n\r\nDo tog trenutka Gambit je izgledao maltene nedodirljivo, savladali su Astralis i G2 Esports na putu do finala i očekivala se još jedna pobeda od tima koji je prva CIS ekipa koja je uspela da ostvari maksimalan učinak (1.000) poena na HLTV svetskoj rang listi.\r\n\r\nAli ono što smo više puta imali prilike da vidimo u prošlosti, a to je da Na’Vi izgleda kao nezaustavljiva ekipa kada svi igrači pruže svoj maksimum, se još jednom ispostavilo kao istina. Glavnu razliku je napravio Denis „electronic“ Sharipov koji je pružio blede partije u prva dva meča u plejofu, ali je u finalu zablistao i to prvenstveno sa 31 fragom na ispostaviće se odlučujućoj mapi Train.\r\n\r\nPoveo je Na’Vi 16-7 trijumfom na Overpassu gde je po fragovima prednjačio superstar tima Aleksandr „s1mple“ Kostyliev koji je kasnije i proglašen MVP igračem čitavog turnira. Povećao je Na’Vi prednost 16-12 pobedom na Dust2 a ovoga puta su s1mple i electronic napravili po 28 fragova podsetivši celu planu zašto su možda i najubitnačniji duo u ovom esportu.\r\n\r\nPotom je na red došao Train, i ovoga puta rezultat je iznosio 16-12, a nakon što je s1mple u 28. rundi stavio tačku na meč igrači Na’Vi nisu krili osmeh (i po koju suzu radosnicu) na licu zbog nove titule kojom su dokazali da će se u nastavku godine žestoko boriti za zvanje najboljeg CS:GO tima sveta.', 'esports_clanak1.jpg', 'N', '2021-05-13 10:00:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
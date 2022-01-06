# Opis projekta Vrtovi

Sustav služi za evidenciju biljaka u vrtovima.
Uloge: Neregistrirani korisnik, Registrirani korisnik, Moderator, Administrator
Detaljne upute:

Administrator
* Pregledava/kreira/ažurira vrt (ekološki, mediteranski, ...) i dodjeljuje moderatore. Jedan moderator može upravljati s više vrtova, a jedna kategorija može imati više moderatora.
* Može napraviti sigurnosnu kopiju (eng. backup) svih biljaka i pripadajućih materijala iz baze u obliku SQL skripte. Ne radi se sigurnosna kopija datoteka.
* Može vratiti podatke iz sigurnosne kopije pri čemu se brišu trenutni podaci u bazi. Za svaku biljku automatski se provjerava da li postoje fizičke datoteke biljaka koje su postavljene od strane korisnika i ako ne šalje se zahtjev na e-mail korisniku da se ponovo postave.
* Administrator vidi statistiku korištenja sustava pristupa stranicama (min 5), uz mogućnost filtriranja po korisnicima i vremenskom razdoblju (od – do).

Moderator
* Pregledava/kreira/ažurira biljke u vrtove za koje je zadužen na način da kreira novu biljku. Kod kreiranja biljke mora odabrati vrt i unijeti naziv, opis, količinu i vrstu biljke (npr. voće, …).
* Vidi rezultate svih dostupnih i završenih anketa. Posebno su označene ankete koje su završile. Za ankete koje su završile te može kreirati biljku te ga se prebacuje na dodavanje biljke pri čemu automatski popunjavaju podaci o nazivu, opisu i vrtu kojeg je definirao korisnik. Također, upisuje se informacija o korisniku koji je predložio biljku.
* Vidi popis materijale za biljke te potvrđuje/odbija materijale za vrt koje je postavio korisnik. Posebno su označene biljke koje nisu obrađene.

Registrirani korisnik
* Može predložiti dodavanje nove biljke u neki vrt na način da kreira/ažurira anketu pri čemu definira naziv biljke, opis i odabire vrt u koju bi ju dodao. Da bi anketa postala dostupna mora unijeti datum i vrijeme do kada se može ispunjavati.
* Može dodati ili ukloniti biljke u svoje favorite. Ukoliko je njegova biljka koju je predložio dodana u vrt ona se automatski dodaje u njegove favorite.
* Može postaviti materijale za biljke koje postoje u sustavu pri čemu bira biljku i vrstu materijala (slika, video, audio, ...).
* Vidi galeriju potvrđenih materijala biljaka. Može filtrirati po vrtu i definirati koliko materijala se prikazuje po stranici.

Neregistrirani korisnik
* Na početnoj stranici prikazana je statistika broja vrste biljaka po vrtovima.
* Vidi padajući izbornik sa svim vrtovima te može odabrati vrt i onda vidi informacije o biljkama u vrtu sa slikama. Biljka koja ima količinu 0 se ne prikazuje.
* Vidi popis dostupnih anketa za dodavanje novih biljaka i može odgovoriti s da ili ne. Može dati samo jedan glas po anketi (provjerava se IP adresa).
* Putem RSS kanala može se pratiti zadnjih 10 dodanih biljaka po vrtovima.

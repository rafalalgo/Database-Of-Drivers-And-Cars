DROP TABLE IF EXISTS pojazdy CASCADE;
DROP TABLE IF EXISTS kierowcy CASCADE;
DROP TABLE IF EXISTS kierowcy_pojazdy CASCADE;
DROP TABLE IF EXISTS prawa_jazdy CASCADE;
DROP TABLE IF EXISTS prawa_jazdy_kategorie CASCADE;
DROP TABLE IF EXISTS marka_model CASCADE;
DROP TABLE IF EXISTS egzaminatorzy CASCADE;
DROP TABLE IF EXISTS egzaminy CASCADE;
DROP TABLE IF EXISTS ośrodki CASCADE;
DROP TABLE IF EXISTS mandaty CASCADE;
DROP TABLE IF EXISTS mandaty_wystawiający CASCADE;
DROP TABLE IF EXISTS wykroczenia CASCADE;
DROP TABLE IF EXISTS firma CASCADE;
DROP TABLE IF EXISTS sposob_zasilania CASCADE;
DROP TABLE IF EXISTS historia_wlascicieli CASCADE;
DROP TABLE IF EXISTS historia_przegladow_technicznych CASCADE;
DROP TABLE IF EXISTS pojazdy_kierowcy CASCADE;
DROP TABLE IF EXISTS prawa_jazdy_kategorie_praw_jazdy CASCADE;

DROP TYPE IF EXISTS typ_egzaminu CASCADE;
DROP TYPE IF EXISTS typ_wlasciciela CASCADE;
DROP TYPE IF EXISTS typ_kierownicy CASCADE;

DROP TRIGGER IF EXISTS pesel_check ON kierowcy;
DROP TRIGGER IF EXISTS wykroczenia_check ON wykroczenia;
DROP TRIGGER IF EXISTS prawa_jazdy_check ON prawa_jazdy;
DROP TRIGGER IF EXISTS czy_zdal ON prawa_jazdy;
DROP TRIGGER IF EXISTS pj_kategorie ON prawa_jazdy_kategorie;

DROP FUNCTION IF EXISTS czy_zdal();
DROP FUNCTION IF EXISTS pj_kategorie();
DROP FUNCTION IF EXISTS prawa_jazdy_check();
DROP FUNCTION IF EXISTS pesel_check();
DROP FUNCTION IF EXISTS wykroczenia_check();
DROP FUNCTION IF EXISTS pojazdy( INTEGER );
DROP FUNCTION IF EXISTS nr_prawa_jazdy( INTEGER );
DROP FUNCTION IF EXISTS nr_prawa_jazdy_M( INTEGER );
DROP FUNCTION IF EXISTS ilosc_mandatow( INTEGER );
DROP FUNCTION IF EXISTS ile_punktow( INTEGER );
DROP FUNCTION IF EXISTS ilosc_egzaminow( INTEGER );
DROP FUNCTION IF EXISTS ostatni_egzamin( INTEGER );
DROP FUNCTION IF EXISTS imie_i_nazwisko_wlasciciela_samochodu( CHAR(7) );
DROP FUNCTION IF EXISTS spis_wykroczen_danego_kierowcy( INTEGER );

DROP VIEW IF EXISTS statystyki_pojazdow_markaModel;
DROP VIEW IF EXISTS statystyki_pojazdow_rokRejestracji;
DROP VIEW IF EXISTS statystyki_pojazdow_typ;
DROP VIEW IF EXISTS statystyki_zdawalnosci_egzaminow;
DROP VIEW IF EXISTS statystyki_egzaminow_w_latach;
DROP VIEW IF EXISTS statystyki_egzaminatorow;
DROP VIEW IF EXISTS statystyki_egzaminow_w_zaleznosci_od_osrodka;
DROP VIEW IF EXISTS statystyki_mandatow_najniebezpieczniejsi_kierowcy;
DROP VIEW IF EXISTS ranking_wykroczen;
DROP VIEW IF EXISTS ranking_kierowcow_z_najwieksza_grzywna;
DROP VIEW IF EXISTS statystyki_praw_jazdy;

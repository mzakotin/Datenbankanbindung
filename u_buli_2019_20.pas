unit U_BuLi_2019_20;
//Programmname
{$mode objfpc}{$H+}
//grafische Oberfläche (Schnittstelle)
interface

//eingebundene Programmbibliothek, Arten von Komponenten, Objekten und
//Klassen, die in diesem Programm verwendet werden
uses
  Classes, SysUtils, odbcconn, sqldb, db, FileUtil, Forms, Controls, Graphics,
  Dialogs, DBGrids, StdCtrls;

type

  { Tfm_BuLi_2019_20 }
  //Formular mit grafischer Oberfläche und deren Komponenten
  Tfm_BuLi_2019_20 = class(TForm)
    bt_neu: TButton;//Schaltfläche für neue SQL-Abfragen
    Bundesliga_2019_20: TODBCConnection;//ODBC-Datenbankverbindung mit Datenbank
    bt_Start: TButton;//Schaltfläche zum Start der SQL-Abfrage
    bt_beenden: TButton;//Schaltfläche zum Schließen des Formulars
    DBG_Loesung: TDBGrid;//Datenbanktabelle für Lösungen zu den SQL-Abfragen
    //Relationen (Tabellen) aus der eingebundenen Datenbank
    DBG_Scorer: TDBGrid;
    DBG_Vorlagen: TDBGrid;
    DBG_Torschuetzen: TDBGrid;
    DBG_Relegation: TDBGrid;
    DBG_Kreuztabelle: TDBGrid;
    DBG_Abschlusstabelle: TDBGrid;
    //Datenquellen
    DS_Abfrage: TDataSource;
    DS_Scorer: TDataSource;
    DS_Vorlagen: TDataSource;
    DS_Torschuetzen: TDataSource;
    DS_Relegation: TDataSource;
    DS_Kreuztabelle: TDataSource;
    DS_Abschlusstabelle: TDataSource;
    //Eingabefeld für SQL-Abfragen
    Memo_SQL: TMemo;
    //Querys mit den Datenbankabfragen für jede Relation sowie Lösungstabelle
    qu_Abschlusstabelle: TSQLQuery;
    qu_Kreuztabelle: TSQLQuery;
    qu_Relegation: TSQLQuery;
    qu_Torschuetzen: TSQLQuery;
    qu_Vorlagen: TSQLQuery;
    qu_Scorer: TSQLQuery;
    qu_Abfrage: TSQLQuery;
    //Transaktion der in die ODBC_Datenquelle eingebundenen Datenbank
    Trans_BuLi_19_20: TSQLTransaction;
    //Prozeduren für das Klicken auf die jeweilige Schaltfläche (Button)
    //Registerkarte "Ereignisse" im Objektinspektor => OnClick
    procedure bt_beendenClick(Sender: TObject);
    procedure bt_neuClick(Sender: TObject);
    procedure bt_StartClick(Sender: TObject);
    //Prozedur zum Erzeugen des Formulars
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var //Hier wird das Formular immer als globale Variable deklariert.
  fm_BuLi_2019_20: Tfm_BuLi_2019_20;

implementation
//Bereich, wo der Anwender die Befehle selbst eingibt
{$R *.lfm}

{ Tfm_BuLi_2019_20 }

procedure Tfm_BuLi_2019_20.FormCreate(Sender: TObject);
begin
  //Formular erzeugen, durch Doppelklick aufs Formular aufgerufen
  //weitere Option: Registerkarte "Ereignisse" im Objektinspektor => OnCreate
  //Ausrichtung: Abstände von oben sowie links
  top:=10;
  left:=10;
  Memo_SQL.Lines.Add('SELECT ');//Erste Zeile mit "SELECT " wird eingefügt.
  Memo_SQL.Lines.Add('FROM ');//Zweite Zeile mit "FROM " wird eingefügt.
  Memo_SQL.SelStart:=7;{Cursor steht auf der 8. Stelle in der ersten Zeile
  nach dem Wort "SELECT ", welches mitsamt dem darauffolgenden Leerzeichen
  7 Stellen einnimmt}
  //Datenbanktabelle (DataBaseGrid) für Abfragen unsichtbar machen (ausblenden)
  DBG_Loesung.Hide; //DBG_Loesung.Visible:=false;
end;

procedure Tfm_BuLi_2019_20.bt_StartClick(Sender: TObject);
begin
  //Klick auf die Schaltfläche (Button) "Abfrage Starten"

  qu_Abfrage.Active:=false;//Query für Datebankabfrage deaktivieren
  //Text in qu_Abfrage wird ins Eingabefeld Memo_SQL übertragen
  qu_Abfrage.SQL.Text:=Memo_SQL.Text;
  qu_Abfrage.Active:=true;//Query für Datenbankabfragen wieder aktivieren

  //Alle 6 Datenbanktabellen werden ausgeblendet (unsichtbar gemacht).
  DBG_Abschlusstabelle.Hide;//Visible:=false;
  DBG_Kreuztabelle.Hide;//Visible:=false;
  DBG_Relegation.Hide;//Visible:=false;
  DBG_Torschuetzen.Hide;//Visible:=false;
  DBG_Vorlagen.Hide;//Visible:=false;
  DBG_Scorer.Hide; //Visible:=false;
  //Ausblenden des Eingabefeldes Memo_SQL und der Schaltfläche "Abfrage starten"
  Memo_SQL.Hide; //Visible:=false;
  bt_start.Hide; //Visible:=false;
  //Datenbanktabelle für SQL-Lösungen wird eingeblendet (sichtbar gemacht)
  DBG_Loesung.Show;//DBG_Loesung.Visible:=true;
end;

procedure Tfm_BuLi_2019_20.bt_neuClick(Sender: TObject);
begin
  //Klick auf die Schaltfläche (Button) "Neue Abfrage"

  //Datenbanktabellen, Eingabefeld und bt_start wieder einblenden
  DBG_Abschlusstabelle.Show;//Visible:=true;
  DBG_Kreuztabelle.Show;//Visible:=true;
  DBG_Relegation.Show;//Visible:=true;
  DBG_Torschuetzen.Show;//Visible:=true;
  DBG_Vorlagen.Show;//Visible:=true;
  DBG_Scorer.Show;//Visible:=true;
  Memo_SQL.Show;//Visible:=true;
  bt_start.Show;//Visible:=true;
  //Datenbanktabelle für Lösungen wird unsichtbar gemacht (ausgeblendet)
  DBG_Loesung.Hide;//Visible:=false;
  Memo_SQL.Clear;// Inhalt des Eingabefeldes für SQL-Abfragen wird gelöscht
  qu_Abfrage.Active:=false;//Query für die SQL-Abfragen wird deaktiviert
  //SELECT = Auswahl des Datenbank-/Tabellenabschnitts mit dessen Inhalt
  //FROM = betroffene Tabelle/-n, wo der gesuchte Inhalt sich befindet
  Memo_SQL.Lines.Add('SELECT ');//Erste Zeile mit "SELECT " wird eingefügt.
  Memo_SQL.Lines.Add('FROM ');//Zweite Zeile mit "FROM " wird eingefügt.
  Memo_SQL.SetFocus;//Cursor wird wird ins Eingabefeld Memo_SQL gesetzt
  Memo_SQL.SelStart:=7;
  //Cursor steht auf der 8. Stelle in der ersten Zeile nach dem Wort "SELECT ",
  //welches mitsamt dem darauffolgenden Leerzeichen 7 Stellen einnimmt
end;

procedure Tfm_BuLi_2019_20.bt_beendenClick(Sender: TObject);
begin
  fm_BuLi_2019_20.Close;//Schließen des Formulars -> Programm wird beendet
end;

end.


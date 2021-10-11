{—————————————————————————————————————————————————————————————————————————}
{ Project : WebDezign_Formulaire.dpr                                      }
{ Comment : Utilitaire pour générer des formulaires                       }
{—————————————————————————————————————————————————————————————————————————}
{    Date : 26/05/2008 17:32:00                                           }
{  Author : Lhoumaud David (Craft)                                                         }
{—————————————————————————————————————————————————————————————————————————}
{ Last modified                                                           }
{    Date : 27/05/2008 00:35:00                                           }
{  Author : Lhoumaud David (Craft)                                                         }
{—————————————————————————————————————————————————————————————————————————}
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ColorGrd, Menus, inifiles, ShellApi, XPMan;

type
  Twin = class(TForm)
    perso: TGroupBox;
    nom_client: TLabeledEdit;
    prenom_client: TLabeledEdit;
    adress_client: TLabeledEdit;
    adress2_client: TEdit;
    code_postal_client: TLabeledEdit;
    ville_client: TLabeledEdit;
    tel_client: TLabeledEdit;
    mail_cliient: TLabeledEdit;
    site: TGroupBox;
    nom_site: TLabeledEdit;
    type_site: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    style_site: TComboBox;
    color_principal: TColorBox;
    Label3: TLabel;
    Label4: TLabel;
    color_police: TColorBox;
    Label5: TLabel;
    des1_site: TEdit;
    des2_site: TEdit;
    adress_ftp: TLabeledEdit;
    login_ftp: TLabeledEdit;
    pass_ftp: TLabeledEdit;
    domaine_site: TLabeledEdit;
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    Gestion1: TMenuItem;
    About1: TMenuItem;
    Ouvrir1: TMenuItem;
    N1: TMenuItem;
    Quitter1: TMenuItem;
    Label6: TLabel;
    style_menu_site: TComboBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    formulaire: TGroupBox;
    Button1: TButton;
    Action1: TMenuItem;
    GnrerleFormulaire1: TMenuItem;
    webmaster: TLabeledEdit;
    Memo: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure Numeric(Sender: TObject; var Key: Char);
    procedure Quitter1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  win: Twin;
  ini: tinifile;
implementation

{$R *.dfm}
{—————————————————————————————————————————————————————————————————————————}
{    Génére un formulaire *.WDF  [F9]                                     }
{—————————————————————————————————————————————————————————————————————————}
procedure Twin.Button1Click(Sender: TObject);
var
  Edit: tedit;
  LabelEdit: TLabeledEdit;
  ComboBox: TComboBox;
  ColorBox: TColorBox;
  a, b, c, d: integer;
  email, destinataire, sujet, messge, filelier: string;
begin
  if savedialog1.Execute then begin
    win.Caption := savedialog1.FileName;
    ini := tinifile.Create(savedialog1.FileName);
    try
      for a := 0 to componentcount - 1 do
        if components[a] is tedit then begin
          edit := tedit(components[a]);
          ini.WriteString('Edit', edit.Name, edit.Text);
        end;
      for b := 0 to componentcount - 1 do
        if components[b] is TLabeledEdit then begin
          LabelEdit := TLabeledEdit(components[b]);
          ini.WriteString('LabelEdit', LabelEdit.Name, LabelEdit.Text);
        end;
      for c := 0 to componentcount - 1 do
        if components[c] is TComboBox then begin
          ComboBox := TComboBox(components[c]);
          ini.WriteString('ComboBox', ComboBox.Name, ComboBox.Text);
        end;
      for d := 0 to componentcount - 1 do
        if components[d] is TColorBox then begin
          ColorBox := TColorBox(components[d]);
          ini.WriteString('ColorBox', ColorBox.Name, inttostr(colorbox.Selected));
        end;
    finally
      ini.Free;
    end;
  end;
  memo.Lines.LoadFromFile(savedialog1.FileName);
  destinataire := webmaster.Text;
  filelier := savedialog1.FileName;
  if filelier = '' then begin
    filelier := Opendialog1.FileName;
    if filelier = '' then begin
      filelier := Win.Caption;
    end;
  end;
  sujet := 'Demande de site de ' + nom_client.Text + ' ' + prenom_client.Text;
  messge := 'Si vous avez des questions n''hésité pas.' + '%0D%0A' + '%0D%0A' + 'Le reste du message est généré automatiquement, donc ne l''effacé pas !!' + '%0D%0A' + '%0D%0A' + '[Edit]' + '%0D%0A' + 'adress2_client=' + adress2_client.text +
    '%0D%0A' + 'des1_site=' + des1_site.text + '%0D%0A' + 'des2_site=' + des2_site.text +
    '%0D%0A' + '[LabelEdit]' + '%0D%0A' + 'nom_client=' + nom_client.text + '%0D%0A' + 'prenom_client=' + prenom_client.text +
    '%0D%0A' + 'adress_client=' + adress_client.text + '%0D%0A' + 'code_postal_client=' + code_postal_client.text +
    '%0D%0A' + 'ville_client=' + ville_client.text + '%0D%0A' + 'tel_client=' + tel_client.text + '%0D%0A' + 'mail_cliient=' + mail_cliient.text +
    '%0D%0A' + 'adress_ftp=' + adress_ftp.text + '%0D%0A' + 'login_ftp=' + login_ftp.text + '%0D%0A' + 'pass_ftp=' + pass_ftp.text +
    '%0D%0A' + 'nom_site=' + nom_site.text + '%0D%0A' + 'domaine_site=' + domaine_site.text + '%0D%0A' + 'webmaster=' + webmaster.text +
    '%0D%0A' + '[ComboBox]' + '%0D%0A' + 'type_site=' + type_site.text + '%0D%0A' + 'style_site=' + style_site.text +
    '%0D%0A' + 'style_menu_site=' + style_menu_site.text + '%0D%0A' + '[ColorBox]' + '%0D%0A' + 'color_principal=' + inttostr(color_principal.selected) +
    '%0D%0A' + 'color_police=' + inttostr(color_police.selected);
  email := 'mailto:' + destinataire + '?subject=' + sujet + '&body=' + messge + '&file=' + filelier;
  ShellExecute(Handle, 'open', PChar(email), nil, nil, SW_SHOW);
end;

{—————————————————————————————————————————————————————————————————————————}
{    Ouvrir un Fichier *.WDF  [CTRL+O]                                    }
{—————————————————————————————————————————————————————————————————————————}
procedure Twin.Ouvrir1Click(Sender: TObject);
var
  Edit: tedit;
  LabelEdit: TLabeledEdit;
  ComboBox: TComboBox;
  ColorBox: TColorBox;
  a, b, c, d: integer;
begin
  if opendialog1.Execute then begin
    win.Caption := opendialog1.FileName;
    ini := tinifile.Create(opendialog1.filename);
    try
      for a := 0 to componentcount - 1 do
        if components[a] is tedit then begin
          edit := components[a] as tedit;
          edit.text := ini.ReadString('Edit', edit.Name, '');
        end;
      for b := 0 to componentcount - 1 do
        if components[b] is TLabeledEdit then begin
          LabelEdit := components[b] as TLabeledEdit;
          LabelEdit.text := ini.ReadString('LabelEdit', LabelEdit.Name, '');
        end;
      for c := 0 to componentcount - 1 do
        if components[c] is Tcombobox then begin
          combobox := components[c] as Tcombobox;
          combobox.text := ini.ReadString('ComboBox', ComboBox.Name, '');
        end;
      for d := 0 to componentcount - 1 do
        if components[d] is Tcolorbox then begin
          colorbox := components[d] as Tcolorbox;
          colorbox.selected := strtoint(ini.ReadString('ColorBox', ColorBox.Name, '0'));
        end;
    finally;
      ini.free;
    end;
  end;
end;

{—————————————————————————————————————————————————————————————————————————}
{    Empêche l'entrée de caractère non numéric dans certain TEdit         }
{—————————————————————————————————————————————————————————————————————————}
procedure Twin.Numeric(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #08]) then key := #0;
end;

{—————————————————————————————————————————————————————————————————————————}
{  Message du Menu Information [F1]                                       }
{—————————————————————————————————————————————————————————————————————————}
procedure Twin.About1Click(Sender: TObject);
begin
  Showmessage('WebDezign Formulaire' + #13#10 + '©2008 by Craft' + #13#10 + 'Concepteur: Lhoumaud David' + #13#10 + #13#10 + 'Craft@live.fr');
end;

{—————————————————————————————————————————————————————————————————————————}
{  Fermer l'application                                                   }
{—————————————————————————————————————————————————————————————————————————}
procedure Twin.Quitter1Click(Sender: TObject);
begin
application.Terminate;
end;

end.


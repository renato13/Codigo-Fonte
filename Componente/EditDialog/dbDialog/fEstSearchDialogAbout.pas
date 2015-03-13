{
  Unit   : fEstSearchDialogEditor
  Datum  : 17-12-2005
  Auteur : Erik Stok
  Doel   : Search dialog about form
}
unit fEstSearchDialogAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellApi;

const
  HOME_URL = 'http://estsearchdlgs.sourceforge.net';
  PROJECT_URL = 'http://sourceforge.net/projects/estsearchdlgs';

type
  TFrmEstSearchDialogAbout = class(TForm)
    pnlMain: TPanel;
    pnlControls: TPanel;
    pnlButtons: TPanel;
    btnOK: TButton;
    lblVersion: TLabel;
    pnlBanner: TPanel;
    imgEstSoftware: TImage;
    lblWebSite: TLabel;
    lblHeading1: TLabel;
    lblHeading2: TLabel;
    lblThanks: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblProject: TLabel;
    procedure lblWebSiteClick(Sender: TObject);
    procedure lblProjectClick(Sender: TObject);
  end;

implementation

{$R *.dfm}

{ TFrmEstSearchDialogAbout }

procedure TFrmEstSearchDialogAbout.lblWebSiteClick(Sender: TObject);
begin
  ShellExecute(0, 'open', HOME_URL, nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmEstSearchDialogAbout.lblProjectClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PROJECT_URL, nil, nil, SW_SHOWNORMAL);
end;

end.

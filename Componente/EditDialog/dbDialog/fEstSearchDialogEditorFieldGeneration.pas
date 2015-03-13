{
  Unit   : fEstSearchDialogEditorFieldGeneration
  Date   : 2-1-2004
  Auteur : Erik Stok
  Doel   : Selectiescherm hoe velden aan te maken
}

unit fEstSearchDialogEditorFieldGeneration;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmEstSearchDialogEditorFieldGeneration = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    rgpWhereSyntaxStyle: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

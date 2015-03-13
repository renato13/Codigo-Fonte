{
  Unit   : uEstSearchDialogRegister
  Datum  : 5-5-2004
  Auteur : Erik Stok
  Doel   : Registreer componenten en editors
}
unit uEstSearchDialogRegister;

interface

uses
  Classes,
  DesignIntf,
  uEstSearchDialogIntl,
  uEstSearchDialogDefaults;

const
  ESTSEARCHDIALOGTAB = 'PCP VESTIS';

procedure Register;

implementation

{$R EstSearchDialogRes.dcr}

procedure Register;
begin
  // Registreer componenten
  RegisterComponents(ESTSEARCHDIALOGTAB, [TEstSearchDialogInternational]);
  RegisterComponents(ESTSEARCHDIALOGTAB, [TEstSearchDialogDefaults]);
end;

end.

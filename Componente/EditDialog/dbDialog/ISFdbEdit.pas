{************************************************************************}
{ TISFdbEdit  & TISFDBMaskEdit component                                 }
{ for Delphi & C++Builder                                                }
{                                                                        }
{ written by TMS Software                                                }
{            copyright © 2000 - 2008                                     }
{            Email : info@tmssoftware.com                                }
{            Web : http://www.tmssoftware.com                            }
{                                                                        }
{ The source code is given as is. The author is not responsible          }
{ for any possible damage done due to the use of this code.              }
{ The component can be freely used in any application. The complete      }
{ source code remains property of the author and may not be distributed, }
{ published, given or sold in any form as such. No parts of the source   }
{ code can be included in any other component or application without     }
{ written authorization of the author.                                   }
{************************************************************************}

unit ISFdbEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ISFEdit, DB, DBCtrls, MaskUtils;

type
  TISFdbEdit = class(TISFEdit)
  private
    { Private declarations }
    FDataLink: TFieldDataLink;
    FCanvas: TControlCanvas;
    FOldState: TDataSetState;
    FClearOnInsert: Boolean;
    //FIsEditing: Boolean;
    FFocused: Boolean;
    procedure SetFocused(Value: Boolean);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetReadOnly: Boolean;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure DataUpdate(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure ActiveChange(Sender: TObject);
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure WMUndo(var Message: TMessage); message WM_UNDO;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure WMChar(var Message: TWMKeyDown); message WM_CHAR;
    procedure CMExit(var Message: TWMNoParams); message CM_EXIT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    {$IFNDEF TMSDOTNET}
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    {$ENDIF}
    procedure ResetMaxLength;
    function GetTextMargins: TPoint;
  protected
    { Protected declarations }
    procedure Change; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    function EditCanModify: Boolean; virtual;
  public
    { Public declarations }
    constructor Create(aOwner:TComponent); override;
    destructor Destroy; override;
    {$IFDEF DELPHI4_LVL}
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    {$ENDIF}
  published
    { Published declarations }
    property ClearOnInsert: Boolean read FClearOnInsert write FClearOnInsert default False;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
  end;

  TISFDBMaskEdit = class(TISFMaskEdit)
  private
    { Private declarations }
    FDataLink: TFieldDataLink;
    FCanvas: TControlCanvas;
    FOldState: TDataSetState;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetReadOnly: Boolean;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure DataUpdate(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure ActiveChange(Sender: TObject);
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure WMUndo(var Message: TMessage); message WM_UNDO;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMExit(var Message: TWMNoParams); message CM_EXIT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    {$IFNDEF TMSDOTNET}
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    {$ENDIF}
    procedure ResetMaxLength;
    function GetTextMargins: TPoint;
  protected
    { Protected declarations }
    procedure Change; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(aOwner:TComponent); override;
    destructor Destroy; override;
    procedure Loaded; override;
    {$IFDEF DELPHI4_LVL}
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    {$ENDIF}
  published
    { Published declarations }
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
  end;


implementation


{ TISFdbEdit }


procedure TISFdbEdit.ResetMaxLength;
var
  F: TField;
begin
  if (MaxLength > 0) and Assigned(DataSource) and Assigned(DataSource.DataSet) then
  begin
    F := DataSource.DataSet.FindField(DataField);
    if Assigned(F) and
       (F.DataType in [ftString {$IFDEF DELPHI4_LVL}, ftWideString {$ENDIF} ]) and
       (F.Size = MaxLength) then
      MaxLength := 0;
  end;
end;

procedure TISFdbEdit.Change;
begin
  FDataLink.Modified;
  inherited;
end;

{$IFNDEF TMSDOTNET}
procedure TISFdbEdit.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;
{$ENDIF}

procedure TISFdbEdit.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (csDestroying in ComponentState) then
    Exit;
     
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

procedure TISFdbEdit.CMExit(var Message: TWMNoParams);
begin
  if not FDataLink.ReadOnly then
  begin
    try
      FDataLink.UpdateRecord;     { tell data link to update database }
    except
      on Exception do SetFocus;   { if it failed, don't let focus leave }
    end;
  end;
  SetFocused(False);
  inherited;
end;

procedure TISFdbEdit.SetFocused(Value: boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
    FDataLink.Reset;
  end;
end;

procedure TISFdbEdit.CMEnter(var Message: TWMNoParams);
begin
  SetFocused(True);
  inherited;
  if FDataLink.CanModify then
    inherited ReadOnly := False;
end;

constructor TISFdbEdit.Create(aOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := DataUpdate;
  FDataLink.OnActiveChange := ActiveChange;
  ControlStyle := ControlStyle + [csReplicatable];
  FClearOnInsert := False;
end;

procedure TISFdbEdit.DataChange(Sender: TObject);
begin
  if not Assigned(FDataLink.DataSet) then
    Exit;

  //if FIsEditing then
  //begin
  //  Exit;
  //end;

  if Assigned(FDataLink.Field) and
     not (FClearOnInsert and (FDataLink.DataSet.State = dsInsert) and
     (FOldState <> dsInsert))  then
  begin
    case self.EditType of
    etString,etAlphaNumeric,etLowerCase,etUpperCase,etMixedCase:
      begin
        //if not (csDesigning in ComponentState) then
        //begin
          if (FDataLink.Field.DataType in [ftString {$IFDEF DELPHI4_LVL}, ftWideString{$ENDIF}]) and (MaxLength = 0) then
          MaxLength := FDataLink.Field.Size;
          self.Text := FDataLink.Field.AsString;
        //end;
      end;
    etFloat,etMoney:
      begin
        if (FDataLink.Field.AsString = '') then
          self.FloatValue := 0.0
        else
          self.FloatValue := FDataLink.Field.AsFloat;
      end;
    etNumeric:
      begin
        if (FDataLink.Field.AsString = '') then
          self.IntValue := 0
        else
          self.IntValue := FDataLink.Field.AsInteger;
      end;
    else
      self.Text := FDataLink.Field.AsString;
    end;
    Modified := False;
  end;

  if (FDataLink.DataSet.State = dsInsert) and FClearOnInsert
    and (FOldState <> dsInsert) then
  begin
    if (self.EditType in [etFloat,etMoney,etNumeric]) then
      self.Text := '0'
    else
      self.Text := '';
  end;

  FOldState := FDataLink.DataSet.State;
end;

procedure TISFdbEdit.DataUpdate(Sender: TObject);
begin
  if Assigned(FDataLink.Field) and
     not (FClearOnInsert and (FDataLink.DataSet.State = dsInsert)) then
  begin
    case self.EditType of
    etMoney,etFloat:
      begin
        FDataLink.Field.AsFloat := self.FloatValue
      end;
    etNumeric:
      begin
        FDataLink.Field.AsInteger := self.IntValue
      end;
    else
      begin
        FDataLink.Field.AsString := self.Text;
      end;
    end;
  end;
end;

destructor TISFdbEdit.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  inherited Destroy;
end;


function TISFdbEdit.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TISFdbEdit.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TISFdbEdit.GetReadOnly: Boolean;
begin
  if Assigned(DataSource) then
    Result := FDataLink.ReadOnly
  else
    Result := false;  
end;

procedure TISFdbEdit.SetDataField(const Value: string);
begin
  if not (csDesigning in ComponentState) then
    ResetMaxLength;
  FDataLink.FieldName := Value;
end;

procedure TISFdbEdit.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TISFdbEdit.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

procedure TISFdbEdit.WMCut(var Message: TMessage);
begin
  if FDataLink.Edit then
    inherited;
end;

procedure TISFdbEdit.WMPaste(var Message: TMessage);
begin
  if not FDataLink.Readonly then
   begin
    if FDataLink.Edit then
      inherited;
   end;
end;

procedure TISFdbEdit.WMUndo(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TISFdbEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if not Assigned(DataSource) then
  begin
    inherited;
    Exit;
  end;

  if (Key = VK_DELETE) or (Key = VK_BACK) or ((Key = VK_INSERT) and (ssShift in Shift)) then
  begin
    if not EditCanModify then
    begin
      key := 0;
      Exit;
    end;
  end;

  if FDataLink.ReadOnly and (key = VK_DELETE) then
    Key := 0;

  inherited KeyDown(Key, Shift);

  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
    FDataLink.Edit;
end;

procedure TISFdbEdit.KeyPress(var Key: Char);
begin
  if not Assigned(DataSource) then
  begin
    inherited;
    Exit;
  end;

  if not ((Key = #13) and ReturnIsTab) and
    (not ((Key = #3) and (GetKeyState(VK_CONTROL) and $8000 = $8000))) then
    if not EditCanMOdify then
      Exit;

  if (Key = #8) then
    if not EditCanMOdify then
    begin
      Exit;
    end;

  inherited KeyPress(Key);

  if (Key in [#32..#255]) and (FDataLink.Field <> nil) and (Key <> '.') and
    not FDataLink.Field.IsValidChar(Key) or (FDataLink.ReadOnly) then
  begin
    MessageBeep(0);
    Key := #0;
  end;

  case Key of
    ^H, ^V, ^X, #32..#255:
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        Key := #0;
      end;
  end;
end;

procedure TISFdbEdit.Loaded;
begin
  inherited Loaded;
  ResetMaxLength;
end;


procedure TISFdbEdit.WMPaint(var Message: TWMPaint);
var
  Left: Integer;
  Margins: TPoint;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
  AAlignment: TAlignment;

begin
  if  not (csPaintCopy in ControlState) then
    inherited
  else
  begin
    if FCanvas = nil then
    begin
      FCanvas := TControlCanvas.Create;
      FCanvas.Control := Self;
    end;

    if EditType in [etFloat,etNumeric,etMoney,etHex] then
      AAlignment := taRightJustify
    else
      AAlignment := taLeftJustify;

    DC := Message.DC;
    if DC = 0 then DC := BeginPaint(Handle, PS);
    FCanvas.Handle := DC;
    try
      FCanvas.Font := Font;
      with FCanvas do
      begin
        R := ClientRect;
        if not (NewStyleControls and Ctl3D) and (BorderStyle = bsSingle) then
        begin
          Brush.Color := clWindowFrame;
          FrameRect(R);
          InflateRect(R, -1, -1);
        end;
        Brush.Color := Color;
        if not Enabled then
          Font.Color := clGrayText;
        if (csPaintCopy in ControlState) and (FDataLink.Field <> nil) then
        begin
          S := FDataLink.Field.DisplayText;
          case CharCase of
            ecUpperCase: S := AnsiUpperCase(S);
            ecLowerCase: S := AnsiLowerCase(S);
          end;
        end else
          S := Text;
        {$IFNDEF TMSDOTNET}
        if PasswordChar <> #0 then FillChar(S[1], Length(S), PasswordChar);
        {$ENDIF}
        {$IFDEF TMSDOTNET}
        if PasswordChar <> #0 then S := PasswordChar;
        {$ENDIF}
        Margins := GetTextMargins;
        case AAlignment of
          taLeftJustify: Left := Margins.X;
          taRightJustify: Left := ClientWidth - TextWidth(S) - Margins.X - 1;
        else
          Left := (ClientWidth - TextWidth(S)) div 2;
        end;
        {$IFDEF DELPHI4_LVL}
        if SysLocale.MiddleEast then UpdateTextFlags;
        {$ENDIF}
        TextRect(R, Left, Margins.Y, S);
      end;
    finally
      FCanvas.Handle := 0;
      if Message.DC = 0 then EndPaint(Handle, PS);
    end;

  end;
end;

function TISFdbEdit.GetTextMargins: TPoint;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  if NewStyleControls then
  begin
    if BorderStyle = bsNone then I := 0 else
      if Ctl3D then I := 1 else I := 2;
    Result.X := SendMessage(Handle, EM_GETMARGINS, 0, 0) and $0000FFFF + I;
    Result.Y := I;
  end else
  begin
    if BorderStyle = bsNone then I := 0 else
    begin
      DC := GetDC(0);
      GetTextMetrics(DC, SysMetrics);
      SaveFont := SelectObject(DC, Font.Handle);
      GetTextMetrics(DC, Metrics);
      SelectObject(DC, SaveFont);
      ReleaseDC(0, DC);
      I := SysMetrics.tmHeight;
      if I > Metrics.tmHeight then I := Metrics.tmHeight;
      I := I div 4;
    end;
    Result.X := I;
    Result.Y := I;
  end;
end;

procedure TISFdbEdit.ActiveChange(Sender: TObject);
begin
  if Assigned(FDataLink) then
  begin
    if Assigned(FDataLink.DataSet) then
    begin
      if not FDataLink.DataSet.Active or not DataSource.Enabled then
        Text := '';
    end
    else
    begin
      Text := '';
    end;
  end;
end;

{$IFDEF DELPHI4_LVL}

function TISFdbEdit.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TISFdbEdit.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;

{$ENDIF}

function TISFdbEdit.EditCanModify: Boolean;
begin
  if Assigned(DataSource) then
    Result := FDataLink.Edit
  else
    Result := true;
end;

procedure TISFdbEdit.WMChar(var Message: TWMChar);
begin
  if (Message.CharCode in [32..255]) and (FDataLink.Field <> nil) and (Message.charcode <> Ord('.'))
     and (Message.charcode <> Ord(',')) and (not FDataLink.Field.IsValidChar(Chr(Message.CharCode))) then
  begin
    Message.Result := 1;
    Message.CharCode := 0;
  end;

  if not ((Message.CharCode = 13) and ReturnIsTab) and
    (not ((Message.CharCode = 3) and (GetKeyState(VK_CONTROL) and $8000 = $8000))) then
  begin
    //FIsEditing := true;
    if not EditCanModify then
    begin
      Message.Result := 1;
      Message.CharCode := 0;
    end;
    //FIsEditing := False;
  end;
  inherited;
end;


{ TISFDBMaskEdit }

procedure TISFDBMaskEdit.ActiveChange(Sender: TObject);
begin
  if Assigned(FDataLink) then
  begin
    if Assigned(FDataLink.DataSet) then
    begin
      if not FDataLink.DataSet.Active then
        Text := '';
    end
    else
    begin
      Text := '';
    end;
  end;
end;

procedure TISFDBMaskEdit.Change;
begin
  FDataLink.Modified;
  inherited;
end;

procedure TISFDBMaskEdit.CMEnter(var Message: TCMEnter);
begin
  inherited;
  if FDataLink.CanModify then
    inherited ReadOnly := False;
end;

procedure TISFDBMaskEdit.CMExit(var Message: TWMNoParams);
begin
  if not FDataLink.ReadOnly then
  begin
    try
      FDataLink.UpdateRecord;     { tell data link to update database }
    except
      on Exception do SetFocus;   { if it failed, don't let focus leave }
    end;
  end;
  inherited;
end;

{$IFNDEF TMSDOTNET}
procedure TISFDBMaskEdit.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;
{$ENDIF}

constructor TISFDBMaskEdit.Create(aOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := DataUpdate;
  FDataLink.OnActiveChange := ActiveChange;
  ControlStyle := ControlStyle + [csReplicatable];
end;

procedure TISFDBMaskEdit.DataChange(Sender: TObject);
begin
  if not Assigned(FDataLink.DataSet) then
    Exit;

  if Assigned(FDataLink.Field) then
  begin
    if (FDataLink.Field.DataType in [ftString {$IFDEF DELPHI4_LVL}, ftWideString{$ENDIF}]) and (MaxLength = 0) then
      MaxLength := FDataLink.Field.Size;

    self.Text := FDataLink.Field.DisplayText;

    Modified := False;
  end;

  FOldState := FDataLink.DataSet.State;
end;

procedure TISFDBMaskEdit.DataUpdate(Sender: TObject);
begin
  if Assigned(FDataLink.Field) then
  begin
    {$IFDEF DELPHI6_LVL}
    if (self.Text <> FormatMaskText(EditMask,'')) then
    {$ELSE}
    if (self.Text <> '') then
    {$ENDIF}
      FDataLink.Field.AsString := self.Text
    else
      FDataLink.Field.AsString := '';
  end;
end;

destructor TISFDBMaskEdit.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  inherited;
end;

{$IFDEF DELPHI4_LVL}
function TISFDBMaskEdit.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TISFDBMaskEdit.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;
{$ENDIF}

function TISFDBMaskEdit.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TISFDBMaskEdit.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TISFDBMaskEdit.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

function TISFDBMaskEdit.GetTextMargins: TPoint;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  if NewStyleControls then
  begin
    if BorderStyle = bsNone then I := 0 else
      if Ctl3D then I := 1 else I := 2;
    Result.X := SendMessage(Handle, EM_GETMARGINS, 0, 0) and $0000FFFF + I;
    Result.Y := I;
  end else
  begin
    if BorderStyle = bsNone then I := 0 else
    begin
      DC := GetDC(0);
      GetTextMetrics(DC, SysMetrics);
      SaveFont := SelectObject(DC, Font.Handle);
      GetTextMetrics(DC, Metrics);
      SelectObject(DC, SaveFont);
      ReleaseDC(0, DC);
      I := SysMetrics.tmHeight;
      if I > Metrics.tmHeight then I := Metrics.tmHeight;
      I := I div 4;
    end;
    Result.X := I;
    Result.Y := I;
  end;
end;

procedure TISFDBMaskEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if FDataLink.ReadOnly and (key = VK_DELETE) then
    Key := 0;

  if FDataLink.ReadOnly and (key = VK_BACK) then
    Key := 0;

  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
    FDataLink.Edit;

  inherited KeyDown(Key, Shift);

end;

procedure TISFDBMaskEdit.KeyPress(var Key: Char);
begin
  if (Key in [#8,#32..#255]) and (FDataLink.Field <> nil) and
    not FDataLink.Field.IsValidChar(Key) or (FDataLink.ReadOnly) then
  begin
    MessageBeep(0);
    Key := #0;
  end;

  case Key of
    ^H, ^V, ^X, #32..#255:
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        Key := #0;
      end;
  end;

  inherited KeyPress(Key);
end;

procedure TISFDBMaskEdit.Loaded;
begin
  inherited Loaded;
  ResetMaxLength;
end;

procedure TISFDBMaskEdit.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

procedure TISFDBMaskEdit.ResetMaxLength;
var
  F: TField;
begin
  if (MaxLength > 0) and Assigned(DataSource) and Assigned(DataSource.DataSet) then
  begin
    F := DataSource.DataSet.FindField(DataField);
    if Assigned(F) and
       (F.DataType in [ftString {$IFDEF DELPHI4_LVL}, ftWideString {$ENDIF} ]) and
       (F.Size = MaxLength) then
      MaxLength := 0;
  end;
end;

procedure TISFDBMaskEdit.SetDataField(const Value: string);
begin
  if not (csDesigning in ComponentState) then
    ResetMaxLength;
  FDataLink.FieldName := Value;
end;

procedure TISFDBMaskEdit.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TISFDBMaskEdit.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;


procedure TISFDBMaskEdit.WMCut(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TISFDBMaskEdit.WMPaint(var Message: TWMPaint);
var
  Left: Integer;
  Margins: TPoint;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
  AAlignment: TAlignment;

begin

 if  not (csPaintCopy in ControlState) then inherited
 else
  begin
  if FCanvas = nil then
  begin
    FCanvas := TControlCanvas.Create;
    FCanvas.Control := Self;
  end;

  AAlignment := taLeftJustify;

  DC := Message.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if not (NewStyleControls and Ctl3D) and (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;
      if not Enabled then
        Font.Color := clGrayText;
      if (csPaintCopy in ControlState) and (FDataLink.Field <> nil) then
      begin
        S := FDataLink.Field.DisplayText;
        case CharCase of
          ecUpperCase: S := AnsiUpperCase(S);
          ecLowerCase: S := AnsiLowerCase(S);
        end;
      end else
        S := Text;
      {$IFNDEF TMSDOTNET}
      if PasswordChar <> #0 then FillChar(S[1], Length(S), PasswordChar);
      {$ENDIF}
      {$IFDEF TMSDOTNET}
      if PasswordChar <> #0 then S := PasswordChar;
      {$ENDIF}
      Margins := GetTextMargins;
      case AAlignment of
        taLeftJustify: Left := Margins.X;
        taRightJustify: Left := ClientWidth - TextWidth(S) - Margins.X - 1;
      else
        Left := (ClientWidth - TextWidth(S)) div 2;
      end;
      {$IFDEF DELPHI4_LVL}
      if SysLocale.MiddleEast then UpdateTextFlags;
      {$ENDIF}
      TextRect(R, Left, Margins.Y, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;

  end;
end;

procedure TISFDBMaskEdit.WMPaste(var Message: TMessage);
begin
  if not FDataLink.Readonly then
   begin
    FDataLink.Edit;
    inherited;
   end;
end;

procedure TISFDBMaskEdit.WMUndo(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

end.

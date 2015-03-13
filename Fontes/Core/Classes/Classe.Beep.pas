{*******************************************************}
{                                                       }
{                 TBTBeeper 0.01                        }
{                                                       }
{         Copyright (c) 1998 Theodoros Bebekis          }
{                                                       }
{*******************************************************}

{-------------------------------------------------------
 STATE: Freeware
        No restrictions,
        No guaranties
        Use it at your own risk!
--------------------------------------------------------}


{----------------------------------------------------------------------------------------
                                     HISTORY
-----------------------------------------------------------------------------------------
 Version   Date          Changes - Additions                                   Added by
-----------------------------------------------------------------------------------------
 0.01      25.09.1998    Initial Version

-----------------------------------------------------------------------------------------}
unit Classe.Beep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

const
  
 { WinApi Help denotes that frequency for the PC speaker (actually I mean the 
   dwFreq parameter for the Windows Beep function ) must be in the range 37 
   through 32,767 (0x25 through 0x7FFF).
   
   Well, I think that frequency > 5000 is to hard and reedy. The pitch is to 
   high for the PC speaker.
   
   In addition I founded easier to use preset frequencies as musical 
   tones  - see below - than directly use a particular frequency number.
   
   Of course the human ear can distinguish sounds lesser than a half step, 
   so you always the chance to use such intervals when calling TBTBeeper methods }
   
 LOW_FREQ   = 40;
 HIGH_FREQ  = 5000;

 { Denotes a pseudo - frequency for the rests }
 REST = 1;

  
 { I use five octaves with TBTBeeper. C_0, C, C_1, C_2 and C_3.
   C_1 is the C note written on the first ledger line below the treble clef. 
   That is the C in the middle of a piano keyboard,  where the commercial sign 
   usually appears.   
   I use the letter p to denote the # (sharp) and the letter b to denote the b (flat)  }  
 C_0 = 65;                 C = 131;               C_1 = 261;                  C_2 = 523;                  C_3 = 1046;
             Cp_0 = 69;                Cp = 138;                Cp_1 = 277;                 Cp_2 = 554;                 Cp_3 = 1109;
             //Db_0 = Cp_0;              Db = Cp;                 Db_1 = Cp_1;                Db_2 = Cp_2;                Db_3 = Cp_3;
 D_0 = 73;                 D = 149;               D_1 = 293;                  D_2 = 587;                  D_3 = 1174;
             Dp_0 =78 ;                Dp = 155;                Dp_1 = 311;                 Dp_2 = 622;                 Dp_3 = 1244;
             //Eb_0 = Dp_0;              Eb = Dp;                 Eb_1 = Dp_1;                Eb_2 = Dp_2;                Eb_3 = Dp_3;
 E_0 = 82;                 E = 165;               E_1 = 329;                  E_2 = 659;                  E_3 = 1318;
 F_0 = 87;                 F = 174;               F_1 = 349;                  F_2 = 698;                  F_3 = 1397;
             Fp_0 = 92;                Fp = 189;                Fp_1 = 370;                 Fp_2 = 740;                 Fp_3 = 1480;
             //Gb_0 = Fp_0;              Gb = Fp;                 Gb_1 = Fp_1;                Gb_2 = Fp_2;                Gb_3 = Fp_3;
 G_0 = 98;                 G = 196;               G_1 = 392;                  G_2 = 784;                  G_3 = 1568;
             Gp_0 = 104;               Gp = 207;                Gp_1 = 415;                 Gp_2 = 830;                 Gp_3 = 1661;
             //Ab_0 = Fp_0;              Ab = Gp;                 Ab_1 = Gp_1;                Ab_2 = Gp_2;                Ab_3 = Gp_3;
 A_0 = 110;                A = 220;               A_1 = 440;                  A_2 = 880;                  A_3 = 1760;
             Ap_0 = 116;               Ap = 233;                Ap_1 = 466;                 Ap_2 = 932;                 Ap_3 = 1864;
             //Bb_0 = Ap_0;              Bb = Ap;                 Bb_1 = Ap_1;                Bb_2 = Ap_2;                Bb_3 = Ap_3;
 B_0 = 123;                B = 247;               B_1 = 494;                  B_2 = 988;                  B_3 = 1975;


 { I use these two arrays to interpret the ascii song files 
   see PlayTextFile method...}  
 aFreqs : array[0..60] of integer  =  (  65,    69,    73,     78,    82,     87,    92,    98,    104,   110,   116,    123,
                                        131,   138,   149,    155,   165,    174,   189,   196,    207,   220,   233,    247,
                                        261,   277,   293,    311,   329,    349,   370,   392,    415,   440,   466,    494,
                                        523,   554,   587,    622,   659,    698,   740,   784,    830,   880,   932,    988,
                                       1046,  1109,  1174,   1244,  1318,   1397,  1480,   1568,   1661,  1760,  1864,  1975,
                                          1);

Tones : array[0..60] of string[4] = ( 'C_0', 'Cp_0', 'D_0', 'Dp_0', 'E_0', 'F_0', 'Fp_0', 'G_0', 'Gp_0', 'A_0', 'Ap_0', 'B_0',
                                        'C',   'Cp',   'D',   'Dp',   'E',   'F',   'Fp',   'G',   'Gp',   'A',   'Ap',   'B',
                                      'C_1', 'Cp_1', 'D_1', 'Dp_1', 'E_1', 'F_1', 'Fp_1', 'G_1', 'Gp_1', 'A_1', 'Ap_1', 'B_1',
                                      'C_2', 'Cp_2', 'D_2', 'Dp_2', 'E_2', 'F_2', 'Fp_2', 'G_2', 'Gp_2', 'A_2', 'Ap_2', 'B_2',
                                      'C_3', 'Cp_3', 'D_3', 'Dp_3', 'E_3', 'F_3', 'Fp_3', 'G_3', 'Gp_3', 'A_3', 'Ap_3', 'B_3',
                                      'REST');

THE_END  = 'FINE';


type

  TPresetSound = ( psOK,
                   psError,
                   psWelcome,
                   psEmergency,
                   psWrong,
                   psCall,
                   psOfficial,
                   psDaze,
                   psFall,
                   psChord,
                   psWhisle,
                   psHanging,
                   psClimb );

  TBeatDuration = (bd_500, bd_1000, bd_1500, bd_2000);

  EBeepError = class(Exception);

  TBTBeeper = class(TComponent)
  private   //=======================================================================================
    FBeatDuration            : TBeatDuration;
    FDuration                : integer;
    FCustomDuration          : boolean;
    FDefaultSound            : TPresetSound;

    procedure SetBeatDuration(Value:TBeatDuration);
  public    //=======================================================================================
    constructor Create(AOwner: TComponent);override;

    { plays the preset DefaultSound }
    procedure PlayDefaultSound;
    { plays a preset DefaultSound }
    procedure PlayPresetSound(Sound:TPresetSound);
    { generates a Tone a MSecs long }
    procedure BeepFor(Tone : word; MSecs : integer);
    { generates a Tone a BeatDuration long }
    procedure Beep(Tone : word);
    { makes a BeatDuration long silent }
    procedure Pause;
    { makes a MSecs long silent }
    procedure PauseFor(MSecs : integer);
    { opens an ascii file and plays a song
      This file can be written with any text editor like notepad.
      The form of the file:
      <song title>
      <freq const>, <duration>,
      <freq const>, <duration>,
      <freq const>, <duration>,
      .
      .
      .
      FINE
      Note: see Songs.txt for an example
      You can have more than one song in the same file }
    procedure PlayTextFile(FileName, Song: string);
  published //=======================================================================================
    { BeatDuration affects only the Beep and the Pause methods}
    property BeatDuration      : TBeatDuration read FBeatDuration write SetBeatDuration default bd_1000;
    { determines the TPresetSound for the PlayDefaultSound method to play }
    property DefaultSound      : TPresetSound  read FDefaultSound write FDefaultSound default psOK;
  end;





var
 IsWin_NT :boolean;


//procedure Register;
{ Returns True if running in WinNT }
function  CheckForWinNT:boolean;
{ starts a beep  }
procedure StartBeep(Freq : Word);
{ stops a beep }
procedure StopBeep;


implementation




{===============================================================================
///                                                                          ///
                              PUBLIC  METHODS
///                                                                          ///
===============================================================================}



{----------------------------------Create--------------------------------------}
constructor TBTBeeper.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
  IsWin_NT:= CheckForWinNT;
  FBeatDuration  :=bd_1000;
  FDuration      :=1000;
  FDefaultSound  :=psEmergency;
end;    { Create }


{--------------------------PlayDefaultSound----------------------------------------}
procedure TBTBeeper.PlayDefaultSound;
begin
  PlayPresetSound(FDefaultSound);
end;  {  PlayDefaultSound }


{---------------------------PlayPresetSound----------------------------------------
 plays one of the TPresetSound = (psOK, psError, psWelcome... etc) sounds
-----------------------------------------------------------------------------------}
procedure TBTBeeper.PlayPresetSound(Sound:TPresetSound);
begin
  case Sound of
    psOK:
         begin
           BeepFor (Ap_2,100);
           BeepFor (B_2, 100);
           BeepFor (C_3, 100);
         end;
    psError:
         begin
           BeepFor (Fp_0,150);
           BeepFor (REST,200);
           BeepFor (C_0,500);
         end;
    psWelcome:
         begin
           BeepFor (Ap_2,100);
           BeepFor (B_2, 100);
           BeepFor (C_3, 100);
           BeepFor (REST,100);
           BeepFor (C_3, 100);
           BeepFor (B_2, 100);
           BeepFor (Ap_2,100);
         end;
    psEmergency:
         begin
           BeepFor (F_2,200);
           BeepFor (B_1, 200);
           BeepFor (F_2,200);
           BeepFor (B_1, 200);
           BeepFor (F_2,200);
           BeepFor (B_1, 200);
           BeepFor (F_2,200);
           BeepFor (B_1, 200);
         end;
    psWrong:
         begin
           BeepFor (C_1,150);
           BeepFor (B,50);
           BeepFor (Ap,50);
           BeepFor (A,50);
           BeepFor (Gp,50);
           BeepFor (G,50);
           BeepFor (Fp,50);
           BeepFor (F,50);
           BeepFor (E,50);
           BeepFor (Dp,50);
           BeepFor (D,50);
           BeepFor (Cp,50);
           BeepFor (C,100);
           BeepFor (C_0,200);
         end;
    psCall:
         begin
           BeepFor (G,650);
           BeepFor (REST,100);
           BeepFor (E,500);
         end;
    psOfficial:
         begin
           BeepFor (G,200);
           BeepFor (REST,50);
           BeepFor (G,200);
           BeepFor (REST,50);
           BeepFor (G,200);
           BeepFor (REST,50);
           BeepFor (E,700);
           BeepFor (REST,100);
           BeepFor (C_1,200);
           BeepFor (REST,50);
           BeepFor (C_1,200);
           BeepFor (REST,50);
           BeepFor (C_1,200);
           BeepFor (REST,50);
           BeepFor (C,700);
         end;
    psDaze:
         begin
           BeepFor (E_1,100);
           BeepFor (Dp_1,100);
           BeepFor (D_1,100);
           BeepFor (Dp_1,100);
           BeepFor (E_1,100);
           BeepFor (Dp_1,100);
           BeepFor (D_1,100);
           BeepFor (Dp_1,100);
           BeepFor (E_1,100);
           BeepFor (Dp_1,100);
           BeepFor (D_1,100);
           BeepFor (Dp_1,100);
         end;
    psFall:
         begin
           BeepFor (E_1,100);
           BeepFor (Dp_1,100);
           BeepFor (D_1,100);
           BeepFor (Dp_1,100);

           BeepFor (F_1,100);
           BeepFor (E_1,100);
           BeepFor (Dp_1,100);
           BeepFor (E_1,100);

           BeepFor (Fp_1,100);
           BeepFor (F_1,100);
           BeepFor (E_1,100);
           BeepFor (F_1,100);
         end;
    psChord:
         begin
           BeepFor (B_1,80);
           BeepFor (Ap_1,80);
           BeepFor (A_1,80);
           BeepFor (Gp_1,80);
           BeepFor (G_1,80);
           BeepFor (Fp_1,80);
           BeepFor (F_1,80);
           BeepFor (E_1,80);
           BeepFor (Dp_1,80);
           BeepFor (D_1,80);
           BeepFor (Cp_1,80);
           BeepFor (C_1,80);
         end;
    psWhisle:
         begin
           BeepFor (C_2,80);
           BeepFor (F_2,80);
           BeepFor (G_2,80);
           BeepFor (C_3,80);
         end;
    psHanging:
         begin
           BeepFor (G_2,80);
           BeepFor (C_3,80);
           BeepFor (Gp_2,80);
           BeepFor (Cp_3,80);
           BeepFor (A_2,80);
           BeepFor (D_3,80);
           BeepFor (Ap_2,80);
           BeepFor (Dp_3,80);
           BeepFor (B_2,80);
           BeepFor (E_3,80);
           BeepFor (C_3,80);
           BeepFor (F_3,80);
         end;
    psClimb:
         begin
           BeepFor (C_1,80);
           BeepFor (Cp_1,80);
           BeepFor (D_1,80);
           BeepFor (Dp_1,80);
           BeepFor (E_1,80);
           BeepFor (F_1,80);
           BeepFor (Fp_1,80);
           BeepFor (G_1,80);
           BeepFor (Gp_1,80);
           BeepFor (A_1,80);
           BeepFor (Ap_1,80);
           BeepFor (B_1,80);
         end;
  end;
end;  {  PlayPresetSound }


{------------------------------------Beep----------------------------------------
 generates a Tone a BeatDuration long
--------------------------------------------------------------------------------}
procedure TBTBeeper.Beep(Tone : word);
begin
  BeepFor(Tone, FDuration);
end;  {  Beep }


{--------------------------------BeepFor------------------------------------------
 generates a Tone a MSecs long
----------------------------------------------------------------------------------}
procedure TBTBeeper.BeepFor(Tone : word; MSecs : integer);
var
 StartTime : LongInt;
begin

 if Tone = REST
 then
   begin
     StartTime:=GetTickCount;
     while ( (GetTickCount - StartTime) < LongInt(MSecs) ) do Application.ProcessMessages;
     Exit;
   end;

 case IsWin_NT of
   True  : Windows.Beep (Tone, MSecs);
   False : begin
             StartBeep(Tone);
             StartTime:=GetTickCount;
             while ( (GetTickCount - StartTime) < LongInt(MSecs) ) do Application.ProcessMessages;
             StopBeep;
           end;
 end;

end;  { BeepFor  }


{----------------------------Pause------------------------------------------------
 makes a BeatDuration long silent
----------------------------------------------------------------------------------}
procedure TBTBeeper.Pause;
begin
  PauseFor(FDuration);
end;  { Pause  }


{-------------------------PauseFor------------------------------------------------
 makes a MSecs long silent
---------------------------------------------------------------------------------}
procedure TBTBeeper.PauseFor(MSecs : integer);
begin
 BeepFor(REST, MSecs);
end;  { PauseFor }


{-----------------------------PlayTextFile-----------------------------------------
 opens an ascii file and plays a song
-----------------------------------------------------------------------------------}
procedure TBTBeeper.PlayTextFile(FileName, Song: string);
const
  InValidChars = [#0..#47,#58..#64, #91..#94, #96, #123..#255];
var
 Stream            : TMemoryStream;
 szFileText,
 szFirst,
 szLast,
 szHolder          : PChar;
 sTone,
 sMSecs            : string;
 i                 : integer;
begin

  try
    Stream:=TMemoryStream.Create;
    Stream.LoadFromFile(FileName);

    sTone  :='';
    sMSecs :='';

    szFirst:=Stream.Memory;
    szFirst:= StrPos( Stream.Memory, PChar(Song) );

    if szFirst = nil
    then
      begin
        raise EBeepError.CreateFmt('Can Not Locate Song %s in %s', [Song, FileName]);
        FreeMem(szFileText, StrLen(szFileText + 1));
        Exit;
      end
    else
      try
        GetMem(szHolder, 5);                                     // get mem for the holder PChar
        Inc(szFirst, Length(Song) + 1);                          // move szFirst after song title
        while True  do                                           // loop for ever
        begin
          while szFirst^ in InValidChars do Inc(szFirst);        // skip blanks
          FillChar(szHolder^, 5, #0);                            // zero the szHolder
          StrLCopy(szHolder, szFirst, 4);                        // get first 4 chars
          if String(szHolder) = THE_END then Break;

          szLast:= StrScan( szFirst, ',' );                      // look for the next comma
          if szLast = nil                                        // if ok
          then raise EBeepError.Create('Beeper: Wrong Char');                                

          FillChar(szHolder^, 5, #0);                            // zero the szHolder
          StrLCopy(szHolder, szFirst, (szLast ) - szFirst);      // copy chars until szLast - 1 to szHolder
          sTone:=StrPas(szHolder);                               // convert it to Pascal string
          szFirst:=szLast + 1;                                   // move szFirst after next comma

          while szFirst^ in InValidChars do Inc(szFirst);        // skip blanks
          szLast:= StrScan( szFirst, ',' );                      // look for the next comma
          if szLast = nil                                        // if ok
          then raise EBeepError.Create('Beeper: Wrong Char'); 

          FillChar(szHolder^, 5, #0);                            // zero the szHolder
          StrLCopy(szHolder, szFirst, (szLast) - szFirst);       // copy chars until szLast - 1 to szHolder
          sMSecs:=StrPas(szHolder);                              // convert it to Pascal string
          szFirst:=szLast + 1;                                   // move szFirst after next comma

          for i:= 0 to 60 do
          if sTone = Tones[i]                                    // play the sound
          then begin BeepFor(aFreqs[i], StrToInt(sMSecs)); Break; end; 
        end;
      finally
        FreeMem(szHolder, 5);
      end;
  finally
    Stream.Clear;
    Stream.Free;
  end;
end;  { PlayTextFile  }          



{===============================================================================
///                                                                          ///
                        PROPERTY  ACCESS METHODS
///                                                                          ///
===============================================================================}


{-------------------SetBeatDuration------------------------------------------------}
procedure TBTBeeper.SetBeatDuration(Value:TBeatDuration);
begin
  if Value <> FBeatDuration
  then
    begin
      FBeatDuration:=Value;
      case Value of
        bd_500  :FDuration:= 500 ;
        bd_1000 :FDuration:= 1000;
        bd_1500 :FDuration:= 1500;
        bd_2000 :FDuration:= 2000;
      end;
    end;
end;  { SetBeatDuration  }



{===============================================================================
///                                                                          ///
                               CUSTOM
///                                                                          ///
===============================================================================}



{------------------------------CheckForWinNT------------------------------------}
function CheckForWinNT:boolean;
var
 WinVersion : TOSVersionInfo;
begin
  WinVersion.dwOSVersionInfoSize:= SizeOf(WinVersion);
  GetVersionEx(WinVersion);
  Result:=WinVersion.dwPlatformID = VER_PLATFORM_WIN32_NT;
end;  { CheckForWinNT }


{---------------------------------_GetPort--------------------------------------}
function _GetPort(address:word):word;
var
 bValue: byte;
begin
  asm
    mov dx, address
    in al, dx
    mov bValue, al
  end;
  Result := bValue;
end;   { _GetPort }


{----------------------------------_SetPort--------------------------------------}
procedure _SetPort(address, Value:Word);
var
 bValue: byte;
begin
  bValue := Trunc(Value and 255);
  asm
    mov dx, address
    mov al, bValue
    out dx, al
  end;
end;   { _SetPort }


{----------------------------------StartBeep--------------------------------------}
procedure StartBeep(Freq : Word);
var
  B: Byte;
begin
  if (Freq >= LOW_FREQ) and (Freq <= HIGH_FREQ)
  then
    begin
      Freq := Word(1193181 div LongInt(Freq));
      B := Byte(_GetPort($61));
      if (B and 3) = 0
      then
        begin
          _SetPort($61, Word(B or 3));
          _SetPort($43, $B6);
        end;
      _SetPort($42, Freq);
      _SetPort($42, Freq shr 8);
    end;
end; { StartBeep }



{------------------------------StopBeep----------------------------------------}
procedure StopBeep;
var
 Value: Word;
begin
  Value := _GetPort($61) and $FC;
  _SetPort($61, Value);
end;  { StopBeep }



{----------------------------Register------------------------------------------}
//procedure Register;
//begin
//   RegisterComponents('Outros Componentes', [TBTBeeper]);
//end;

{===============================================================================
///                                                                          ///
                                       EOF
///                                                                          ///
===============================================================================}
end.














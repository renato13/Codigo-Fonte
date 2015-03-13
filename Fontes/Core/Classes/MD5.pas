{ ****************************************** }
{ }
{ FastReport v4.0 }
{ MD5 checksum generation }
{ }
{ ****************************************** }
// Original RSA Data Security, Inc. Copyright notice
/// //////////////////////////////////////////////////////////////////////
//
// Copyright (C) 1991-2, RSA Data Security, Inc. Created 1991. All
// rights reserved.
//
// License to copy and use this software is granted provided that it
// is identified as the "RSA Data Security, Inc. MD5 Message-Digest
// Algorithm" in all material mentioning or referencing this software
// or this function.
// License is also granted to make and use derivative works provided
// that such works are identified as "derived from the RSA Data
// Security, Inc. MD5 Message-Digest Algorithm" in all material
// mentioning or referencing the derived work.
// RSA Data Security, Inc. makes no representations concerning either
// the merchantability of this software or the suitability of this
// software for any particular purpose. It is provided "as is"
// without express or implied warranty of any kind.
// These notices must be retained in any copies of any part of this
// documentation and/or software.

unit MD5;

interface

uses Classes;

const
   // Magic initialization constants
   MD5_INIT_STATE_0 = $67452301;
   MD5_INIT_STATE_1 = $EFCDAB89;
   MD5_INIT_STATE_2 = $98BADCFE;
   MD5_INIT_STATE_3 = $10325476;
   // Constants for Transform routine.
   MD5_S11 = 7;
   MD5_S12 = 12;
   MD5_S13 = 17;
   MD5_S14 = 22;
   MD5_S21 = 5;
   MD5_S22 = 9;
   MD5_S23 = 14;
   MD5_S24 = 20;
   MD5_S31 = 4;
   MD5_S32 = 11;
   MD5_S33 = 16;
   MD5_S34 = 23;
   MD5_S41 = 6;
   MD5_S42 = 10;
   MD5_S43 = 15;
   MD5_S44 = 21;
   // Transformation Constants - Round 1
   MD5_T01 = $D76AA478;
   MD5_T02 = $E8C7B756;
   MD5_T03 = $242070DB;
   MD5_T04 = $C1BDCEEE;
   MD5_T05 = $F57C0FAF;
   MD5_T06 = $4787C62A;
   MD5_T07 = $A8304613;
   MD5_T08 = $FD469501;
   MD5_T09 = $698098D8;
   MD5_T10 = $8B44F7AF;
   MD5_T11 = $FFFF5BB1;
   MD5_T12 = $895CD7BE;
   MD5_T13 = $6B901122;
   MD5_T14 = $FD987193;
   MD5_T15 = $A679438E;
   MD5_T16 = $49B40821;
   // Transformation Constants - Round 2
   MD5_T17 = $F61E2562;
   MD5_T18 = $C040B340;
   MD5_T19 = $265E5A51;
   MD5_T20 = $E9B6C7AA;
   MD5_T21 = $D62F105D;
   MD5_T22 = $02441453;
   MD5_T23 = $D8A1E681;
   MD5_T24 = $E7D3FBC8;
   MD5_T25 = $21E1CDE6;
   MD5_T26 = $C33707D6;
   MD5_T27 = $F4D50D87;
   MD5_T28 = $455A14ED;
   MD5_T29 = $A9E3E905;
   MD5_T30 = $FCEFA3F8;
   MD5_T31 = $676F02D9;
   MD5_T32 = $8D2A4C8A;
   // Transformation Constants - Round 3
   MD5_T33 = $FFFA3942;
   MD5_T34 = $8771F681;
   MD5_T35 = $6D9D6122;
   MD5_T36 = $FDE5380C;
   MD5_T37 = $A4BEEA44;
   MD5_T38 = $4BDECFA9;
   MD5_T39 = $F6BB4B60;
   MD5_T40 = $BEBFBC70;
   MD5_T41 = $289B7EC6;
   MD5_T42 = $EAA127FA;
   MD5_T43 = $D4EF3085;
   MD5_T44 = $04881D05;
   MD5_T45 = $D9D4D039;
   MD5_T46 = $E6DB99E5;
   MD5_T47 = $1FA27CF8;
   MD5_T48 = $C4AC5665;
   // Transformation Constants - Round 4
   MD5_T49 = $F4292244;
   MD5_T50 = $432AFF97;
   MD5_T51 = $AB9423A7;
   MD5_T52 = $FC93A039;
   MD5_T53 = $655B59C3;
   MD5_T54 = $8F0CCC92;
   MD5_T55 = $FFEFF47D;
   MD5_T56 = $85845DD1;
   MD5_T57 = $6FA87E4F;
   MD5_T58 = $FE2CE6E0;
   MD5_T59 = $A3014314;
   MD5_T60 = $4E0811A1;
   MD5_T61 = $F7537E82;
   MD5_T62 = $BD3AF235;
   MD5_T63 = $2AD7D2BB;
   MD5_T64 = $EB86D391;
   // Null data (except for first BYTE) used to finalise the checksum calculation
   PADDING: array [0 .. 63] of byte = ($80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0);

type
   uint4 = longword;
   uchar = byte;
   Puint4 = ^uint4;
   Puchar = ^uchar;

   TfrxMD5 = class(TObject)
   private
      m_State: array [0 .. 3] of uint4;
      m_Count: array [0 .. 1] of uint4;
      m_Buffer: array [0 .. 63] of uchar;
      m_Digest: array [0 .. 15] of uchar;
      procedure Transform(block: Puchar);
      procedure Encode(dest: Puchar; src: Puint4; nLength: uint4);
      procedure Decode(dest: Puint4; src: Puchar; nLength: uint4);
      function RotateLeft(x: uint4; n: uint4): uint4;
      procedure FF(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
        s: uint4; ac: uint4);
      procedure GG(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
        s: uint4; ac: uint4);
      procedure HH(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
        s: uint4; ac: uint4);
      procedure II(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
        s: uint4; ac: uint4);
   public
      constructor Create;
      procedure Init;
      procedure Update(chInput: Puchar; nInputLen: uint4);
      procedure Finalize;
      function Digest: Puchar;
   end;

function MD5String(szString: String): String;
function MD5File(szFilename: String): String;
function MD5Stream(Stream: TStream): String;
procedure MD5Buf(Buf: Pointer; const Len: Integer; Digest: Pointer);
function PrintMD5(md5Digest: Puchar): String;

implementation

uses SysUtils;

{$IFOPT Q+}
{$DEFINE OVERDEF}
{$Q-}
{$ENDIF}

function Byte2Hex(const b: byte): String;
var
   H, L: byte;
   function HexChar(n: byte): Char;
   begin
      if (n < 10) then
         Result := Chr(Ord('0') + n)
      else
         Result := Chr(Ord('A') + (n - 10));
   end;

begin
   SetLength(Result, 2);
   H := (b shr 4) and $F;
   L := b and $F;
   Result[1] := HexChar(H);
   Result[2] := HexChar(L);
end;

// PrintMD5: Converts a completed md5 digest into a char* string.
function PrintMD5(md5Digest: Puchar): String;
var
   nCount: Integer;
   tmp: Puchar;
begin
   Result := '';
   tmp := md5Digest;
   for nCount := 0 to 15 do
   begin
      Result := Result + LowerCase(Byte2Hex(byte(tmp^)));
      Inc(tmp);
   end;
end;

// MD5String: Performs the MD5 algorithm on a char* string, returning
// the results as a char*.
function MD5String(szString: String): String;
var
   nLen: Integer;
   alg: TfrxMD5;
begin
   Result := '';
   alg := TfrxMD5.Create;
   try
      nLen := Length(szString);
      alg.Update(Puchar(szString), nLen);
      alg.Finalize;
      Result := PrintMD5(alg.Digest);
   finally
      alg.Free;
   end;
end;

function MD5Stream(Stream: TStream): String;
var
   nLen: Integer;
   Buf: array [0 .. 255] of Char;
   alg: TfrxMD5;
   oldpos: Longint;
begin
   Result := '';
   alg := TfrxMD5.Create;
   oldpos := Stream.Position;
   try
      Stream.Position := 0;
      nLen := 256;
      while nLen = 256 do
      begin
         nLen := Stream.Read(Buf, nLen);
         alg.Update(@Buf, nLen);
      end;
      alg.Finalize;
      Result := PrintMD5(alg.Digest);
   finally
      Stream.Position := oldpos;
      alg.Free;
   end;
end;

function MD5File(szFilename: String): String;
var
   f: TFileStream;
begin
   Result := '';
   f := TFileStream.Create(szFilename, fmOpenRead + fmShareDenyWrite);
   try
      Result := MD5Stream(f);
   finally
      f.Free
   end;
end;

procedure MD5Buf(Buf: Pointer; const Len: Integer; Digest: Pointer);
var
   MD5: TfrxMD5;
   d: Puchar;
begin
   MD5 := TfrxMD5.Create;
   try
      MD5.Update(Buf, Len);
      MD5.Finalize;
      d := MD5.Digest;
      Move(d^, Digest^, 16);
   finally
      MD5.Free;
   end;
end;

{ TfrxMD5 }
constructor TfrxMD5.Create;
begin
   Init;
end;

// md5::Init
// Initializes a new context.
procedure TfrxMD5.Init;
begin
   FillChar(m_Count, 2 * SizeOf(uint4), 0);
   m_State[0] := MD5_INIT_STATE_0;
   m_State[1] := MD5_INIT_STATE_1;
   m_State[2] := MD5_INIT_STATE_2;
   m_State[3] := MD5_INIT_STATE_3;
end;

// MD5 block update operation. Continues an MD5 message-digest
// operation, processing another message block, and updating the
// context.
procedure TfrxMD5.Update(chInput: Puchar; nInputLen: uint4);
var
   i, index, partLen: uint4;
   tmp: Puchar;
begin
   // Compute number of bytes mod 64
   index := (m_Count[0] shr 3) and $3F;
   // Update number of bits
   m_Count[0] := m_Count[0] + (nInputLen shl 3);
   if m_Count[0] < (nInputLen shl 3) then
      m_Count[1] := m_Count[1] + 1;
   m_Count[1] := m_Count[1] + (nInputLen shr 29);
   partLen := 64 - index;
   // Transform as many times as possible.
   if nInputLen >= partLen then
   begin
      Move(chInput^, m_Buffer[index], partLen);
      Transform(Puchar(@m_Buffer));
      i := partLen;
      while (i + 63) < nInputLen do
      begin
         tmp := chInput;
         Inc(tmp, i);
         Transform(tmp);
         i := i + 64;
      end;
      index := 0;
   end
   else
      i := 0;
   // Buffer remaining input
   tmp := chInput;
   Inc(tmp, i);
   Move(tmp^, m_Buffer[index], nInputLen - i);
end;

// MD5 finalization. Ends an MD5 message-digest operation, writing
// the message digest and zeroizing the context.
procedure TfrxMD5.Finalize;
var
   bits: array [0 .. 7] of uchar;
   index, padLen: uint4;
begin
   // Save number of bits
   Encode(Puchar(@bits), Puint4(@m_Count), 8);
   // Pad out to 56 mod 64
   index := (m_Count[0] shr 3) and $3F;
   if index < 56 then
      padLen := 56 - index
   else
      padLen := 120 - index;
   Update(Puchar(@PADDING), padLen);
   // Append length (before padding)
   Update(Puchar(@bits), 8);
   // Store state in digest
   Encode(Puchar(@m_Digest), Puint4(@m_State), 16);
   FillChar(m_Count, 2 * SizeOf(uint4), 0);
   FillChar(m_State, 4 * SizeOf(uint4), 0);
   FillChar(m_Buffer, 64 * SizeOf(uchar), 0);
end;

function TfrxMD5.Digest: Puchar;
begin
   Result := Puchar(@m_Digest);
end;

// MD5 basic transformation. Transforms state based on block.
procedure TfrxMD5.Transform(block: Puchar);
var
   a, b, c, d: uint4;
   x: array [0 .. 15] of uint4;
begin
   a := m_State[0];
   b := m_State[1];
   c := m_State[2];
   d := m_State[3];
   Decode(Puint4(@x), block, 64);
   // Perform Round 1 of the transformation
   FF(a, b, c, d, x[0], MD5_S11, MD5_T01);
   FF(d, a, b, c, x[1], MD5_S12, MD5_T02);
   FF(c, d, a, b, x[2], MD5_S13, MD5_T03);
   FF(b, c, d, a, x[3], MD5_S14, MD5_T04);
   FF(a, b, c, d, x[4], MD5_S11, MD5_T05);
   FF(d, a, b, c, x[5], MD5_S12, MD5_T06);
   FF(c, d, a, b, x[6], MD5_S13, MD5_T07);
   FF(b, c, d, a, x[7], MD5_S14, MD5_T08);
   FF(a, b, c, d, x[8], MD5_S11, MD5_T09);
   FF(d, a, b, c, x[9], MD5_S12, MD5_T10);
   FF(c, d, a, b, x[10], MD5_S13, MD5_T11);
   FF(b, c, d, a, x[11], MD5_S14, MD5_T12);
   FF(a, b, c, d, x[12], MD5_S11, MD5_T13);
   FF(d, a, b, c, x[13], MD5_S12, MD5_T14);
   FF(c, d, a, b, x[14], MD5_S13, MD5_T15);
   FF(b, c, d, a, x[15], MD5_S14, MD5_T16);
   // Perform Round 2 of the transformation
   GG(a, b, c, d, x[1], MD5_S21, MD5_T17);
   GG(d, a, b, c, x[6], MD5_S22, MD5_T18);
   GG(c, d, a, b, x[11], MD5_S23, MD5_T19);
   GG(b, c, d, a, x[0], MD5_S24, MD5_T20);
   GG(a, b, c, d, x[5], MD5_S21, MD5_T21);
   GG(d, a, b, c, x[10], MD5_S22, MD5_T22);
   GG(c, d, a, b, x[15], MD5_S23, MD5_T23);
   GG(b, c, d, a, x[4], MD5_S24, MD5_T24);
   GG(a, b, c, d, x[9], MD5_S21, MD5_T25);
   GG(d, a, b, c, x[14], MD5_S22, MD5_T26);
   GG(c, d, a, b, x[3], MD5_S23, MD5_T27);
   GG(b, c, d, a, x[8], MD5_S24, MD5_T28);
   GG(a, b, c, d, x[13], MD5_S21, MD5_T29);
   GG(d, a, b, c, x[2], MD5_S22, MD5_T30);
   GG(c, d, a, b, x[7], MD5_S23, MD5_T31);
   GG(b, c, d, a, x[12], MD5_S24, MD5_T32);
   // Perform Round 3 of the transformation
   HH(a, b, c, d, x[5], MD5_S31, MD5_T33);
   HH(d, a, b, c, x[8], MD5_S32, MD5_T34);
   HH(c, d, a, b, x[11], MD5_S33, MD5_T35);
   HH(b, c, d, a, x[14], MD5_S34, MD5_T36);
   HH(a, b, c, d, x[1], MD5_S31, MD5_T37);
   HH(d, a, b, c, x[4], MD5_S32, MD5_T38);
   HH(c, d, a, b, x[7], MD5_S33, MD5_T39);
   HH(b, c, d, a, x[10], MD5_S34, MD5_T40);
   HH(a, b, c, d, x[13], MD5_S31, MD5_T41);
   HH(d, a, b, c, x[0], MD5_S32, MD5_T42);
   HH(c, d, a, b, x[3], MD5_S33, MD5_T43);
   HH(b, c, d, a, x[6], MD5_S34, MD5_T44);
   HH(a, b, c, d, x[9], MD5_S31, MD5_T45);
   HH(d, a, b, c, x[12], MD5_S32, MD5_T46);
   HH(c, d, a, b, x[15], MD5_S33, MD5_T47);
   HH(b, c, d, a, x[2], MD5_S34, MD5_T48);
   // Perform Round 4 of the transformation
   II(a, b, c, d, x[0], MD5_S41, MD5_T49);
   II(d, a, b, c, x[7], MD5_S42, MD5_T50);
   II(c, d, a, b, x[14], MD5_S43, MD5_T51);
   II(b, c, d, a, x[5], MD5_S44, MD5_T52);
   II(a, b, c, d, x[12], MD5_S41, MD5_T53);
   II(d, a, b, c, x[3], MD5_S42, MD5_T54);
   II(c, d, a, b, x[10], MD5_S43, MD5_T55);
   II(b, c, d, a, x[1], MD5_S44, MD5_T56);
   II(a, b, c, d, x[8], MD5_S41, MD5_T57);
   II(d, a, b, c, x[15], MD5_S42, MD5_T58);
   II(c, d, a, b, x[6], MD5_S43, MD5_T59);
   II(b, c, d, a, x[13], MD5_S44, MD5_T60);
   II(a, b, c, d, x[4], MD5_S41, MD5_T61);
   II(d, a, b, c, x[11], MD5_S42, MD5_T62);
   II(c, d, a, b, x[2], MD5_S43, MD5_T63);
   II(b, c, d, a, x[9], MD5_S44, MD5_T64);
   m_State[0] := m_State[0] + a;
   m_State[1] := m_State[1] + b;
   m_State[2] := m_State[2] + c;
   m_State[3] := m_State[3] + d;
   FillChar(x, SizeOf(x), 0);
end;

// Encodes input (uint4) into output (uchar). Assumes nLength is
// a multiple of 4.
procedure TfrxMD5.Encode(dest: Puchar; src: Puint4; nLength: uint4);
var
   j: uint4;
   tmp: Puchar;
   tmp2: Puint4;
begin
   j := 0;
   tmp := dest;
   tmp2 := src;
   while j < nLength do
   begin
      tmp^ := uchar(tmp2^ and $FF);
      Inc(tmp);
      tmp^ := uchar((tmp2^ shr 8) and $FF);
      Inc(tmp);
      tmp^ := uchar((tmp2^ shr 16) and $FF);
      Inc(tmp);
      tmp^ := uchar((tmp2^ shr 24) and $FF);
      Inc(tmp);
      Inc(tmp2);
      j := j + 4;
   end;
end;

// Decodes input (uchar) into output (uint4). Assumes nLength is
// a multiple of 4.
procedure TfrxMD5.Decode(dest: Puint4; src: Puchar; nLength: uint4);
var
   j: uint4;
   tmp2: Puchar;
   tmp: Puint4;
begin
   j := 0;
   tmp := dest;
   tmp2 := src;
   while j < nLength do
   begin
      tmp^ := uint4(tmp2^);
      Inc(tmp2);
      tmp^ := tmp^ or uint4(tmp2^ shl 8);
      Inc(tmp2);
      tmp^ := tmp^ or uint4(tmp2^ shl 16);
      Inc(tmp2);
      tmp^ := tmp^ or uint4(tmp2^ shl 24);
      Inc(tmp2);
      Inc(tmp);
      j := j + 4;
   end;
end;

function TfrxMD5.RotateLeft(x: uint4; n: uint4): uint4;
begin
   Result := (x shl n) or (x shr (32 - n));
end;

procedure TfrxMD5.FF(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
  s: uint4; ac: uint4);
begin
   a := a + ((b and c) or (not b and d)) + x + ac;
   a := RotateLeft(a, s);
   a := a + b;
end;

procedure TfrxMD5.GG(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
  s: uint4; ac: uint4);
begin
   a := a + ((b and d) or (c and (not d))) + x + ac;
   a := RotateLeft(a, s);
   a := a + b;
end;

procedure TfrxMD5.HH(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
  s: uint4; ac: uint4);
begin
   a := a + (b xor c xor d) + x + ac;
   a := RotateLeft(a, s);
   a := a + b;
end;

procedure TfrxMD5.II(var a: uint4; b: uint4; c: uint4; d: uint4; x: uint4;
  s: uint4; ac: uint4);
begin
   a := a + (c xor (b or (not d))) + x + ac;
   a := RotateLeft(a, s);
   a := a + b;
end;

{$IFDEF OVERDEF}
{$UNDEF OVERDEF}
{$Q+}
{$ENDIF}

end.


// 205aa5d1322732bcddf9875f203310df

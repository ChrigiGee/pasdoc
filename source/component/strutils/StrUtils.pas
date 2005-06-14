{ This is a compatibility unit providing various utilities from
  StrUtils (present in FPC >= 1.9.x and Delphi >= 6) to older
  versions of these compilers, that should compile pasdoc
  (FPC 1.0.10 and Delphi 5).

  So this unit should be compilable only with FPC 1.0.10 and Delphi 5.
  When using these compilers, you should add this unit to your unit search
  path, and then pasdoc should compile "out of the box".
  When compiling pasdoc with newer compilers, you should just use
  StrUtils provided by them.

  When pasdoc 0.9.0 release will be made, compatibility of pasdoc with
  FPC 1.0.10 wil be dropped, so then this unit will be only for
  Delphi 5. (Unless the decision will be to drop Delphi 5 compatibility;
  but it seems that many people are committed to keeping Delphi 5
  compatibility -- OK, so you will have to maintain this unit
  and make sure that it works with Delphi 5 and allows compiling
  pasdoc with Delphi 5).

  Many bits in this unit may be copied from FPC StrUtils.pp
  implementation (but you should make sure that given
  implementation compiles and works with FPC 1.0.10 and Delphi 5,
  since FPC implementation of StrUtils is not targetted at these
  compilers).

}

unit StrUtils;

interface

Function IfThen(AValue: Boolean; const ATrue: string; AFalse: string): string; overload;
Function IfThen(AValue: Boolean; const ATrue: string): string; overload; // ; AFalse: string = ''

implementation

Function IfThen(AValue: Boolean; const ATrue: string; AFalse: string): string;

begin
  if avalue then
    result:=atrue
  else
    result:=afalse;
end;

Function IfThen(AValue: Boolean; const ATrue: string): string; // ; AFalse: string = ''

begin
  if avalue then
    result:=atrue
  else
    result:='';
end;

end.
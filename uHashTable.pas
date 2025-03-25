unit uHashTable;

interface

uses
    SysUtils;

const
    HashTableSize = 10;

type

    tEntrada = record
        key: string;
        value: Integer;
    end;

    tHashTable = array[0..HashTableSize-1] of tEntrada;

    procedure initialize(var table: tHashTable);
    procedure add(var table: tHashTable; key: string; value: Integer);
    procedure remove(var table: tHashTable; key: string);
    function contains(table: tHashTable; key: string): Boolean;
    procedure show_table_state(table: tHashTable);
    function hash_function(key: string): Integer;

implementation




procedure show_table_state(table: tHashTable);
var
    i: Integer;
begin
    for i := 0 to HashTableSize-1 do
    begin
        WriteLn(Format('[%s: %d]', [table[i].key, table[i].value]));
    end;
end;

end.
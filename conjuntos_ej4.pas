program conjuntos_ej4;

uses
  SysUtils,
  uHashTable;

type
  TTestResult = record
    Prueba: string;
    Resultado: string;
    ResultadoEsperado: string;
    OK: string;
  end;

var
  testResults: array of TTestResult;
  testCount: integer = 0;

procedure AddTestResult(const prueba, resultado, resultadoEsperado: string);
begin
  Inc(testCount);
  SetLength(testResults, testCount);
  testResults[testCount - 1].Prueba := prueba;
  testResults[testCount - 1].Resultado := resultado;
  testResults[testCount - 1].ResultadoEsperado := resultadoEsperado;
  if resultado = resultadoEsperado then
    testResults[testCount - 1].OK := 'Sí'
  else
    testResults[testCount - 1].OK := 'No';
end;

procedure TestInitialize;
var
  table: tHashTable;
  i: Integer;
  all_empty: Boolean;
begin
  initialize(table);
  all_empty := True;
  for i := Low(table) to High(table) do
  begin
    if table[i].key <> '' then
    begin
      all_empty := False;
      Break;
    end;
  end;
  AddTestResult('initialize', BoolToStr(all_empty), BoolToStr(True));
end;

procedure TestAdd;
var
  table: tHashTable;
  hash1, hash2: Integer;
begin
  initialize(table);
  add(table, 'clave1', 100);
  hash1 := hash_function('clave1');
  AddTestResult('add (un elemento)', Format('[%s: %d]', [table[hash1].key, table[hash1].value]), Format('[%s: %d]', ['clave1', 100]));

  add(table, 'clave2', 200);
  hash2 := hash_function('clave2');
  AddTestResult('add (dos elementos)',
                Format('[%s: %d], [%s: %d]', [table[hash1].key, table[hash1].value, table[hash2].key, table[hash2].value]),
                Format('[%s: %d], [%s: %d]', ['clave1', 100, 'clave2', 200]));

  // Test collision (assuming HashTableSize is small and keys can collide)
  // You might need to choose keys that you expect to collide based on the hash function
  // For example, with HashTableSize = 10, 'a' (97 mod 10 = 7) and 'k' (107 mod 10 = 7) would collide
  initialize(table);
  add(table, 'hola', 1);
  add(table, 'olah', 11); // This shouldnt overwrite 'hola'
  hash1 := hash_function('hola');
  AddTestResult('add (colisión)', Format('[%s: %d]', [table[hash1].key, table[hash1].value]), Format('[%s: %d]', ['hola', 1]));
end;

procedure TestRemove;
var
  table: tHashTable;
  hash1, hash_nonexistent: Integer;
begin
  initialize(table);
  add(table, 'clave1', 100);
  hash1 := hash_function('clave1');
  remove(table, 'clave1');
  AddTestResult('remove (elemento existente)', Format('[%s: %d]', [table[hash1].key, table[hash1].value]), Format('[%s: %d]', ['', 0]));

  initialize(table);
  add(table, 'clave2', 200);
  hash_nonexistent := hash_function('nonexistent');
  remove(table, 'nonexistent');
  AddTestResult('remove (elemento inexistente)', Format('[%s: %d]', [table[hash_function('clave2')].key, table[hash_function('clave2')].value]), Format('[%s: %d]', ['clave2', 200]));
end;

procedure TestContains;
var
  table: tHashTable;
begin
  initialize(table);
  add(table, 'clave1', 100);
  AddTestResult('contains (elemento existente)', BoolToStr(contains(table, 'clave1')), BoolToStr(True));
  AddTestResult('contains (elemento inexistente)', BoolToStr(contains(table, 'clave2')), BoolToStr(False));
  initialize(table);
  AddTestResult('contains (tabla vacía)', BoolToStr(contains(table, 'clave1')), BoolToStr(False));
end;

procedure PrintTestResults;
var
  i: integer;
begin
  Writeln('Prueba':30, 'Resultado':30, 'Resultado Esperado':30, 'OK':5);
  Writeln(StringOfChar('-', 95));
  for i := 0 to High(testResults) do
  begin
    Writeln(
      testResults[i].Prueba:30,
      testResults[i].Resultado:30,
      testResults[i].ResultadoEsperado:30,
      testResults[i].OK:5
    );
  end;
end;

begin
  TestInitialize;
  TestAdd;
  TestRemove;
  TestContains;

  PrintTestResults;

  Readln; // Para pausar la consola y ver los resultados
end.
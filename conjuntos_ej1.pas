program conjuntos_ej1;

uses uListaEnlazadaSimple;

function bool_to_str(b: boolean): string;
begin
    if b then
        bool_to_str := 'bien.'
    else
        bool_to_str := 'mal.';
end;



{ 
    Ejercicio 1: Utilizando un conjunto de Pascal, añade una operación al TAD ListaEnteros que permita
    eliminar todos los valores duplicados de una lista. Complejidad de tiempo esperada: O(n).
    Espacio auxiliar esperado: O(n).
}
procedure eliminar_duplicados(var list: tListaSimple);
var
begin
    WriteLn('Ejercicio 1: Eliminar duplicados de una lista, no implementado');
end;


procedure crear_lista_1(var l: tListaSimple);
begin
    initialize(l);
    insert_at_end(l, 1);
    insert_at_end(l, 3);
    insert_at_end(l, 4);
    insert_at_end(l, 5);    
    insert_at_end(l, 5);
    insert_at_end(l, 2);
    insert_at_end(l, 3);
end;

procedure crear_lista_2(var l: tListaSimple);
begin
    initialize(l);
    insert_at_end(l, 1);
    insert_at_end(l, 3);
    insert_at_end(l, 4);
    insert_at_end(l, 5);    
    insert_at_end(l, 2);
end;


procedure crear_lista_3(var l: tListaSimple);
begin
    initialize(l);
    insert_at_end(l, 1);
    insert_at_end(l, 1);
end;

procedure crear_lista_4(var l: tListaSimple);
begin
    initialize(l);
    insert_at_end(l, 1);
end;


procedure test_eliminar_duplicados();
var
    lista_original, lista_resultado: tListaSimple;
    resultado_str, original_str: string;
begin
    WriteLn('Ejercicio: Eliminar duplicados de una lista');
    WriteLn('===========================================');
    WriteLn;

    crear_lista_1(lista_original);
    crear_lista_2(lista_resultado);
    original_str := to_string(lista_original);
    eliminar_duplicados(lista_original);
    resultado_str := to_string(lista_original);

    WriteLn('Caso 1: ',  original_str, ' -> ', resultado_str, ' ', bool_to_str(resultado_str = to_string(lista_resultado)));

    clear(lista_original);
    clear(lista_resultado);

    crear_lista_3(lista_original);
    crear_lista_4(lista_resultado);
    original_str := to_string(lista_original);
    eliminar_duplicados(lista_original);
    resultado_str := to_string(lista_original);

    WriteLn('Caso 2: ',  original_str, ' -> ', resultado_str, ' ', bool_to_str(resultado_str = to_string(lista_resultado)));

end;


begin
    test_eliminar_duplicados();
    readln;
end.
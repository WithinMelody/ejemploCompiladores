lr_entorno_de_codigo:-
	retractall(esp_d(_,_)),
	retractall(de(_)),
	retractall(con(_)),
	retractall(ir_a(_)),
	retractall(conjunto(_)),
	retractall(auto(_,_,_)),
	retractall(finales(_)).

lr_gencod(reduce(0)):-!,
	lr_arch_sal(FILE),
	telling(OLD),
	tell(FILE),
	listing(esp_d),
	listing(auto),
	listing(finales),
	told,
	tell(OLD),!.

lr_gencod(shift(4)):-
	lr_token(_,L,_,_),
	retractall(conjunto(_)),
	asserta(conjunto(L)),
	assertz(esp_d(L,[])),!.

lr_gencod(shift(11)):-
	retractall(finales(_)),
	assertz(finales([])),!.

lr_gencod(shift(16)):-
	lr_token(_,MAY,_,_),
	retractall(de(_)),
	asserta(de(MAY)),!.

lr_gencod(shift(18)):-
	lr_token(_,NUM,_,_),
	atom_number(NUM,INT),
	conjunto(A),
	retract(esp_d(A,LISTA)),
	agrega_lista(INT,LISTA,NUEVA),
	assertz(esp_d(A,NUEVA)),!.

lr_gencod(shift(24)):-
	lr_token(_,FINAL,_,_),
	retract(finales(LISTA)),
	agrega_lista(FINAL,LISTA,NUEVA),
	assertz(finales(NUEVA)),!.

lr_gencod(shift(25)):-
	lr_token(_,SIMBOLO,_,_),
	retractall(con(_)),
	asserta(con(SIMBOLO)),!.

lr_gencod(shift(26)):-!,
	lr_token(_,NUM,_,_),
	atom_number(NUM,INT),
	conjunto(A),
	retract(esp_d(A,LISTA)),
	agrega_lista(INT,LISTA,NUEVA),
	assertz(esp_d(A,NUEVA)),!.

lr_gencod(shift(30)):-
	lr_token(_,FINAL,_,_),
	retract(finales(LISTA)),
	agrega_lista(FINAL,LISTA,NUEVA),
	assertz(finales(NUEVA)),!.

lr_gencod(shift(32)):-
	lr_token(_,MAY,_,_),
	retractall(ira_a(_)),
	asserta(ir_a(MAY)),!.

lr_gencod(reduce(9)):-
	de(A),
	con(B),
	ir_a(C),
	assertz(auto(A,B,C)),!.




lr_gencod(_).


agrega_lista(C,L,[C|L]).
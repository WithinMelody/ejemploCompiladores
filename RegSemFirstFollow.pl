lr_entorno_de_codigo:-
	retractall(lr_fof(_)),
	retractall(lr_noterm(_)),
	retractall(conjuntos(_,_,_)).

lr_gencod(shift(4)):-!,
	asserta(lr_fof('first')).

lr_gencod(shift(5)):-!,
	asserta(lr_fof('follow')).

lr_gencod(shift(8)):-
	lr_token(_,L,_,_),
	asserta(lr_noterm(L)),
	lr_fof(FOF),!,
	asserta(conjuntos(FOF,L,[])).

lr_gencod(shift(13)):-
	lr_token(_,LEX,_,_),
	lr_fof(FOF),
	lr_noterm(NT),
	retract(conjuntos(FOF,NT,LISTA)),!,
	asserta(conjuntos(FOF,NT,[LEX|LISTA])).

lr_gencod(reduce(0)):-!,
	lr_arch_sal(FILE),
	telling(OLD),
	tell(FILE),
	listing(conjuntos),
	told,
	tell(OLD),!.

lr_gencod(reduce(3)):-
	retractall(lr_fof(_)),
	retractall(lr_noterm(_)),!.


lr_gencod(_).

agrega_lista(C,L,[C|L]).
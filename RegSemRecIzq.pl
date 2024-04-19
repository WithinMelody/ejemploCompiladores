lr_entorno_de_codigo:-
	retractall(pri(_,_)),
	retractall(piz(_)),
	retractall(lst(_)),
	assertz(lst([])),!.

lr_gencod(shift(3)):-
	lr_token(_,LEX,_,_),
	assertz(piz(nt(LEX))),!.

lr_gencod(shift(7)):-
	retract(lst(L)),
	assertz(lst([epsilon|L])),!.

lr_gencod(shift(9)):-
	lr_token(_,LEX,_,_),
	retract(lst(L)),
	assertz(lst([term(LEX)|L])),!.

lr_gencod(shift(10)):-
	lr_token(_,LEX,_,_),
	retract(lst(L)),
	assertz(lst([nt(LEX)|L])),!.

lr_gencod(reduce(3)):-
	piz(PI),
	lst(L),
	invierte(L,[],NL),
	assertz(pri(PI,NL)),
	retractall(piz(_)),
	retractall(lst(_)),
	assertz(lst([])),!.
	
lr_gencod(reduce(0)):-!,
	lr_arch_sal(FILE),
	telling(OLD),
	tell(FILE),
	listing(pri),
	told,
	tell(OLD),!.


lr_gencod(_).


invierte([],A,A):-!.

invierte([C|R],T,A):-
	invierte(R,[C|T],A).
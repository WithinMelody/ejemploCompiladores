al_t(0,caracter('f'),1).
al_t(1,caracter('o'),2).
al_t(2,caracter('l'),3).
al_t(3,caracter('l'),4).
al_t(4,caracter('o'),5).
al_t(5,caracter('w'),6).
al_t(7,caracter('f'),8).
al_t(8,caracter('i'),9).
al_t(9,caracter('r'),10).
al_t(10,caracter('s'),11).
al_t(11,caracter('t'),12).
al_t(13,caracter('e'),14).
al_t(14,caracter('p'),15).
al_t(15,caracter('s'),16).
al_t(16,caracter('i'),17).
al_t(17,caracter('l'),18).
al_t(18,caracter('o'),19).
al_t(19,caracter('n'),20).
al_t(21,caracter('n'),22).
al_t(22,caracter('u'),23).
al_t(23,caracter('m'),24).
al_t(25,caracter('i'),26).
al_t(26,caracter('d'),27).
al_t(28,caracter('e'),29).
al_t(29,caracter('o'),30).
al_t(30,caracter('f'),31).
al_t(32,mayuscula,33).
al_t(33,otro,34).
al_t(35,lista([' ','\t','\n']),36).
al_t(36,lista([' ','\t','\n']),36).
al_t(36,otro,37).
al_t(38,caracter('{'),39).
al_t(38,caracter('}'),40).
al_t(38,caracter('('),41).
al_t(38,caracter(')'),42).
al_t(38,caracter('['),43).
al_t(38,caracter('+'),44).
al_t(38,caracter('-'),45).
al_t(38,caracter('/'),46).
al_t(38,caracter('*'),47).
al_t(38,caracter('='),48).
al_t(38,caracter('&'),49).
al_t(38,caracter('%'),50).
al_t(38,caracter('$'),51).
al_t(38,caracter('#'),52).
al_t(38,caracter('!'),53).
al_t(38,caracter('<'),54).
al_t(38,caracter('>'),55).
al_t(38,caracter(':'),56).
al_t(38,caracter('?'),57).
al_t(38,caracter(','),58).
al_t(38,caracter(']'),59).
al_t(38,caracter('@'),60).
al_t(61,eof,62).

al_a(6,normal,t('follow')).
al_a(12,normal,t('first')).
al_a(20,normal,t('term')).
al_a(24,normal,t('term')).
al_a(27,normal,t('term')).
al_a(31,normal,t('term')).
al_a(34,asterisco,t('nt')).
al_a(37,asterisco,omite).
al_a(39,normal,t('{')).						
al_a(40,normal,t('}')).						
al_a(41,normal,t('(')).						
al_a(42,normal,t(')')).						
al_a(43,normal,t('term')).						
al_a(44,normal,t('term')).						
al_a(45,normal,t('term')).						
al_a(46,normal,t('term')).						
al_a(47,normal,t('term')).						
al_a(48,normal,t('=')).						
al_a(49,normal,t('term')).						
al_a(50,normal,t('term')).						
al_a(51,normal,t('term')).						
al_a(52,normal,t('term')).						
al_a(53,normal,t('term')).						
al_a(54,normal,t('term')).						
al_a(55,normal,t('term')).						
al_a(56,normal,t('term')).						
al_a(57,normal,t('term')).						
al_a(58,normal,t(',')).						
al_a(59,normal,t('term')).						
al_a(60,normal,t('term')).						
al_a(62,normal,eof).




al_cambio_diagrama(0,7).
al_cambio_diagrama(7,13).
al_cambio_diagrama(13,21).
al_cambio_diagrama(21,25).
al_cambio_diagrama(25,28).
al_cambio_diagrama(28,32).
al_cambio_diagrama(32,35).
al_cambio_diagrama(35,38).
al_cambio_diagrama(38,61).



al_token(t(id),a).


al_simbolos:-
	al_cadena(t('term'),LEX,R,C),
	not(al_car_valido(LEX)),
	writef('Error lexicografico. Token [%w], Renglon [%w], Columna [%w]\n',[LEX,R,C]),
	!,fail.

al_simbolos:-
	al_cadena(t(nt),LEX,R,C),
	not(al_nt_valido(LEX)),
	writef('Error lexicografico. Token [%w], Renglon [%w], Columna [%w]\n',[LEX,R,C]),
	!,fail.

al_simbolos.


al_salida(FILE):-
	consult('Valores_First_Follow.pl'),
	al_simbolos,
	telling(OLD),
	tell(FILE),
	listing(al_cadena),
	told,
	tell(OLD),!.




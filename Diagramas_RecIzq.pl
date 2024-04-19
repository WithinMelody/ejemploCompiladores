al_t(0,caracter('e'),1).
al_t(1,caracter('p'),2).
al_t(2,caracter('s'),3).
al_t(3,caracter('i'),4).
al_t(4,caracter('l'),5).
al_t(5,caracter('o'),6).
al_t(6,caracter('n'),7).
al_t(8,caracter('n'),9).
al_t(9,caracter('u'),10).
al_t(10,caracter('m'),11).
al_t(12,caracter('i'),13).
al_t(13,caracter('d'),14).
al_t(15,caracter('-'),16).
al_t(16,caracter('-'),17).
al_t(17,caracter('>'),18).
al_t(19,mayuscula,20).
al_t(20,caracter('\''),20).
al_t(20,otro,21).
al_t(22,lista([' ','\t','\n']),23).
al_t(23,lista([' ','\t','\n']),23).
al_t(23,otro,24).
al_t(25,caracter('{'),26).						
al_t(25,caracter('}'),27).						
al_t(25,caracter('('),28).						
al_t(25,caracter(')'),29).						
al_t(25,caracter('['),30).						
al_t(25,caracter('+'),31).						
al_t(25,caracter('-'),32).						
al_t(25,caracter('/'),33).						
al_t(25,caracter('*'),34).						
al_t(25,caracter('='),35).						
al_t(25,caracter('&'),36).						
al_t(25,caracter('%'),37).						
al_t(25,caracter('$'),38).						
al_t(25,caracter('#'),39).						
al_t(25,caracter('!'),40).						
al_t(25,caracter('<'),41).						
al_t(25,caracter('>'),42).						
al_t(25,caracter(':'),43).						
al_t(25,caracter('?'),44).						
al_t(25,caracter(']'),45).						
al_t(25,caracter('@'),46).						
al_t(25,caracter(';'),47).						
al_t(48,eof,49).

al_a(7,normal,t('cadvacia')).
al_a(11,normal,t('term')).
al_a(14,normal,t('term')).
al_a(18,normal,t('flecha')).
al_a(21,asterisco,t('nt')).
al_a(24,asterisco,omite).
al_a(26,normal,t('term')).						
al_a(27,normal,t('term')).						
al_a(28,normal,t('term')).						
al_a(29,normal,t('term')).						
al_a(30,normal,t('term')).						
al_a(31,normal,t('term')).						
al_a(32,normal,t('term')).						
al_a(33,normal,t('term')).						
al_a(34,normal,t('term')).						
al_a(35,normal,t('term')).						
al_a(36,normal,t('term')).						
al_a(37,normal,t('term')).						
al_a(38,normal,t('term')).						
al_a(39,normal,t('term')).						
al_a(40,normal,t('term')).						
al_a(41,normal,t('term')).						
al_a(42,normal,t('term')).						
al_a(43,normal,t('term')).						
al_a(44,normal,t('term')).						
al_a(45,normal,t('term')).						
al_a(46,normal,t('term')).						
al_a(47,normal,t(';')).						
al_a(49,normal,eof).

al_cambio_diagrama(0,8).
al_cambio_diagrama(8,12).
al_cambio_diagrama(12,15).
al_cambio_diagrama(15,19).
al_cambio_diagrama(19,22).
al_cambio_diagrama(22,25).
al_cambio_diagrama(25,48).

al_token(t(id),a).

al_salida(estandar).



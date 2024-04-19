al_t(0,caracter('f'),1).
al_t(1,caracter('i'),2).
al_t(2,caracter('n'),3).
al_t(3,caracter('a'),4).
al_t(4,caracter('l'),5).
al_t(5,caracter('e'),6).
al_t(6,caracter('s'),7).
al_t(8,caracter('A'),9).
al_t(9,caracter('U'),10).
al_t(10,caracter('T'),11).
al_t(11,caracter('O'),12).
al_t(13,mayuscula,14).
al_t(14,otro,15).
al_t(16,minuscula,17).
al_t(17,otro,18).
al_t(19,digito,20).
al_t(20,digito,20).
al_t(20,otro,21).
al_t(22,lista([' ','\t','\n']),23).
al_t(23,lista([' ','\t','\n']),23).
al_t(23,otro,24).
al_t(25,caracter('{'),26).						
al_t(25,caracter('}'),27).						
al_t(25,caracter('['),28).						
al_t(25,caracter(']'),29).						
al_t(25,caracter('='),30).						
al_t(25,caracter(','),31).						
al_t(32,eof,33).

al_a(7,normal,t('finales')).
al_a(12,normal,t('auto')).
al_a(15,asterisco,t('may')).
al_a(18,asterisco,t('simbolo')).
al_a(21,asterisco,t('num')).
al_a(24,asterisco,omite).
al_a(26,normal,t('{')).						
al_a(27,normal,t('}')).						
al_a(28,normal,t('[')).						
al_a(29,normal,t(']')).						
al_a(30,normal,t('=')).						
al_a(31,normal,t(',')).						
al_a(33,normal,eof).


al_cambio_diagrama(0,8).
al_cambio_diagrama(8,13).
al_cambio_diagrama(13,16).
al_cambio_diagrama(16,19).
al_cambio_diagrama(19,22).
al_cambio_diagrama(22,25).
al_cambio_diagrama(25,32).

al_token(t(id),a).

al_salida(estandar).



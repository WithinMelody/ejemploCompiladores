lr_prod(0,'E',[nt('EXAMEN')]).
lr_prod(1,'EXAMEN',[nt('LINEA')]).
lr_prod(2,'EXAMEN',[nt('EXAMEN'),nt('LINEA')]).
lr_prod(3,'LINEA',[nt('FOF'),t('('),t('nt'),t(')'),t('='),t('{'),nt('LISTA'),t('}')]).
lr_prod(4,'FOF',[t('first')]).
lr_prod(5,'FOF',[t('follow')]).
lr_prod(6,'LISTA',[t('term'),t(','),nt('LISTA')]).
lr_prod(7,'LISTA',[t('term')]).

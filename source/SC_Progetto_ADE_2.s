	.data
x:	.word	1		;
i:	.word	2		;
lim:	.word	51		; il valore deve essere dispari

	.text
start:	LW	r1, x(r0)	; carico x
	Lw	r2, i(r0)	; carico i
	LW	r3, lim(r0)	; carico lim

loop0:	DADDI	r1, r1, 2	; incremento di 2 x
	DADDI	r2, r0, 2	; riporto r2 a 2
	BEQ	r1, r3, end	; se r1 ed r3 sono uguali termino il programmma

loop1:	BEQ	r2, r1, loop2	; se divisore e dividendo sono uguali salta
	DDIV	r6, r1, r2	; eseguo la divisione e la alloco in r6
	DMUL	r7, r6, r2	; moltiplico il risultato per il disore
	DSUB	r8, r1, r7	; calcolo il resto
	DADDI	r2, r2, 1	; incremento di 1 i
	BEQ	r8, r0, loop0	; se il resto della divisione è 0 salta il ciclo
	BNE 	r8, r0, loop1	; se il resto è diverso da 0 divido per il numero successivo


loop2:	DADDI	r10, r1, 0	; alloco il numero primo calcolato in r10
	BNE	r1, r3, loop0	; se r1 non è uguale a r3 torno al loop 0


end:
	HALT
pairing('C','G').
pairing('G','C').
pairing('T','A').
pairing('A','U').
rna_transcription(DNA_Str,RNA_Str):-
    string_chars(DNA_Str,DNA),
    rna_transcriptio(DNA,RNA),
    string_chars(RNA_Str,RNA).
rna_transcriptio([],[]).
rna_transcriptio([H|T], [R1|RT]):-
    pairing(H,R1),
    rna_transcriptio(T, RT).
    


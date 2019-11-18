/*
 CS3210 - Principles of Programming Languages - Fall 2019
Programming Assignment 03 - A Expert System 
Author(s):
       @Abinet Kenore
       @Rohit Shrestha
Professor @Thyago tmota
Date Nov 24, 2019
Reference https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_17.html
*/

begin:-
    disease(Disease),
    write('I believe that the patient have: '),
    write(Disease), nl,
    write('TAKE CARE '),
    undo.

/* Disease that should be tested */
    disease(cold) :- cold, !.
    disease(flu) :- flu, !.
    disease(typhoid) :- typhoid, !.
    disease(measles) :- measles, !.
    disease(malaria) :- malaria, !.
    disease(unknown). /* No diagnosis*/
    
/* Disease Identification Rules */  
cold :-
    symptom(headache),
    symptom(runny_nose),
    symptom(sneezing),
    symptom(sore_throat),
    write('Advices and Sugestions:'), nl,
    write('1: Tylenol/tab'), nl,
    write('2: panadol/tab'), nl,
    write('3: Nasal spray'), nl,
    write('Please weare warm cloths Because'), nl.

flu :-
    symptom(fever),
    symptom(headache),
    symptom(chills),
    symptom(body_ache),
    write('Advices and Sugestions:'), nl,
    write('1: Tamiflu/tab'), nl,
    write('2: panadol/tab'), nl,
    write('3: Zanamivir/tab'), nl,
    write('Please take a warm bath and do salt gargling '), nl.

typhoid :-
    symptom(headache),
    symptom(abdominal_pain),
    symptom(poor_appetite),
    symptom(fever),
    write('Advices and Sugestions:'), nl,
    write('1: Chloramphenicol/tab'), nl,
    write('2: Amoxicillin/tab'), nl,
    write('3: Ciprofloxacin/tab'), nl,
    write('4: Azithromycin/tab'), nl,
    write('Please do complete bed rest and take soft Diet '), nl.

measles :-
    symptom(fever),
    symptom(runny_nose),
    symptom(rash),
    symptom(conjunctivitis),
    write('Advices and Sugestions:'), nl,
    write('1: Tylenol/tab'), nl,
    write('2: Aleve/tab'), nl,
    write('3: Advil/tab'), nl,
    write('4: Vitamin A'), nl,
    write('Please Get rest and use more liquid'), nl.

 malaria :-
    symptom(fever),
    symptom(sweating),
    symptom(headache),
    symptom(nausea),
    symptom(vomiting),
    symptom(diarrhea),
    write('Advices and Sugestions:'), nl,
    write('1: Aralen/tab'), nl,
    write('2: Qualaquin/tab'), nl,
    write('3: Plaquenil/tab'), nl,
    write('4: Mefloquine'), nl,
    write('Please do not sleep in open air and cover your full skin '), nl.

/* How to ask questions */
ask(Question) :-
    write('Welcome to the RA Clinic and I am Dr. Prolg: '), nl,
    write(' I am going to ask questions about symptoms you have.'),
    write('Please answer yes. or no. Ready?'), nl,
    write('Does the patient have following symptom: '),
    write(Question),
    write('? '),
    read(Response), nl,
    ( (Response == yes ; Response == y)
    ->
    assert(yes(Question)) ;
    assert(no(Question)), fail).

:- dynamic yes/1,no/1.
    
/* How to symptom something */
symptom(S) :-
    (yes(S) -> true ;
    (no(S) -> fail ;
    ask(S))).

/* Undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
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
    repeat,
        greeting,
        ready,
        disease(Disease),
        write('I believe that the patient have: '),
        write(Disease), nl,
        write('TAKE CARE '), nl,
        renew,
    undo.

greeting :-
    write('Welcome to the RA Clinic and I am Dr. Prolg: '), nl,
    writeln('I am going to ask questions about symptoms you have. '),
    writeln('Please answer yes. or no. Ready?'), nl.

ready :-
    write('Do you have: '), nl.

check :-
    write('Did I get it right?'), nl,
    read(Credible), nl,
    ( (Credible == yes ; Credible == y)
    ->
    assert(yes(check));
    assert(no(check)), fail).

:- dynamic yes/1,no/1.

/* Disease that should be tested */
    disease(cold) :- cold, !.
    disease(flu) :- flu, !.
    disease(typhoid) :- typhoid, !.
    disease(measles) :- measles, !.
    disease(malaria) :- malaria, !.
    disease(laryngitis) :- laryngitis, ! .
    disease(ebola) :- ebola, ! .
    disease(tuberculosis) :- tuberculosis, ! .
    disease(sinusitis) :- sinusitis, ! .
    disease(tonsillitis) :- tonsillitis, ! .
    disease(hiv) :- hiv, ! .
    disease(pneumonia) :- pneumonia, ! .
    disease(westNilevirus) :- westNilevirus, !.
    disease(unknown) :- unknown, !. /* No Diagnosis*/
    
/* Disease Identification Rules */
cold :- %1
    symptom(headache),
    symptom(runny_nose),
    symptom(sneezing),
    symptom(sore_throat),
    write('Advices and Sugestions:'), nl,
    write('1: Tylenol/tab'), nl,
    write('2: panadol/tab'), nl,
    write('3: Nasal spray'), nl,
    write('Please wear warm cloths'), nl.

tonsillitis:-  %2
    symptom(headache),
    symptom(fever),
    symptom(fatigue),
    symptom(bad_breath),
    symptom(raspy_voice),
    write('Advices and Sugestions:'), nl,
    write('1: Drink hot ginger tea'), nl,
    write('2: panadol/tab'), nl.

flu :- %3
    symptom(headache),
    symptom(fever),
    symptom(chills),
    symptom(body_ache),
    write('Advices and Sugestions:'), nl,
    write('1: Tamiflu/tab'), nl,
    write('2: panadol/tab'), nl,
    write('3: Zanamivir/tab'), nl,
    write('Please take a warm bath and do salt gargling '), nl.

typhoid :- %4
    symptom(headache),
    symptom(fever),
    symptom(abdominal_pain),
    symptom(poor_appetite),
    write('Advices and Sugestions:'), nl,
    write('1: Chloramphenicol/tab'), nl,
    write('2: Amoxicillin/tab'), nl,
    write('3: Ciprofloxacin/tab'), nl,
    write('4: Azithromycin/tab'), nl,
    write('Please do complete bed rest and take soft Diet '), nl.

measles :- %5
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

ebola :-  %6
    symptom(fever),
    symptom(body_aches),
    symptom(diarrhea),
    symptom(bleading),
    write('Advices and Sugestions:'), nl,
    write('Would you like to voluntar in the reasearch'), nl.

 malaria :- %7
    symptom(headache),
    symptom(fever),
    symptom(sweating),
    symptom(nausea),
    symptom(vomiting),
    symptom(diarrhea),
    write('Advices and Sugestions:'), nl,
    write('1: Aralen/tab'), nl,
    write('2: Qualaquin/tab'), nl,
    write('3: Plaquenil/tab'), nl,
    write('4: Mefloquine'), nl,
    write('Please do not sleep in open air and cover your full skin '), nl.

laryngitis :- %8
    symptom(fever),
    symptom(cough),
    symptom(sore_throat),
    write('Advices and Sugestions:'), nl,
    write('comming soon'), nl.

tuberculosis :-  % 9
    symptom(fever),
    symptom(cough),
    symptom(weight_loss),
    symptom(weight_loss),
    write('Advices and Sugestions:'), nl,
    write('comming soon'), nl.

hiv :-          %10
    symptom(headache),
    symptom(fatigue),
    symptom(aching_muscles),
    symptom(sore_throat),
    write('Advices and Sugestions:'), nl,
    write('comming soon'), nl.

westNilevirus :-    %11
    symptom(headache),
    symptom(fever),
    symptom(diarrhea),
    symptom(loss_appitate),
    symptom(rash),
    symptom(nausea),
    symptom(muscle_weakness),
    symptom(coma),
    write('Advices and Sugestions:'), nl,
    write('comming soon'), nl.

sinusitis :-        %12
    symptom(facial_redness),
    symptom(teeth_pain),
    symptom(fatigue),
    symptom(dizziness),
    symptom(poor_balance),
    symptom(eye_pain),
    symptom(facial_redness),
    write('Advices and Sugestions:'), nl,
    write('comming soon'), nl.

pneumonia:-     %13
    symptom(fever),
    symptom(cough),
    symptom(low_appitate),
    symptom(felling_tired),
    symptom(cheast_pain),
    write('Advices and Sugestions:'), nl,
    write('Amoxil'), nl,
    write('ceftriaxone'), nl,
    write('Avelox'), nl.

unknown :-      %15
    write('Sorry!! I do not have all necessary information to figure out your disease.'), nl.

renew :-
    write('Do you wish to continue?'), nl,
    write('Enter begin to continue: '), nl,
    read(Continue), nl,
    ( (Continue == begin )
    ->
    assert(begin(renew));
    assert(no(renew)), fail).
:- dynamic begin/1,no/1.

/* How to ask questions */
ask(Question) :-
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
undo :- retractall(yes(_)),fail.
undo :- retractall(no(_)),fail.
undo.
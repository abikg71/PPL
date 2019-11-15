% CS3210 - Principles of Programming Languages - Fall 2019
Programming Assignment 03 - A Expert System
% Author(s):
%       @Abinet Kenore
%        @Rohit Shrestha
% Professor  @Thyago tmota
% Date Nov 24, 2019
%


:- dynamic fact/1.

is_true(Qu):-
(
  fact(Qu) ->
  true;
  format('~w?~n',[Qu]),
  Answer = read(yes),
  (
    Answer->
    assert(fact(Qu))
    )
).

 
 % How we are going to implement

diseases(influenza):- is_true(''), is_true('')             
diseases(mononucleosis):- is_true('')                
diseases(westNilevirus):- is_true('')             
diseases(peritonsillarAbscess):- is_true('')         
diseases(erythemaMultiforme):- is_true('')        
diseases(drugAllergy):- is_true('')           
diseases(laryngitis):- is_true('')                
diseases(tuberculosis):- is_true('')                           
diseases(tonsillitis):- is_true('')                 
diseases(stroke):- is_true('')                
diseases(diabetes):- is_true('')                  
diseases(anexity):- is_true('')                     
diabetes(ebola):- is_true('')                     
diseases(commoncold):- is_true('')
diseases(hayFever):- is_true()                   
diseases(sinusitis):- is_true('')
diseases(poisoning):-  is_true('')                  



% symptoms list 
    is_true('has bloating'),
    is_true('has cough'),
    is_true('has diarrhea'),
    is_true('has izziness'),
    is_true('has fatigue '),
    is_true('has nausea '),
    is_true('hasmuscle cramp'),
    is_true('has headache'),
    is_true(''),
    is_true('has vomiting'),
    is_true('has itching nose'),
    is_true(' has profound exhaustion or fatigue'),
    is_true('has muscle weakness'),
    is_true('has sweating too much'),
    is_true('has runny nose'),
    is_true('has sneezing'),
    is_true('has watery eyes'),
    is_true('has eyelid feels scratchy'),
    is_true('has dry cough'),
    is_true('has nasal congestion'),


 

% Conditions(diseases) that munches the given symptoms list .
 
    diseases(mononucleosis
    diseases(Acutesinusitis
    diseases(adenovirusinfection
    diseases(Strepthroat
    disease( viralgastroenteritis
    disease(chronicfatiguesyndromeCFIDS)
    disease(meningitis)
    disease(swineinfluenza)
    disease(laryngitis)
    disease(chronicsinusitis)
    disease(erythema multiforme)
    disease(drugallergy)
    disease(acute HIV infection)
    disease(peritonsillar abscess)
    disease(poisoning)
    disease(Sjogrens syndrome)
    disease(tuberculosis)
    disease(bacterial meningitis)
    disease(meningococcal meningitis)
    disease(epiglottitis)
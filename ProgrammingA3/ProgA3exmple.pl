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

animal(dog):- is_true('has fur'), is_true('says woof').
animal(cat):- is_true('has fur'), is_true('says mew').
animal(duck):- is_true('has feathers'), is_true('says quack').
animal(biird):- is_true('has feathers'), is_true('says chew'), is_true('can fly').
animal(bwng):- is_true('has feathers'), is_true('says chew'), is_true('can fly'). 
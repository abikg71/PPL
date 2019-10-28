% Xavier and Brandi are facality
% Harvey, Ariel, Charlie, Dan are students
% Laverne and Ramon are vistors
% Dan is advised by Xavier while Ariel is advised by Brandi
% Rule:
% faculty and students have access to the lab durning the week
% only faculty or students currently being advised by faculty have access to the
% lab durning the weekend

faculty(xavier).
faculty(brandi).
student(harvey).
student(ariel).
student(charlie).
student(dan).
vistor(laverne).
vistor(ramon).
weekday(X) :- faculty(X);student(X).
advisor(xavier,dan).
advisor(brandi,ariel).
weekend(X):- faculty(X);(student(X),faculty(Y),advisor(Y,X)).

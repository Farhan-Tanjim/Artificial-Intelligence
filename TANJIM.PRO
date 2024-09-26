domains
    disease,indication = symbol
    patient = string

predicates
    hypothesis(patient,disease)
    symptom(patient,indication)
    response(char)
    go

clauses
    go:-
      write("What is patient's name ?"),
      readln(Patient),
      hypothesis(Patient,Disease),
      write(Patient," probably has ",Disease,"."),nl.


   go:-
     write("Sorry I don’t seem to be able to diagnose the disease"),nl.
    
    symptom(Patient,neck_pain):-
        write("Does ",Patient," have a neck pain (y/n)? "),
        response(Reply),
        Reply='y'.

    symptom(Patient,shoulder_pain) :-
        write("Does ",Patient," have a shoulder_pain (y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,fast_heartbeat) :-
        write("Does ",Patient," have a fast heartbeat (y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,fatigue) :-
        write("Does ",Patient," have a fatigue (y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,sweating) :-
        write("Does ",Patient,"have a sweating(y/n)?"),
        response(Reply),
        Reply='y'.
 
    symptom(Patient,aching) :-
        write("Does ",Patient," have aching (y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,shortness_breath) :-
        write("Does ",Patient," have a shortness of breath(y/n) ?"),
        response(Reply),
        Reply='y'.

   symptom(Patient,high_blood_presure) :-
        write("Does ",Patient," have a high_blood_presure (y/n) ?"),
        response(Reply),
        Reply='y'.
   
   symptom(Patient,squeezing) :-
       write("Does ",Patient," have a sueezing(y/n) ?"),
       response(Reply),
       Reply='y'.

   symptom(Patient,tightness) :-
       write("Does ",Patient," have a tightness (y/n) ?"),
       response(Reply),
       Reply='y'.

  symptom(Patient,vomiting) :-
       write("Does ",Patient," have a vomiting (y/n) ?"),
       response(Reply),
       Reply='y'.
 
   symptom(Patient,profase_sweating) :-
       write("Does ",Patient," have profase sweating(y/n)? "),
       response(Reply),
       Reply='y'.

  symptom(Patient,fainting) :-
       write("Does ",Patient," have pain and fainting(y/n)? "),
       response(Reply),
       Reply='y'.

  symptom(Patient,diabetes) :-
       write("Does ",Patient," have diabetes (y/n)? "),
       response(Reply),
       Reply='y'.

   symptom(Patient,past_heart_attrack) :-
       write("Does ",Patient," have past heart attrack(y/n)? "),
       response(Reply),
       Reply='y'.

   symptom(Patient,lung_disease) :-
       write("Does ",Patient," have lung disease(y/n)? "),
       response(Reply),
       Reply='y'.

  symptom(Patient,coronary_alergy) :-
       write("Does ",Patient," have coronary alargy(y/n)? "),
       response(Reply),
       Reply='y'.
       
  symptom(Patient,blue_skin_or_lips) :-
 	write("Does ",Patient," have blue skins or lips(y/n)? "),
 	response(Reply),
 	Reply='y'.
 
    symptom(Patient,swelling) :-
 	write("Does ",Patient," have Swelling in the legs or around eyes(y/n)? "),
 	response(Reply),
 	Reply='y'.
 
    symptom(Patient,poor_weight) :-
 	write("Does ",Patient," leading to Poor weights(y/n)? "),
 	response(Reply),
 	Reply='y'.

   symptom(Patient,irregular_heartbeat) :-
 	write("Does ",Patient," suffer irregular heratbeats(y/n) ?"),
 	response(Reply),
	 Reply='y'.

   symptom(Patient,chest_pain) :-
 	write("Does ",Patient," have chest pain(y/n) ?"),
 	response(Reply),
 	Reply='y'.


   symptom(Patient,dizziness) :-
 	write("Does ",Patient," have dizziness(y/n) ?"),
 	response(Reply),
 	Reply='y'.

   symptom(Patient,slow_heartbeat) :-
 	write("Does ",Patient," have slow heartbeat(y/n) ?"),
 	response(Reply),
 	Reply='y'.

   symptom(Patient,lightheadedness) :-
 	write("Does ",Patient," have lightheadedness(y/n) ?"),
 	response(Reply),
 	Reply='y'.



 hypothesis(Patient,ischemia):-
    symptom(Patient,neck_pain),
    symptom(Patient,shoulder_pain),
    symptom(Patient,fast_heartbeat),
    symptom(Patient,fatigue),
    symptom(Patient,sweating).

hypothesis(Patient,angina):-
    symptom(Patient,aching),
    symptom(Patient,shortness_breath),
    symptom(Patient,profuse_sweating),
    symptom(Patient,high_blood_presure),
    symptom(Patient,squeezing),
    symptom(Patient,tightness).

hypothesis(Patient,heart_attrack):-
    symptom(Patient,vomiting),
    symptom(Patient,fast_heartbeat),
    symptom(Patient,high_blood_presure),
    symptom(Patient,profuse_sweating),
    symptom(Patient,shortness_breath),
    symptom(Patient,fainting).

hypothesis(Patient,heart_failure):-
    symptom(Patient,diabetes),
    symptom(Patient,past_heart_attrack),
    symptom(Patient,high_blood_presure),
    symptom(Patient,lung_disease),
    symptom(Patient,coronary_alergy).

hypothesis(Patient,congenital_heart_defects):-
    symptom(Patient,blue_skin_or_lips),
    symptom(Patient,poor_weight),
    symptom(Patient,shortness_breath),
    symptom(Patient,swelling).

hypothesis(Patient,cardiomyopathy):-
    symptom(Patient,dizziness),
    symptom(Patient,irregular_heartbeat),
    symptom(Patient,fainting),
    symptom(Patient,fatigue),
    symptom(Patient,shortness_breath).

hypothesis(Patient,valvular_heart_disease):-
    symptom(Patient,chest_pain),
    symptom(Patient,irregular_heartbeat),
    symptom(Patient,fainting),
    symptom(Patient,fatigue),
    symptom(Patient,shortness_breath),
    symptom(Patient,swelling).

hypothesis(Patient,heart_arrhythmias):-
    symptom(Patient,slow_heartbeat),
    symptom(Patient,chest_pain),
    symptom(Patient,dizziness),
    symptom(Patient,fainting),
    symptom(Patient,shortness_breath),
    symptom(Patient,lightheadedness).


response(Reply) :-
    readchar(Reply),
    write(Reply),nl.

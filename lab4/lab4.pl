append1([], List2, List2).
append1([H|T1], List2, [H|T2]):- append1(T1, List2, T2).


%task 1.7
%длина массива - N

%empty_list(List):-List is [].
%add_list(Elem,[H,T]):-
head_list([H|_],H).
empty_list([]).

add_list(_,[]):-!.
add_list(Elem,[_|T]):-add_list(Elem,T), T is [Elem].

add_list_top(N,[H|T],[H1,T1]):- N>0 -> (H1 is H, N1 is N-1, add_list_top(N1,T,T1));!.

cycle_2_right(N):-read_list(N,List),
    Numb1 is N-1, %последний
    Numb2 is N-2, %предпоследний
    list_el_numb(List,Elem1,Numb1),
    list_el_numb(List,Elem2,Numb2),
    append1([],[Elem2,Elem1],NewList1),
    %write_list(NewList)
    add_list_top(Numb2,List,NewList2),
    append1(NewList1,NewList2,NewList),
    write_list(NewList)
    .



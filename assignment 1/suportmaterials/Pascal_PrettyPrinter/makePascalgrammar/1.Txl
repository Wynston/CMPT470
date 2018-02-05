keys
    'program 'end 'begin 'Write
end keys    

define program
    [repeat statement]
end define

define statement
    [programTitle]
    | [startStatement]
    | [writeStatement]
    | [endStatement]
end define

define programTitle
    'program [id] '; [NL][NL]
end define    

define startStatement
   begin [NL][IN]
end define        

define endStatement
    [EX] 'end.
end define    

define writeStatement
    Write '( [charlit] '); [NL]
end define    

function main
    replace [program]
        P [program]
    by
        P
end function    
    

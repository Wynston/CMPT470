#pragma -comment

comments
    { }
end comments    

keys
    'program 'end 'begin 'Write 'Readln 'uses 'crt 'ClrScr
    'TextBackground 'TextColor 'Sound 'Delay 'NoSound
    'Window 'GoToXY
end keys    

define program
    [repeat statement]
end define

define statement
    [programTitle] [NL][NL]
    | [comment] [NL] %a comment is anything between {}
    | [usesStatement] [NL]
    | [windowStatements] [NL]
    | [actionStatement]
    | [startStatement]
    | [writeStatement]
    | [readStatement]
    | [colorStatements] [NL]
    | [soundStatements] [NL]
    | [endStatement]
end define

define programTitle
    'program [id] ';
end define    

define startStatement
   begin [NL][IN]
end define        

define endStatement
    [EX] 'end.
end define    

define usesStatement
    uses [NL][IN] [useTypes] [NL][EX]
end define    

define colorStatements
    TextBackground '( [color] ');
    | TextColor '( [color] ');
end define

define windowStatements
    Window '( [number], [number], [number], [number] ');
    | GoToXY '( [number], [number] ');
end define    

define soundStatements
    Sound '( [number] ');
    | Delay '( [number] ');
    | NoSound;
end define

define color
    [id]
end define    

define actionStatement
    ClrScr; [NL]
end define

define useTypes
    crt;
end define

define writeStatement
    Write '( [charlit] '); [NL]
    | Writeln '( [charlit] '); [NL]
end define

define readStatement
    Readln; [NL]
end define    

function main
    replace [program]
        P [program]
    by
        P
end function    
    

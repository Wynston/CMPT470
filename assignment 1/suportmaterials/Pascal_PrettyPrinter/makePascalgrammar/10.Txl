#pragma -comment

comments
    { }
end comments    

keys
    'program 'end 'begin 'Write 'Readln 'uses 'crt 'ClrScr
    'TextBackground 'TextColor 'Sound 'Delay 'NoSound
    'Window 'GoToXY 'Byte 'Word 'ShortInt 'Integer 'LongInt
    'Real 'Char 'String 'Boolean 'mod 'div 'ReadKey
end keys    

compounds
    :=
end compounds    

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
    | [writeStatement] [NL]
    | [readStatement] [NL]
    | [colorStatements] [NL]
    | [soundStatements] [NL]
    | [variableDeclar] [NL]
    | [assignExpr] [NL]
    | [endStatement]
end define

define programTitle
    'program [id] ';
end define    

define assignExpr
    [id] [assignOp] [expression]';
    | [id] [assignOp] [charExpression]';
end define    

define assignOp
    ':=
end define

define charExpression
    [charlit]
    | [charExpression] '+ [charExpression]
end define    

define expression
    [ID_or_Number]
    | [expression] [op] [expression]
end define

define op
    '+ | '- | '/ | '* | 'mod | 'div
end define

define ID_or_Number
    [id]
    | [number]
    | '-[number]
end define    

define variableDeclar
    var [NL][IN] [repeat variable] [EX]
end define

define variable
    [varName]: [type] '; [NL]
end define    

define varName
    [id]
    | [id], [varName]
end define    

define type
    'Byte | 'Word | 'ShortInt | 'Integer | 'LongInt | 'Real
    | 'Char | 'String | 'Boolean
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
    Write '( [charlit] ');
    | Writeln '( [charlit] ');
    | Writeln '( [id] ');
    | Writeln'([id], [charlit] ');
end define

define readStatement
    Readln;
    | Readln([id]);
    | [id] [assignOp] 'ReadKey;
end define    

function main
    replace [program]
        P [program]
    by
        P
end function    
    

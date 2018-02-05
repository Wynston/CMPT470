#pragma -comment

comments
    { }
end comments    

keys
    'program 'end 'begin 'Write 'Readln 'uses 'crt 'ClrScr
    'TextBackground 'TextColor 'Sound 'Delay 'NoSound
    'Window 'GoToXY 'Byte 'Word 'ShortInt 'Integer 'LongInt
    'Real 'Char 'String 'Boolean 'mod 'div 'ReadKey
     'case  'for 'do 'while
end keys    

compounds
    ':= '>= '<= '<>
end compounds    

define program
    [code]
end define

define code
    [opt comment]  [NL]  %optional comment to describe prog
    [programTitle] [NL][NL]
    [opt preStatements] [NL][NL]
    [startStatement][NL]
    [repeat statement]
    [endStatement]
end define

define preStatements
    [repeat preStatement] [NL][NL]
end define    

define preStatement
    [comment]
    | [constant]
    | [variableDeclar]
    | [usesStatement]
end define

define statement
    [comment] %a comment is anything between {}
    | [windowStatements]
    | [conditionExpression] 
    | [actionStatement] 
    | [writeStatement] 
    | [readStatement] 
    | [colorStatements] 
    | [soundStatements] 
    | [assignExpr] 
    | [caseStatement] 
    | [loops]
end define

define programTitle
    'program [id] ';
end define    

define endLine  %the '; is optional in condition statments
    ';
end define    
    
define assignExpr
    [id] [assignOp] [expression][opt endLine]       [NL]
    | [id] [assignOp] [charExpression][opt endLine] [NL]
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
    | [expression] [conditionOp] [expression] %boolean values can be assign
end define

define op
    '+ | '- | '/ | '* | 'mod | 'div
end define

define caseStatement
    'case [id] 'of                  [NL] [IN]
        [repeat caseBody] 
        [EX] [opt elseStatement] [IN]
        [endStatement]              [NL]
end define

define loops
   [whileLoop] | [forLoop]
end define    

define whileLoop
   while [ifCondition]    [NL]
        [IN] [blockCode] [EX][NL] 
end define

define forLoop
    for [id] [assignOp] [number] to [number] do     [NL]
        [IN] [blockCode] [EX][NL]
end define

define caseBody
        [charlit]: [statement]
end define        

define conditionExpression
    [ifStatement] | [ifStatement] [elseStatement]
end define 

define ifStatement
    if [ifCondition] then
        [NL][IN] [blockCode] [EX]
    | if '([ifCondition]') [and_or] '([ifCondition]') then
         [NL][IN] [blockCode] [EX]
end define

define blockCode
    [innerCode]
    | [statement]
    | [conditionExpression]
end define    

define innerCode
    [startStatement][NL][repeat statement][endStatement] [NL]
end define

define ifCondition
    [id] [conditionOp] [ID_or_Number]
end define    

define and_or
    'and | 'or
end define    

define elseStatement
    else [NL][IN] [blockCode] [EX][NL]
end define    

define conditionOp
    '> | '< | '>= | '<= | '= | '<>
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
    [varName]: [type] [opt endLine] [NL]
end define    

define varName
    [id]
    | [id], [varName]
end define    

define constant
    const [NL][IN] [varName]: [type] '= [number]'; [NL][EX]
end define    

define type
    'Byte | 'Word | 'ShortInt | 'Integer | 'LongInt | 'Real
    | 'Char | 'String | 'Boolean
end define    

define startStatement
   begin [IN]
end define        

define endStatement
    [EX] 'end.
    | [EX] 'end;    %used in a condition block, or loop
    | [EX] 'end %used at the end of a condition block with a following else
end define    

define usesStatement
    uses [NL][IN] [useTypes] [NL][EX]
end define    

define colorStatements
    TextBackground '( [color] ')[opt endLine]   [NL]
    | TextColor '( [color] ')[opt endLine]      [NL]
end define

define windowStatements
    Window '( [number], [number], [number], [number] ')[opt endLine] [NL]
    | GoToXY '( [number], [number] ')[opt endLine]  [NL]
end define    

define soundStatements
    Sound '( [number] ')[opt endLine]       [NL]
    | Delay '( [number] ')[opt endLine]     [NL]
    | NoSound[opt endLine]                  [NL]
end define

define color
    [id]
end define    

define actionStatement
    ClrScr[opt endLine]                     [NL]
end define

define useTypes
    crt;
end define

define writeStatement
    Write '( [charlit] ')[opt endLine]          [NL]
    | Writeln '( [charlit] ')[opt endLine]      [NL]
    | Writeln '( [id] ')[opt endLine]           [NL]
    | Writeln'([id], [charlit] ')[opt endLine]  [NL]
    | Writeln'([charlit],[id]')[opt endLine]    [NL]
end define

define readStatement
    Readln[opt endLine]                         [NL]
    | Readln([id])[opt endLine]                 [NL]
    | [id] [assignOp] 'ReadKey[opt endLine]     [NL]
end define    

function main
    replace [program]
        P [program]
    by
        P
end function    
    

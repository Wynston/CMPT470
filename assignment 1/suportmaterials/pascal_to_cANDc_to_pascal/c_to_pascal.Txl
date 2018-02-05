include "c_union_pascal.Grm"

rule main
	replace [program]
		p [program]
	construct newP [program]
		p [changeBlockToPascal] [changeBoolExprToPascal] 
[chageAssignmentToPascal] [changeIfStatement]
[changeProgramToPascal]
	where not
		p [= newP]
	by 
		newP
end rule


rule changeProgramToPascal
	replace [program]
		'int name [id] '( params [list formal] ')
        	code [block]
	by
		'program name '( params ')		
		 code
end rule


rule changeBlockToPascal
	replace [block]
	        '{ cmds [repeat command] '}		
	by
		'begin  
                     cmds  
                'end		
end rule


rule changeBoolExprToPascal 
	replace [boolExpr]
		'==
	by
		'=
end rule


rule chageAssignmentToPascal
	replace [assignmentOpertator]
		'=
	by
		':=		

end rule

rule changeIfStatement
     replace [ifStatement]
	'if Cond [condition]  
         cmds [command]
      by
        'if Cond 'then 
         cmds   
end rule


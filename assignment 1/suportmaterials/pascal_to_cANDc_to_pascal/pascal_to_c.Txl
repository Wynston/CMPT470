include "pascal_union_c.Grm"

rule main
	replace [program]
		p [program]
	construct newP [program]
		p [changeBlock] [changeBoolExpr] [chageAssignment] [changeProgram]
	where not
		p [= newP]
	by 
		newP
end rule

rule changeProgram
	replace [program]
		'program name [id] '( params [list formal] ')
        	code [block]
	by
		'int name '( params ') 
		code
end rule


rule changeBlock
	replace [block]
		'begin  cmds [repeat command] 'end
	by
		'{ cmds '}
end rule

rule changeBoolExpr 
	replace [boolExpr]
		'=
	by
		'==
end rule

rule chageAssignment
	replace [assignmentOpertator]
		':=
	by
		'=
end rule

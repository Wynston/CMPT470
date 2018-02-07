% Grammar:
define program
	[c_function]
end define

define c_function
	[function_head] [NL]
	{ [NL][IN]
	  [repeat function_body]
	}
end define

define function_head
	[return_type] [function_name]()
end define

define function_name
	[id]
end define

define function_body
	[repeat statement]
	| [return_statement]
end define

define return_type
	int
end define

define variable_declaration
	[id] [list id]; [NL]
	| [id] [id] [id] = [number]; [NL]
	| [id] [id] [id]; [NL]
end define

define print_statement
	printf([stringlit]); [NL]
	| printf([stringlit],[id]); [NL]
end define

define return_statement
	return [return_value]; [NL][EX]
end define

define return_value
	[number]
end define

define assign_variable
	[id] = [number]; [NL]
	| [id] = [charlit]; [NL]
	| [id] = [arithmetic]; [NL]
end define

define arithmetic
	[id] + [number]
	| [id] - [number]
	| [id] * [number]
end define

define scan_statement
	scanf([stringlit],[id]); [NL]
end define

tokens
	id | "[&]\i*"
end tokens

define operator
	'>
	| '==
	| '<=
	| '<
end define

define condition
	[id] [operator] [number]
	| [opt '!][opt '(] [id] [operator] [number] [opt ')] [and_or] [opt '!][opt '(] [id] [operator] [number] [opt ')]
	| [id] [operator] [id]
end define

define if_statement
	if ([condition]) [NL] [IN]
	[repeat assign_variable]
	[repeat print_statement]
	[opt break_statement] [EX]
	| if ([condition]) [NL] 
	[left_curly_bracket] [IN]
	[repeat assign_variable]
	[repeat print_statement] 
	[opt break_statement] [EX]
	[right_curly_bracket]
end define

define else_statement
	else [NL] [opt left_curly_bracket] [IN]
	[repeat assign_variable]
	[repeat print_statement] [EX]
	[opt right_curly_bracket]
end define

define condition_expression
	[if_statement]
	| [if_statement] [else_statement]
end define

define left_curly_bracket
	'{ [NL]
end define

define right_curly_bracket
	'} [NL]
end define

define and_or
	'&&
	| '|'|
end define

define switch_statement
	switch ([id]) [NL][IN]
	[left_curly_bracket]
	[repeat switch_body]
	default: [NL][IN]
	[statement] [EX]
	[right_curly_bracket] [EX]
end define

define switch_body
	case [charlit]: [NL][IN]
	[statement]
	break; [NL][EX]
end define

define for_loop
	for([id] = [number];[condition];[increment_or_decrement]) [NL] [IN]
	[repeat statement] [EX]
end define

define increment_or_decrement
	[id]++
	| [id]--
end define

define statement
	[variable_declaration]
	| [scan_statement] 
	| [condition_expression] 
	| [assign_variable] 
	| [print_statement]
	| [switch_statement] 
	| [for_loop]
	| [while_loop]
	| [do_while_loop]
end define

define while_loop
	while([condition]) [NL]
	[opt left_curly_bracket] [IN]
	[opt itteration]
	[repeat statement] [EX]
	[opt right_curly_bracket] 
end define

define itteration
	[increment_or_decrement]; [NL]
end define

define do_while_loop
	do [NL]
	[opt left_curly_bracket] [IN]	
	[opt itteration]
	[repeat statement] [EX]
	[opt right_curly_bracket] 
	while ([condition]); [NL]
end define

define break_statement
	break; [NL]
end define

% Rules:
function main
    match [program]
	P[program]
end function
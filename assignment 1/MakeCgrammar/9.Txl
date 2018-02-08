%CMPT 470, Assignment1
%Wynston Ramsay - WCR723
%Darvin Zhang   - DDZ369
%PrettyPrinter for C programs

% Grammar:
define program
	[c_function]
end define

define c_function
	[function_head] [NL]
	{ [NL][IN]
	  [function_body]
	}
end define

define function_head
	[return_type] [function_name]()
end define

define function_name
	[id]
end define

define function_body
	[repeat variable_declaration] [repeat scan_statement] [repeat if_statement] [repeat assign_variable] [repeat print_statement] [return_statement]
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
end define

define condition
	[id] [operator] [number]
end define

define if_statement
	if ([condition]) [NL][IN]
	[assign_variable] [EX]
end define

% Rules:
function main
    match [program]
	P[program]
end function
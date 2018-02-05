program ComplexInput3;

uses
    crt;
var
    SEL, NUM, MORE : Integer;
    YN : Char;

begin
    Writeln ('[1].PLAY GAME');
    Writeln ('[2].LOAD GAME');
    Writeln ('[3].MULTIPLAYER');
    Writeln ('[4].EXIT GAME');
    Writeln ('note: Do note press anything except');
    Writeln ('numbers; otherwise an error occurs!');
    Readln (SEL);
    case SEL of
        1 : begin
                Writeln ('Are you able to create');
                Writeln ('a game of yourself using pascal??');
                Delay (2000);
            end;
        2 : begin
                Writeln ('Enter a number between 10 and 20:');
                Readln (MORE);
                if (MORE < 10) or (MORE > 20) then
                    Writeln ('I SAID BETWEEN 10 AND 20');
                else
                    begin
                        Writeln ('good you can listen to instructions');
                        Writeln ('nice work');
                    end;

                Delay (2000);
            end;
        3 : begin
                Writeln ('networking or 2 players?');
                Readln (NUM);
                if NUM > 2 then
                    Writeln ('You like playing with others!');
                else
                    Writeln ('Not going to play with anyone else?');

            end;
        4 : begin
                Writeln ('Exit?');
                YN := Readkey;
                case YN of
                    'y' : Writeln ('Nooooooooooooo...');
                    'n' : Writeln ('Whew!');
                end;
            end;
    end;
end.

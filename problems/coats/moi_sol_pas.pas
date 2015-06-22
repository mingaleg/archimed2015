var
    current_coat: integer;
    n : integer; 
    x, d : double;
    ans: integer;
    i : integer;
    t : double;

begin
    read(x, d);
    read(n);
    read(t);
    if t <= x then
        current_coat := 0
    else
        current_coat := 1;
    for i := 2 to n do begin
        read(t);
        if (current_coat = 0) and (t >= x + d) then begin
            current_coat := 1;
        end else if (current_coat = 1) and (t <= x - d) then begin
            current_coat := 0;
        end;
        if (current_coat = 0) and (t > x)  then inc(ans);
        if (current_coat = 1) and (t <= x) then inc(ans);
    end;
    writeln(ans);
end.

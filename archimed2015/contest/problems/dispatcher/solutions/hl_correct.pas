uses 
    math;
var 
    b, f, time: int64;
    i, j, to_sit, n: longint;
    t: array[1..2000] of int64;
    down: array[1..2000] of Boolean;
begin
    read(n, b, f);
    for i := 1 to n do read(t[i]);
    for i := 1 to n do down[i] := false;
    time := 0;
    for i := 1 to n do begin
        for j := 1 to n do begin
            if (down[j] = false) and (t[j] < time) then
                t[j] := t[j] + ceil((time-t[j])/f)*f;
        end;
        to_sit := -1;
        for j := 1 to n do begin
            if not down[j] then
                if to_sit = -1 then
                    to_sit := j
                else
                    if (t[j] < t[to_sit]) then
                        to_sit := j;
        end;
        time := t[to_sit] + b;
        down[to_sit] := true;
    end;
    writeln(time);
end.
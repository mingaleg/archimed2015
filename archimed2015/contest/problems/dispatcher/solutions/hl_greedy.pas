uses 
    math;
var 
    b, f, n, time, i, j, mini: Longint;
    t: array[1..2000] of Longint;
begin
    read(n, b, f);
    for i := 1 to n do read(t[i]);
    time := 0;
    for i := 1 to n do begin
        mini := -1;
        for j := 1 to n do begin
            if (mini <> -1) then
                if (t[j] <> -1) and (t[j] < t[mini]) then
                    mini := j
                else begin
                end
            else
                if (t[j] <> -1) then
                    mini := j;
        end;
        if time > t[mini] then
            time := t[mini] + ceil((time - t[mini])/f)*f
        else
            time := t[mini];
        time := time + b;
        t[mini] := -1;
    end;
    writeln(time);
end.
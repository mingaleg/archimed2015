var
    n, i, j, people: longint;
    a: array[1..2000] of longint;
begin
    read(n);
    for i := 1 to n do
        begin
            read(a[i]);
        end;
    people := 0;
    for i := 1 to n do
        for j := 1 to n do
            begin
                if (a[j] <> -1) and (people >= a[j]) then
                    begin
                        inc(people);
                        a[j] := -1;
                    end;
            end;
    if people = n then
        writeln('YES')
    else
        writeln('NO');
end.
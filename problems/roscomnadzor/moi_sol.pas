var
    s, t: string;
    i: integer;

begin
    readln(s);
    readln(t);
    for i := 1 to length(s) do begin
        if s[i] = '3' then s[i] := 'e';
        if s[i] = '0' then s[i] := 'o';
        if s[i] = '1' then s[i] := 'i';
        if s[i] = '7' then s[i] := 't';
        if s[i] = '4' then s[i] := 'a';
        if s[i] = '5' then s[i] := 's';
    end;
    if pos(t, s) = 0 then
        writeln('NO')
    else
        writeln('YES');
end.

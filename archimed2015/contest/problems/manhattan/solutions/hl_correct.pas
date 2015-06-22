uses
	math, sysutils;
var
	ax, ay, bx, by, movx, movy, ans, movbx, movby: integer;
begin
	read(ax, ay, bx, by);
	if abs(ay) mod 2 = 0 then
		movx := -1
	else
		movx := 1;
	if abs(ax) mod 2 = 0 then
		movy := -1
	else
		movy := 1;
	if abs(by) mod 2 = 0 then
		movbx := -1
	else
		movbx := 1;
	if abs(bx) mod 2 = 0 then
		movby := -1
	else
		movby := 1;

	if (ax = bx) and (ay = by) then begin
		writeln(0);
		exit();
	end;

	ans := abs(ax-bx) + abs(ay-by);
	if (abs(bx-(ax+movx)) > abs(bx-ax)) and (abs(by-ay-movy) > abs(by-ay)) then
		ans := ans + 2;
	if (abs(ax-(bx+movbx)) < abs(bx-ax)) and (abs(ay-by-movby) < abs(by-ay)) then
		ans := ans + 2;

	if (ax = bx) then begin
		if abs(by-(ay+movy)) < abs(by-ay) then
			ans := abs(by-ay)
		else if (movx = movbx) then
				ans := abs(by-ay)+4
			 else
			 	ans := abs(by-ay)+2;
	end;
	if (ay = by) then begin
		if abs(bx-(ax+movx)) < abs(bx-ax) then
			ans := abs(bx-ax)
		else if (movy = movby) then
				ans := abs(bx-ax)+4
			 else
			 	ans := abs(bx-ax)+2;
	end;
	writeln(ans);
end.
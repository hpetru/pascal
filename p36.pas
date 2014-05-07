Program P36;

const MAX=100;
type
  ary_type = array[1..MAX] of integer;
  el_type = array[1..MAX, 1..MAX] of integer;

var inp : text;
    out: text;
    count : integer;
    map : ary_type;
    el : el_type;
    i : integer;
    j : integer;
    min : integer;
    results : el_type;
    f : boolean;
    p_f : boolean;
    p : integer;
    r : integer;

function ary_min(ary : ary_type; len: integer) : integer;
var min : integer;
    i : integer;
begin
  min := ary[1];
  for i := 2 to len do
    begin
      if min > ary[i] then min := ary[i];
    end;
end;

begin
  assign(inp, 'in/p36.in');
  reset(inp);

  assign(out, 'out/p36.out');
  rewrite(out);

  readln(inp, count);
  for i := 1 to count do
    begin
      readln(inp, map[i]);
    end;

  for i := 1 to count do
    begin
      for j := 1 to map[i] do
        begin
          read(inp, el[i][j]);
        end;
      readln(inp);
    end;

  min := ary_min(map, count);
  r := 1;
  p := 1;
  for i := 1 to min do 
    begin
      f := true;
      for j := count downto 2 do
        begin
          if f and (el[j][i] <> el[j-1][i]) then
            f := false;
        end;
      if f then
        begin
          results[r][p] := el[count][i];
          p := p + 1;
          p_f := true;
        end
      else if p_f then
        begin
          p_f := false;
          r := r + 1;
          p := 1;  
        end;
    end;
    
  close(out);
  close(inp);
end.

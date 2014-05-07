Program P20;

const N=100;

var 
    strs: array[1..N] of string;
    count: integer;
    temp : string;
    i, j : integer;
    inp : text;

begin
  assign(inp, 'in/p20.in');
  reset(inp);

  readln(inp, count);
  for i := 1 to count do
    begin
      readln(inp, strs[i]);
    end;
  
  for i := 1 to count do
    for j := 1 to count-1 do
      begin
        if (strs[j] + strs[j+1]) < (strs[j+1] + strs[j]) then
          begin
            temp := strs[j+1];
            strs[j+1] := strs[j];
            strs[j] := temp;
          end;
      end;
  for i := 1 to count do
    begin
      write(strs[i]);
    end;

  close(inp);
end.

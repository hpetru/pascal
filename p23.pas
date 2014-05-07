Program P23;

var inp : text;
    number : string;

function arabic_digit(dig : char): integer;
var res : word;
begin
  case dig of
    'I': res := 1;
    'V': res := 5;
    'X': res := 10;
    'L': res := 50;
    'C': res := 100;
    'D': res := 500;
    'M': res := 1000;
  end;
  arabic_digit := res;
end;

function roman_to_arabic(num : string) : integer;
var map : array[1..256] of word;
    i : integer;
    res : integer;
    n : integer;
begin

  n := length(num);
  for i := 1 to n do
    begin
      map[i] := arabic_digit(num[i]);
    end;

  res := map[n];
  for i := n-1 downto 1 do
    begin
      if map[i] >= map[i+1] then
        res := res + map[i]
      else
        res := res - map[i];
    end;

  roman_to_arabic := res;  
end;

begin
  assign(inp, 'in/p23.in');
  reset(inp);

  readln(inp, number);
  writeln(roman_to_arabic(number));
  close(inp);
end.

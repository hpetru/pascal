Program P25;

var max : integer;
    i, j: integer;
    a, b: boolean;
    xum : integer;
begin
  readln(max);
  a := true;
  b := true; 

  i := 0;
  j := 1;

  while a do
    begin
      i := i + 1;
      j := 1;
      b := true;
      while b do
        begin
          xum := i*i + j*j;
          if xum >= max then 
            begin
              b := false;
              if i >= j then a := false;
            end
          else
            begin
              writeln(i, '^2 + ', j, '^2 = ', i*i + j*j);
              j := j + 1;
            end
        end;
    end;
end.

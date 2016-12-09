program find_array_element;

const
  maks = 2;

type
  arr_int = array[0..maks] of integer;
var
  n: arr_int;
  currLen, len, i: integer;

function isEqual(n1, n2: integer): boolean;
begin
  isEqual := false;
  if n1 = n2 then
    isEqual := true;
end;

function searchAvailElement(num: integer): boolean;
var
  found: boolean;
  first, mid, last: integer;
begin
  // binary search, scan through half of array
  found := false;
  first := 0; last := currLen;
  while (not found) and (first <= last) do begin
    mid := (first + last) div 2;
    if num < n[mid] then
      last := mid - 1
    else begin
      if num > n[mid] then
        first := mid + 1
      else
        found := true;
    end;
  end;

  // if (found) then
  //   writeln('value of ', num, ' is already exists');
  searchAvailElement := found;
end;

procedure addElem;
begin
  for i := 0 to len do begin
    currLen := currLen + 1;
    write('Add element ', i + 1, ': '); readln(n[i]);

    while (searchAvailElement(n[i - 1])) and (i <> 0) do begin
      readln(n[i]);
    end;
  end;
end;

begin
  len := maks - 1;
  addElem;
  searchAvailElement(2);
end.
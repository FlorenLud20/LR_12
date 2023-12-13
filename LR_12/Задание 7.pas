program z_7;

var
  inputFileName, outputFileName: string;
  inputFile, outputFile: text;
  n, i, divisorCount, sum: int64;

function CountDivisors(num: int64): integer;
var
  j: int64;
begin
  Result := 0;
  for j := 1 to num do
    if num mod j = 0 then
      Inc(Result);
end;

begin
  // Открываем файлы
  inputFileName := 'z3.in.txt';
  outputFileName := 'z3.out.txt';
  assign(inputFile, inputFileName);
  assign(outputFile, outputFileName);
  reset(inputFile);
  rewrite(outputFile);

  // Читаем входные данные
  readln(inputFile, n);

  // Ищем сумму чисел с 5 делителями
  sum := 0;
  for i := 1 to n do
  begin
    divisorCount := CountDivisors(i);
    if divisorCount = 5 then
      sum := sum + i;
  end;

  // Выводим результат
  writeln(outputFile, sum);

  // Закрываем файлы
  close(inputFile);
  close(outputFile);
end.


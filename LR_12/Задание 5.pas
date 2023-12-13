program z_5;

var
  inputFile, outputFile: TextFile;
  num, min, max: Integer;

begin
  // Открываем файл для чтения
  AssignFile(inputFile, 'input.txt');
  Reset(inputFile);

  // Инициализируем переменные
  min := MaxInt; // Максимальное значение для типа Integer
  max := -MaxInt; // Минимальное значение для типа Integer

  // Считываем числа из файла и находим минимальное и максимальное
  while not EOF(inputFile) do
  begin
    ReadLn(inputFile, num);
    if num < min then
      min := num;
    if num > max then
      max := num;
  end;

  // Закрываем файл после чтения
  CloseFile(inputFile);

  // Открываем файл для записи
  AssignFile(outputFile, 'output.txt');
  Rewrite(outputFile);

  // Записываем минимальное и максимальное число в файл
  WriteLn(outputFile, 'Минимальное число: ', min);
  WriteLn(outputFile, 'Максимальное число: ', max);

  // Закрываем файл после записи
  CloseFile(outputFile);
end.



#1.	Получите справку о командлете справки
get-help Get-Help
#2.	Пункт 1, но детальную справку, затем только примеры
get-help Get-Help -Full
#3.	Получите справку о новых возможностях в PowerShell 4.0 (или выше)
get-help Get-Help -Functionality
#4.	Получите все командлеты установки значений
Get-Command -CommandType Cmdlet
Get-Command -CommandType All
#5.	Получить список команд работы с файлами
Get-Command *File*
#6.	Получить список команд работы с объектами
Get-Command *Object*
#7.	Получите список всех псевдонимов
Get-Alias
#8.	Создайте свой псевдоним для любого командлета
Set-Alias gc Get-Command
#9.	Просмотреть список методов и свойств объекта типа процесс
(Get-Process explorer).FileDescription
#10. Просмотреть список методов и свойств объекта типа строка
"Hello world" | Get-Member
#11.Получить список запущенных процессов, данные об определённом процессе
Get-Process
Get-Process explorer
#12.Получить список всех сервисов, данные об определённом сервисе
Get-Service
Get-Service Browser
#13. Получить список обновлений системы
Get-WindowsUpdateLog
#14.Узнайте, какой язык установлен для UI Windows
Get-WinUserLanguageList
#15. Получите текущее время и дату
Get-Date
#16. Сгенерируйте случайное число (любым способом)
Get-Random
#17.Выведите дату и время, когда был запущен процесс «explorer». Получите какой это день недели.
(Get-Process explorer).StartTime
(Get-Process explorer).StartTime.DayOfWeek
#18.Откройте любой документ в MS Word (не важно как) и закройте его с помощью PowerShell
$objWord = New-Object -Com Word.Application
$objWord.Visible = $false 
$objDocument = $objWord.Documents.Open("C:\temp\1.docx")
$objDocument.Close()
$objWord.Quit()
#19.Подсчитать значение выражения S= N – изменяемый параметр. Каждый шаг выводить в виде строки. (Пример: На шаге 2 сумма S равна 9)
$n = [int]5
$sum = [int]0
for($i = 1; $i -le $n; $i++)
{
    $sum=$sum+3*$i;
    "sum = ", $sum
}
#20.Напишите функцию для предыдущего задания. Запустите её на выполнение.
function Get-ParamSum
{
    Param ([int]$n)
    $sum = [int]0
    for($i = 1; $i -le $n; $i++)
    {
        $sum=$sum+3*$i;
        "sum = ", $sum
    }
    Write-Output $sum
}

Get-ParamSum $n=5
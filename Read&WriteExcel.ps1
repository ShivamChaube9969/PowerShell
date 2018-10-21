Set-ExecutionPolicy Unrestricted -Scope CurrentUser
$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $true
$SheetName = "Sheet1"
$Excel.Worksheets | Select-Object -ExpandProperty  name
$Workbook = $Excel.Workbooks.Open("D:\Users\schaube\Desktop\Waves\Test.xlsx")
$Sheet = $Workbook.Worksheets.Item($SheetName)
$Sheet.Cells.Item(6,4).Text #(row,col(A,B,C...))
$Sheet.Cells.Item(16,1).Activate() #(row,col(A,B,C...))
$Excel.ActiveCell.Value2 = "Tester"
stop = "да"
string = ""
puts("Шевелев А.М. ТАиФЯ Лабораторная работа №1 Вариант №9")
puts("Вместо символа перпендикуляра используйте символ +")

while stop == "да" do
    print("Введите цепочку: ")
    string = gets.chomp
    result = /^([+]?(010)+[+]?)$/=~string
    puts result     
    if result
        puts("Данная цепочка слов подходит данному языку")
    else
        puts("Данная цепочка слов не подходит данному языку")
    end
    print("Продолжить (Введите да)?")
    stop = gets.chomp
    print("")
end

puts("Работа программы завершена")
basket = Hash.new

def add(basket)
    nameProduct = ""
    pricePerProduct = 0
    countProduct = 0
    puts "Для выхода из цикла вставки, введите стоп"
    while nameProduct != "стоп"
        puts "Пожалуйста, введите название товара"
        nameProduct = gets.chomp
        if nameProduct == "стоп"
            break
        end
        puts "Пожалуйста, введите цену товара"
        begin
            pricePerProduct = Float(gets.chomp)            
        rescue
            puts "Вы ввели не числовое значение. Пожалуйста, введите цену товара"
            retry
        end
        puts "Пожалуйста, введите количество товара"
        begin
            countProduct = Integer(gets.chomp)            
        rescue 
            puts "Вы ввели не числовое значение. Пожалуйста, введите количество товара"            
            retry
        end
        subBasket = Hash.new
        subBasket.store("price", pricePerProduct)
        subBasket.store("count", countProduct)
        basket.store(nameProduct, subBasket)
    end
    return basket
end

def output(basket)
    sum = 0
    for key in basket.keys do
        puts "Название товара - #{key}" + ". Цена и количество товара: #{basket[key]}"
        amount = basket[key]["price"] * basket[key]["count"]
        puts "Итоговая цена товара:" +  "#{amount}"
        sum += amount
    end
    puts "Итоговая сумма равна: #{sum}"
end

basket = add(basket)
output(basket)
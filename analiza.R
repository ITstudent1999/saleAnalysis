#zaladowanie pliku summer-products-with-rating-and-performance_2020-08.csv
products <- read.csv("C:/Users/Julian/Desktop/summer-products-with-rating-and-performance_2020-08.csv")
#usuwanie naglowka title
products = subset(products, select = -c(title))
names(products)[names(products) == "title_orig"] <- "title"
#przeliczenie cen oraz cen detalicznych z EUR na PLN
products$pricePLN <- products$price*4.46
products$pricePLN <- round(products$pricePLN,digits=2)
products$retail_pricePLN <- products$retail_price*4.46
products$retail_pricePLN <- round(products$retail_pricePLN,digits=2)
#sprawdzenie, jakie produkty maja nizsza cena detaliczna od ceny
cenaDetalNizsza <- products$retail_price<products$price
products$title[cenaDetalNizsza]
cenaDetalNizsza

import UIKit

func fonk() {
    print ("fonksiyon")
}

fonk()

func sumFonk(x: Int, y: Int) -> Int {
    return x+y
}
//Fonksiyonun dönüş türü -> Int kısmında belirtilmiştir. Bu, fonksiyonun bir tamsayı değeri döndüreceği anlamına gelir.

let fonk_degerleri = sumFonk(x: 5, y: 30)
print (fonk_degerleri)

func karsilastirma(a: Int, b: Int) ->String {
    if a>b {
        return "Büyük"
    }
    else if a < b {
        return "Küçük"
    }
    else {
        return "eşit"
    }
}
print(karsilastirma(a: 5, b: 8))

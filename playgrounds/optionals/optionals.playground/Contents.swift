import UIKit

// "Name" adında bir String opsiyonel tanımla
var Name: String?

/*
 Swift programlama dilinde opsiyonel (optional), değeri olmayabilen bir türü ifade eder. 
 Yani, bir değişken veya sabitin değeri null (boş) olabilir. Bu durumu belirtmek için "?" işareti kullanılır.
 */

// Opsiyonel bir değeri büyük harfe çevirme denemesi
// Ancak, "Name" şu anda null (boş) olduğu için bu işlem hiçbir şey yapmaz.
Name?.uppercased()

//optionals : ? vs !

var Age = "5"

/* "Integer" adında bir değişken tanımla ve "Age" değişkenini Int'e çevirerek, olası null durumuna karşı
?? operatörü ile varsayılan değeri (0) ata, ardından 5 ile çarp */
var Integer = (Int(Age) ?? 0) * 5

// "Number" adında bir sabit tanımla ve "Age" değişkenini Int'e çevirerek ata
if let Number = Int(Age) {
    // Eğer "Number" başarılı bir şekilde çevrildiyse, değeri 5 ile çarp ve ekrana yazdır
    print(Number * 5)
} else {
    // Eğer "Number" çevrilemiyorsa, hatalı giriş olduğunu belirten bir mesaj yazdır
    print("wrong input")
}

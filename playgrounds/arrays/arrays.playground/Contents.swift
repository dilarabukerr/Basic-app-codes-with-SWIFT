import UIKit

var musics = ["Kill Bill", "Happier than ever","agora hills",5,true] as [Any]
//as [Any] ifadesi, dizinin içinde farklı veri tiplerine sahip öğeler olduğunu belirtmek için kullanılır.

musics[0]
musics[1]
musics[2]
musics[3]
musics[4]

var myStringArray = ["Test6","Test2","Test1","Test4"]

myStringArray[0].uppercased() // Dizinin ilk elemanını seçer ("Test6") ve bu elemanın büyük harflerle yazılmış halini döndürür.

myStringArray.count // Dizinin eleman sayısını (4) döndürür.

myStringArray[myStringArray.count - 2] //Dizinin sondan ikinci elemanını seçer ("Test1"), çünkü myStringArray.count - 1 dizinin son elemanını temsil eder.

myStringArray.last //Dizinin son elemanını döndürür.

myStringArray.sort() //Diziyi sıralar. Bu durumda, dizideki dizelerin alfabetik sırasına göre sıralanır ve myStringArray dizisi güncellenir.

var myNumberArray = [1,2,3,4,5,6,7,1,2,3]
myNumberArray.append(8) //dizinin sonuna yeni bir eleman ekler. Yeni eklenen eleman, 8'dir
myNumberArray.last //dizinin son elemanını döndürür.

myNumberArray[0] = 15 //dizinin ilk elemanını günceller
myNumberArray[0]

// Set : benzersiz ve sırasız elemanlardan oluşan bir koleksiyon türüdür. Set'ler, bir elemanın sadece bir kez bulunabileceği bir yapı sunar ve elemanlar arasında belirli bir sıra yoktur.
var mySet: Set = [1, 2, 3, 4, 5, 1, 2]
var myStringSet: Set = ["a", "b", "c", "a"]

// Bir diziden küme oluşturma ve her ikisini de yazdırma
var myInternetArray = [1, 2, 3, 1, 2, 5, 6, 2, 1]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)  // Yazdırır: [1, 2, 3, 1, 2, 5, 6, 2, 1]
print(myInternetSet)    // Yazdırır: [1, 2, 3, 5, 6]

// Küme birleşimini gerçekleştirme ve sonucu yazdırma
var mySet1: Set = [1, 2, 3]
var mySet2: Set = [3, 4, 5]
var mySet3 = mySet1.union(mySet2)
print(mySet3)

// Sözlükler
// Anahtar-değer eşleştirmeleri
var myFavoriteDirectors = ["Pulp Fiction": "Tarantino", "Lock, Stock": "Guy Ritchie", "The Dark Knight": "Christopher Nolan"]

// Anahtarları kullanarak değerlere erişme ve bir değeri güncelleme
myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["The Dark Knight"]
myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"

// Yeni bir anahtar-değer çifti ekleme ve güncellenmiş sözlüğü yazdırma
myFavoriteDirectors["Seven Samurai"] = "Akira Kurosawa"
print(myFavoriteDirectors)

/*
 Dizi (Array): Elemanlar belirli bir sıra içinde saklanır ve her eleman bir indis (index) 
 kullanılarak erişilebilir. İndeksler genellikle sıfırdan başlar.
 Sözlük (Dictionary): Elemanlar bir anahtar (key) ile ilişkilidir ve her bir anahtar, 
 sözlük içinde benzersiz olmalıdır. Elemanlara erişmek için anahtarlar kullanılır.
 */

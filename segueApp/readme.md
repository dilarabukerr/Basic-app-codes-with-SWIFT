## SEGUE
Segue, iOS uygulamalarında bir görünüm denetleyiciden diğerine geçiş yapmayı sağlayan bir yol veya işlemdir. Temel olarak, farklı ekranlar arasında geçiş yapmak için kullanılır ve kullanıcı etkileşimlerine yanıt olarak bu geçişleri gerçekleştirir.
Segue'ler genellikle Storyboard üzerinde tanımlanır ve iki görünüm denetleyici arasındaki ilişkiyi belirtir. Her segue, kaynak ve hedef görünüm denetleyicileri arasındaki ilişkiyi tanımlar ve gerekirse veri iletimi gibi ek özellikler sağlar.
Segue'ler farklı türlerde olabilir:


-Show Segue: Bir ekranın üzerine diğerini ekleyerek geçiş yapar. Genellikle "push" işlemi olarak adlandırılır ve genellikle bir Navigation Controller ile kullanılır.
-Modal Segue: Bir ekranı tam ekran olarak açar. Diğer ekran üzerinde kalır ve kullanıcı ekranın üst kısmındaki "kapat" butonuna tıklayarak geri dönebilir.
-Custom Segue: Özel animasyonlar veya geçişler sağlamak için özel olarak oluşturulan segue türleri.

Segue'ler, kullanıcı etkileşimlerine yanıt olarak veya programatik olarak da tetiklenebilir. Örneğin, bir butona tıklandığında veya belirli bir şart gerçekleştiğinde bir segue çağrılabilir.
Bu şekilde, segue'ler iOS uygulamalarında farklı ekranlar arasında geçiş yapmayı ve kullanıcı deneyimini yönetmeyi kolaylaştırır.

```
performSegue(withIdentifier: "toSecondVC", sender: nil)
```
kodu ile hangi buton bloğu içinde yazdıysak butonuna tıklandığında ikinci ekrana geçer (manuel yaptık).

bunu direkt viewController ekranında butonu diğer ekrana bağlayıp navigatorController (back butonu için) yapabilirdik. Ama Koşullu durumlarda manuel ayarlamak daha doğru olur.
Bu sefer diğer ekrana butonu değil VievControllerı (sarı kısım) bağladık.


`override` anahtar kelimesi, bir alt sınıfın üst sınıfın metodunu geçersiz kılarak (override ederek) kendi uygulamasını sağlamak için kullanılır.

Bu durumda, `prepare(for segue: UIStoryboardSegue, sender: Any?)` fonksiyonu, UIViewController sınıfının bir yöntemidir ve ViewController sınıfı bu yöntemi yeniden uygular veya "override" eder. Bu yöntem, bir segue gerçekleşmeden önce hazırlık işlemlerini yapmak için çağrılır.

override anahtar kelimesi, derleyiciye bu metodu bir üst sınıftan yeniden uyguladığınızı belirtir. Eğer bu anahtar kelime kullanılmazsa ve üst sınıfta bu metot bulunuyorsa, derleyici bir hata verecektir. Dolayısıyla, override anahtar kelimesi, belirli bir metodu geçersiz kılarak, alt sınıfta farklı bir uygulama sağlanmasını sağlar.


## Life Cycle

```
//app ilk açıldığında gçrünen işlemler
override func viewDidLoad() {
}
```

```
override func viewDidDisappear(_ animated: Bool) {
}
```

```
override func viewWillDisappear(_ animated: Bool) {
}
```

```
override func viewWillAppear(_ animated: Bool) {
}
```

```
override func viewDidAppear(_ animated: Bool) {
}
```

iOS'ta bir görünüm denetleyicisinin yaşam döngüsü, o görünüm denetleyicisinin oluşturulduğu andan başlayarak, kullanıcı arayüzünün oluşturulması, görünümün ekranda görünür hale gelmesi, kullanıcı etkileşimleri ve görünümün ekrandan kaldırılması gibi aşamalardan geçer.


1. viewDidLoad(): Görünüm denetleyicisinin görünüm ağacına eklenmesinden hemen sonra çağrılır. Görünüm denetleyicisinin içeriği yüklendikten ve görünümün öğeleri oluşturulduktan sonra gerçekleştirilecek ek hazırlıklar için kullanılır. Bu metod yalnızca bir kez çağrılır.

2. viewWillAppear(_:): Görünüm denetleyicisinin görünümü ekranda görünmeden önce çağrılır. Bu metod, görünümün ekranda görünmeden önce yapılması gereken son hazırlıkları yapmak için kullanılır. Örneğin, kullanıcıya görünen içeriği güncellemek veya animasyon efektleri uygulamak için kullanılabilir.

3. viewDidAppear(_:): Görünüm denetleyicisinin görünümü ekranda göründükten sonra çağrılır. Bu metod, görünüm ekrana geldikten sonra yapılan işlemler için kullanılır. Örneğin, kullanıcıya bir hoş geldiniz mesajı göstermek veya verileri dinamik olarak yüklemek için kullanılabilir.

4. viewWillDisappear(_:): Görünüm denetleyicisinin görünümü ekrandan kaybolmaya başlamadan önce çağrılır. Bu metod, görünümün ekrandan kaldırılmasından önce yapılması gereken son hazırlıkları yapmak için kullanılır.

5. viewDidDisappear(_:): Görünüm denetleyicisinin görünümü ekrandan tamamen kaybolduktan sonra çağrılır. Bu metod, görünüm ekrandan kaldırıldıktan sonra yapılan işlemler için kullanılır.



## SINIF YAPISI
NDP —> programları nesneler adı verilen yapısal birimler üzerinde organize etmeyi ve bu nesneler arasındaki etkileşimi modüller halinde düzenlemeyi sağlar. NDP’nin temel prensipleri:
- ###  Sınıflar ve Nesneler: 
OOP'de, programdaki gerçek veya soyut varlıkları temsil etmek için sınıflar ve nesneler kullanılır. Sınıf, bir nesnenin yapısal şablonunu tanımlar ve nesnelerin özelliklerini (değişkenler) ve davranışlarını (metodlar) içerir. Nesne, bir sınıftan oluşturulan bir örnektir.

- ###  Kalıtım (Inheritance):
Kalıtım, bir sınıfın başka bir sınıftan özelliklerini ve davranışlarını miras alabilmesini sağlar. Bu, kodun tekrar kullanılabilirliğini artırır ve kodu daha kolay yönetilebilir hale getirir.

- ###  Kapsülleme (Encapsulation): 
Kapsülleme, bir sınıfın veri alanlarını (değişkenlerini) ve metodlarını bir araya getirerek, dışarıdan erişime kapatma işlemidir. Bu, sınıfın iç işleyişini gizler ve sadece belirli arayüzlerle etkileşime izin verir, böylece sınıfın daha güvenli ve daha az bağımlı olmasını sağlar.

- ###  Polimorfizm (Polymorphism): 
Polimorfizm, aynı adı taşıyan ancak farklı işlevselliklere sahip olan nesnelerin bir arada kullanılabilmesini sağlar. Bu, farklı nesnelerin aynı metodu farklı şekillerde uygulamasına olanak tanır ve programların daha esnek ve genişletilebilir olmasını sağlar.

Sınıf, NDP’nin temel yapı taşıdır. Bir sınıf, nesnelerin bir şablonunu tanımlar; bu şablona göre, belirli veri alanlarını ve bunlar üzerinde çalışan işlevleri içerebilir. Sınıflar, gerçek dünyadaki varlıkları veya soyut kavramları temsil etmek için kullanılabilirler. Örneğin, bir "Araba" sınıfı, bir arabanın özelliklerini (renk, hız, marka vb.) ve davranışlarını (sür, dur, hızlan vb.) içerebilir. Bu sınıftan oluşturulan bir nesne, bir arabayı temsil eder ve belirtilen özelliklere ve davranışlara sahip olabilir.


### SELF
"self", bir sınıfın metotları içinde o sınıfın örneği olan nesneye atıfta bulunmak için kullanılır. "self" kelimesi, o anki örneği temsil eden bir referansdır ve metodun içinde kullanıldığında, o metodun çalıştığı nesneyi ifade eder.

### INIT
Swift dilinde "init", "initialize" kelimesinin kısaltmasıdır ve bir sınıfın örneğinin oluşturulması sırasında çağrılan özel bir metottur. Bu metot, sınıfın özelliklerini başlatmak ve diğer başlangıç ayarlarını yapmak için kullanılır.
Bir sınıfın "init" metodu, sınıf adı ile aynı adı taşıyan bir fonksiyondur. Bu metot, sınıfın bir örneği oluşturulduğunda otomatik olarak çağrılır ve örneğin başlangıç durumunu ayarlamak için kullanılır. "init" metodu, sınıfın özelliklerini başlatmak için kullanılan birincil yapıdır ve bir sınıfın yapıcı (constructor) metodu olarak düşünülebilir.

### ENUM
Enum, "enumeration" kelimesinin kısaltmasıdır ve bir programda belirli değer kümesini temsil etmek için kullanılan bir veri türüdür. Enum'lar, programlama dillerinde sıklıkla kullanılan bir yapıdır ve belirli bir değer setinin birbirleriyle ilişkilendirilmesini sağlar.

Enum'lar genellikle sabitlerin bir gruplaması olarak düşünülebilirler. Bir enum, belirli bir türdeki sabit değerleri içerebilir. Bu değerler genellikle birbirleriyle bağlantılıdır ve belirli bir bağlamda anlamlı bir bütün oluştururlar.

Enum'lar aynı zamanda ilişkili değerler (associated values) ve örnek metodları (instance methods) gibi daha gelişmiş özelliklere de sahip olabilirler. Bu özellikler, enum'ları daha esnek ve kullanışlı hale getirir.

Swift gibi modern bir dilde, enum'lar genellikle belirli türlerin değişebilir durumlarını temsil etmek için kullanılır. Örneğin, bir kullanıcı durumunu (giriş yapılmış, oturum açık, oturum kapalı) temsil etmek için bir enum kullanılabilir. Bu, programın belirli durumlarını daha açık ve anlaşılır bir şekilde ifade etmeye yardımcı olur.


### Access Levels
Erişim seviyeleri (Access Levels), bir programın farklı bileşenlerine erişim izni veren ve kapsamı belirleyen bir özelliktir. Programlama dilleri, genellikle bu erişim seviyelerini kullanarak kodun düzenlenmesini ve geliştirilmesini sağlarlar.
Erişim seviyeleri, genellikle aşağıdaki gibi sınıflar, yapılar, özellikler ve metotlar için belirlenir:

- Public (Herkese Açık): Public erişim seviyesi, bu öğeye her yerden erişim izni verir. Başka bir dosya veya modüldeki kod da dahil olmak üzere, her yerden bu öğeye erişilebilir.

- Internal (İç): Internal erişim seviyesi, bu öğenin tanımlandığı modül veya dosyadaki herhangi bir kodun bu öğeye erişim izni olduğunu belirtir. Ancak, dışarıdan erişim izni yoktur. Yani farklı bir modül veya dosyadan erişim mümkün değildir.

- Fileprivate (Dosya Özel): Fileprivate erişim seviyesi, bu öğenin tanımlandığı dosyadaki kodun erişim izni olduğunu belirtir. Diğer dosyalardan veya modüllerden erişim mümkün değildir.

-Private (Özel): Private erişim seviyesi, bu öğenin tanımlandığı kapsam içinde erişim izni olduğunu belirtir. Yani bu öğe sadece tanımlandığı kapsam içinde kullanılabilir ve dışarıdan erişilemez.

Erişim seviyeleri, kodun daha modüler ve güvenli olmasını sağlar. Örneğin, bir sınıfın belirli özelliklerine sadece belirli metodların erişmesine izin vermek, kodun daha sıkı bir şekilde kontrol edilmesini sağlayabilir. Ayrıca, public arayüzler oluşturarak, başka kod parçalarının belirli bileşenlere güvenli bir şekilde erişmesini sağlamak mümkündür. Bu, kodun daha iyi bakımını, yeniden kullanılabilirliğini ve genel olarak geliştirilmesini kolaylaştırır.



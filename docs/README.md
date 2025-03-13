# BruteForceMaster - Detaylı Dokümantasyon

## Proje Hakkında

Bu proje, **Metasploit Framework** ile uyumlu bir **Brute Force modülü** sağlar. Modül, aşağıdaki servislerdeki güvenlik açıklarını test etmek için kullanılabilir:

- **SSH**: Güvenli uzak bağlantılar için kullanılan SSH protokolü.
- **FTP**: Dosya transferi için kullanılan FTP protokolü.
- **HTTP/HTTPS**: Web sunucuları üzerinde Basic Authentication üzerinden brute force denemeleri.
- **RDP**: Remote Desktop Protocol için brute force saldırısı (henüz implementasyon tamamlanmadı).
- **POP3/IMAP**: E-posta protokollerinde kullanıcı doğrulaması.
- **SMTP**: E-posta gönderme protokolünde kullanıcı doğrulaması.
- **Telnet**: Telnet üzerinden brute force giriş denemeleri.
- **VNC**: Sanal masaüstü protokolü üzerinden brute force saldırısı.
- **MySQL**: Veritabanı protokolünde kullanıcı adı ve şifre denemeleri.

## Kullanım Adımları

### Gereksinimler
1. **Metasploit Framework**: Modül, Metasploit üzerinden çalışacak şekilde yapılandırılmıştır.
2. **Ruby 2.0+**: Projenin çalışabilmesi için Ruby'nin yüklü olması gerekmektedir.
3. **Git**: Projeyi GitHub üzerinden klonlamak için gereklidir.

### Kurulum
Projenin Metasploit Framework içerisinde kullanılabilir hale gelmesi için aşağıdaki adımları izleyebilirsiniz:

1. Projeyi GitHub'dan klonlayın:

   ```bash
   git clone https://github.com/yourusername/bruteforce-scripts.git
   cd bruteforce-scripts

2. Metasploit Framework'ü açın:
msfconsole

3. Projeyi Metasploit içindeki bir modül olarak kullanın:
use auxiliary/brute_force_all_services_improved

4. Kullanıcı adı ve şifre kombinasyonlarını içeren bir dosya ekleyin:
set USERPASS_FILE /path/to/your/userpass.txt

5. Test edilecek hedefin IP adresini belirtin:
set RHOSTS <target_ip>

6. Paralel işleme için thread sayısını ayarlayın:
set THREADS 10

7. Brute force saldırısını başlatın:
run

## SSL/TLS Desteği
Modül, SSL/TLS destekli servislerle çalışabilir. Bu özellik, güvenli bağlantılar kullanılarak brute force saldırıları yapılmasını sağlar. SSL/TLS desteğini etkinleştirmek için şu komutu kullanabilirsiniz:
set SSL true
Bu, HTTP, POP3, IMAP, SMTP gibi SSL/TLS üzerinden çalışan servislerde brute force saldırısını kullanmanıza olanak tanır.

## Teknik Açıklama
Modül, aşağıdaki servislerde brute force denemeleri yapmak için bağlantılar kurar ve doğru şifreleri bulmaya çalışır. Bağlantıların her biri özel hata yönetimi ve geri bildirimle denetlenir.

**SSH**: Güvenli bağlantılar üzerinden kullanıcı adı ve şifre test edilir.
**FTP**: FTP sunucularına giriş denemeleri yapılır. Başarılı girişlerde 230 yanıt kodu kontrol edilir.
**HTTP/HTTPS**: Web sunucularında Basic Authentication denemesi yapılır.
**POP3/IMAP**: E-posta hesaplarına giriş denemeleri yapılır. Başarılı bağlantı için +OK veya OK yanıtları kontrol edilir.
**SMTP**: E-posta göndermek için kullanılan SMTP protokolüne giriş denemeleri yapılır. Başarı durumu 235 yanıt kodu ile kontrol edilir.
**Telnet**: Telnet servisine giriş denemesi yapılır.
**VNC**: VNC server'a giriş denemeleri yapılır.

### Paralel İşleme (Multithreading): Modül, çok sayıda bağlantı açmak ve aynı anda çok sayıda brute force denemesi yapmak için paralel işleme kullanır. Bu, işlemi hızlandırır ve aynı anda birden fazla servis üzerinde çalışmanıza olanak tanır.

### Hata Yönetimi: Modül, her servis için hata yönetimi yapar. Bağlantı hataları, zaman aşımı ve servis yanıtları kontrol edilerek doğru kullanıcı adı ve şifreler tespit edilir.

## Geliştirme
Eğer projeye katkı sağlamak isterseniz, aşağıdaki geliştirme süreci izlenebilir:

**Fork edin**: GitHub'dan projeyi fork edin.
**Yeni özellikler ekleyin**: Özellik branch'leri oluşturun (git checkout -b feature/branch_name).
**Test yapın**: Yapılan değişikliklerin doğruluğunu test edin.
**Pull request oluşturun**: Değişikliklerinizi ana projeye dahil etmek için pull request oluşturun.

### Lisans
Bu proje MIT Lisansı altında lisanslanmıştır. Daha fazla bilgi için LICENSE dosyasına bakabilirsiniz.


---

### Açıklamalar:
- **Proje Hakkında**: Projenin ne yaptığı, hangi servisleri desteklediği ve amacının ne olduğu hakkında detaylı bilgi.
- **Kullanım Adımları**: Projeyi kurmak ve kullanmak için gerekli adımlar.
- **SSL/TLS Desteği**: Eğer modülünüz SSL/TLS üzerinden çalışan servislerde de çalışabiliyorsa, bu özelliği detaylı şekilde açıklayabilirsiniz.
- **Teknik Açıklamalar**: Modülün teknik olarak nasıl çalıştığı, hangi servislerde ne tür brute force denemeleri yaptığı, paralel işleme ve hata yönetimi gibi özellikler.
- **Geliştirme**: Katkı sağlamak isteyenler için adımlar ve açıklamalar.

---

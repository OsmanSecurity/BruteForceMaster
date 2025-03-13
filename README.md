# BruteForceMaster

Bu proje, çeşitli servisler üzerinde brute force saldırıları yapabilen bir **Metasploit** modülüdür. Aşağıdaki servisleri destekler:

- SSH
- FTP
- HTTP/HTTPS (Basic Authentication)
- RDP
- POP3
- IMAP
- SMTP
- Telnet
- VNC
- MySQL

## Özellikler
- Çeşitli servislerdeki zayıf parola güvenliğini test etmek.
- Paralel işleme (multithreading) desteği ile hızlı brute force denemeleri.
- SSL/TLS üzerinden güvenli bağlantılarla brute force denemeleri.
- Hedef servis tespiti ve doğrulama.
- Gelişmiş hata yönetimi ve raporlama.

## Gereksinimler
- **Metasploit Framework**: Modül, Metasploit üzerinden çalışacak şekilde yapılandırılmıştır.
- **Ruby 2.0+**: Projenin çalışabilmesi için Ruby'nin yüklü olması gerekmektedir.
- **Git**: Projeyi GitHub üzerinden klonlamak için gereklidir.

## Kurulum
Bu projeyi GitHub'dan klonlayarak kurabilirsiniz:

git clone https://github.com/yourusername/BruteForceMaster.git
cd BruteForceMaster


Metasploit konsolunda şu komutları kullanarak modülü çalıştırabilirsiniz:
msfconsole
use auxiliary/brute_force_all_services_improved
set USERPASS_FILE /path/to/userpass.txt
set RHOSTS <target_ip>
set THREADS 10
run

## SSL/TLS Desteği
Bu modül, SSL/TLS destekleyen servislerle çalışabilir. Bu özellik, güvenli bağlantılar kullanılarak brute force saldırıları yapılmasını sağlar. SSL/TLS desteğini etkinleştirmek için şu komutu kullanabilirsiniz:
set SSL true

Bu, HTTP, POP3, IMAP, SMTP gibi SSL/TLS üzerinden çalışan servislerde brute force saldırısını kullanmanıza olanak tanır.

## Katkıda Bulunma
Eğer projeye katkıda bulunmak isterseniz, lütfen şu adımları izleyin:

Fork edin.
Bir feature branch oluşturun (git checkout -b feature/branch_name).
Değişikliklerinizi yapın ve commit edin (git commit -am 'Add new feature').
GitHub'da pull request oluşturun.

## Lisans
Bu proje MIT Lisansı altında lisanslanmıştır - daha fazla bilgi için LICENSE dosyasına bakabilirsiniz.


---

### Açıklamalar:
- **Proje Başlığı ve Açıklaması**: Projenizin genel amacını ve hangi servisleri hedef aldığını tanımlar.
- **Özellikler**: Projenizin sunduğu önemli özellikleri listeler.
- **Gereksinimler**: Projeyi çalıştırabilmek için gerekli olan yazılımları belirtir.
- **Kurulum**: Projeyi nasıl indirip çalıştıracağınızı anlatan adım adım talimatlar içerir.
- **SSL/TLS Desteği**: SSL/TLS üzerinden çalışan servislerde brute force işlemi yapılacağına dair açıklamalar.
- **Katkı Sağlama**: Başkalarının projeye nasıl katkı yapabileceği hakkında bilgi verir.
- **Lisans**: Projenizin lisans bilgisini sağlar.

---

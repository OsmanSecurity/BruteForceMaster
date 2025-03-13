require 'test/unit'
require_relative '../src/brute_force_all_services_improved'

class TestBruteForceModule < Test::Unit::TestCase
  def test_ssh_connection
    # SSH brute force mantığının testi
    # 'test_ssh' fonksiyonunun erişilebilir olduğundan emin olun ya da uygun şekilde taklit edin
    result = test_ssh('user', 'password')  # Bu, doğru/yanlış ya da beklenen değeri döndürmeli
    assert_equal(true, result)  # Sonucun doğru olması gerektiğini kontrol edin (başarılı SSH girişi için)
  end

  def test_ftp_connection
    # FTP brute force mantığının testi
    result = test_ftp('user', 'password')  # Bu, doğru/yanlış ya da beklenen değeri döndürmeli
    assert_equal(true, result)  # Sonucun doğru olması gerektiğini kontrol edin (başarılı FTP girişi için)
  end

  def test_http_connection
    # HTTP brute force mantığının testi (Basic Authentication)
    result = test_http('user', 'password')  # Bu, doğru/yanlış ya da beklenen değeri döndürmeli
    assert_equal(true, result)  # Sonucun doğru olması gerektiğini kontrol edin (başarılı HTTP girişi için)
  end

  # Her servisi test etmek için daha fazla test durumu ekleyebilirsiniz (FTP, HTTP, vb.)

end

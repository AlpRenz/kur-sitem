# Kur platformu

Bu proje Vercel üzerinde statik olarak çalışır ve Supabase ile gerçek kullanıcı hesabı/site verisi tutar.

1. Supabase'de bir proje oluşturun; Authentication > Providers bölümünde Email'i etkinleştirin.
2. `supabase-schema.sql` dosyasını SQL Editor'de çalıştırın.
3. Project Settings > API'den Project URL ve anon public key değerlerini `config.js` içindeki yer tutucularla değiştirin.
4. Bu klasörü GitHub'a yükleyip Vercel'de **New Project** ile içe aktarın. Framework ayarı gerekmez.

Üyelik sırasında e-posta onayı açıksa, kullanıcıdan gelen onay e-postasını açmasını isteyin. RLS politikaları sayesinde kullanıcılar sadece kendi sitelerini görebilir ve oluşturabilir.

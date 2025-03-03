[![English](https://img.shields.io/badge/README-English-494cad.svg)](https://github.com/we0-dev/we0/blob/main/README.md) [![中文](https://img.shields.io/badge/README-中文-494cad.svg)](https://github.com/we0-dev/we0/blob/main/docs/README.zh.md) [![Indonesia](https://img.shields.io/badge/README-Indonesia-494cad.svg)](https://github.com/we0-dev/we0/blob/main/docs/README.id.md)

# we0

## Apa itu We0

![alt text](../docs/img/image-1.png)

## Apa yang Membuat We0 Berbeda?

Saat ini, Cursor, v0, dan Bolt.new memiliki kinerja yang mengesankan dalam pembuatan proyek web. Proyek We0 memiliki fitur-fitur berikut:

Mendukung debugging berbasis browser: Lingkungan WebContainer bawaan memungkinkan Anda menjalankan terminal di browser, menginstal dan menjalankan npm dan pustaka alat.

Pemulihan desain berkualitas tinggi: Menggunakan teknologi D2C terkini untuk mencapai pemulihan desain 90%.

Mendukung impor proyek lama: Berbeda dengan Bolt.new yang berjalan di lingkungan browser, We0 dapat langsung membuka proyek lama yang ada untuk pengeditan dan debugging sekunder.

Terintegrasi dengan WeChat Mini Program Developer Tools: Memungkinkan pratinjau dan debugging langsung dengan mengklik untuk meluncurkan WeChat Developer Tools.

Dukungan multi-platform: Mendukung sistem operasi Windows dan Mac untuk unduhan klien, serta skenario web container, memungkinkan Anda memilih terminal yang sesuai berdasarkan skenario penggunaan.

| Fitur                                      | we0 | v0  | bolt.new |
| ----------------------------------------- | --- | --- | -------- |
| Pembuatan dan pratinjau kode              | ✅  | ✅  | ✅       |
| Konversi desain-ke-kode                   | ✅  | ✅  | ❌       |
| Sumber terbuka                            | ✅  | ❌  | ✅       |
| Mendukung pratinjau WeChat Mini Program   | ✅  | ❌  | ❌       |
| Mendukung proyek yang sudah ada           | ✅  | ❌  | ❌       |
| Mendukung Deepseek                        | ✅  | ❌  | ❌       |

## Memulai

Proyek ini menggunakan pnpm sebagai alat manajemen paket. Pastikan versi Node.js Anda adalah 18.20.

- Instal pnpm

```bash
npm install pnpm -g
```

- Instal dependensi

```bash
# Client
cd apps/we-dev-client
pnpm install

# Server
cd apps/we-dev-next
pnpm install
```

- Konfigurasi variabel lingkungan

Ubah nama .env.example menjadi .env dan isi konten yang sesuai.

Client apps/we-dev-client/.env
```shell
# SERVER_ADDRESS [WAJIB*] (contoh: http://localhost:3000)
APP_BASE_URL=

# JWT_SECRET [Opsional]
JWT_SECRET=
```

Server apps/we-dev-next/.env
```shell
# URL Model Pihak Ketiga [WAJIB*] (contoh: https://api.openai.com/v1)
THIRD_API_URL=

# API-Key Model Pihak Ketiga [WAJIB*] (contoh:sk-xxxx)
THIRD_API_KEY=

# JWT_SECRET [Opsional]
JWT_SECRET=
```

## Membangun Web Editor

```bash
chmod +x scripts/wedev-build.sh

./scripts/wedev-build.sh
```

**Metode Quick Start**
Mendukung quick start dari direktori root.

```bash
"dev:next": "cd apps/we-dev-next && pnpm install && pnpm dev",
"dev:client": "cd apps/we-dev-client  && pnpm dev",
```

## Cara Menginstal dan Menggunakan

Cara Menggunakan Versi Klien?

- Versi Mac
  1. Kunjungi https://we0.ai/.
  2. Pilih Download for Mac untuk mengunduh penginstal.
  3. Anda mungkin menghadapi masalah:
  
     ![alt text](../docs/img/image-2.png)
     
- Buka Launchpad, pilih Terminal, dan masukkan:
  ```bash
  sudo spctl  --master-disable
  ```
  kemudian tekan Enter, masukkan kata sandi Anda (input kata sandi tidak terlihat), dan tekan Enter lagi.
  
  Selanjutnya, buka System Preferences, pilih Security & Privacy, lalu General, dan Anda akan melihat Anywhere terpilih.
  Kemudian buka file untuk menginstal.
  ![alt text](../docs/img/image-3.png)


- Jika masih muncul "Damaged and cannot be opened. You should move it to the Trash" 

  jangan khawatir. Gunakan metode berikut:

  Salin dan tempel perintah di terminal (perhatikan spasi di akhir):

  ```bash
  sudo xattr -r -d com.apple.quarantine
  ```

  **Jangan tekan Enter dulu! Jangan tekan Enter dulu! Jangan tekan Enter dulu!**

  Kemudian buka Finder, buka direktori Applications, temukan ikon software, dan seret ke jendela terminal. Anda akan mendapatkan kombinasi seperti ini:

  ```bash
  sudo xattr -r -d com.apple.quarantine /Applications/WebStrom.app 
  ```

  Kembali ke jendela terminal, tekan Enter, dan masukkan kata sandi sistem Anda untuk melanjutkan.

## Pertanyaan
- Jika electron melaporkan error saat menjalankan kedua kalinya, silakan hapus workspace klien
- Jika tidak ada pratinjau saat memulai electron, jalankan pnpm run electron:dev

## Hubungi Kami

Kirim email ke <a href="mailto:enzuo@wegc.cn">enzuo@wegc.cn</a>

## Grup Chat WeChat
<img src="../docs/img/code.png" alt="QR Code" width="200"/>

Jika Anda tidak dapat bergabung dengan grup WeChat, Anda dapat menambahkan

<img src="../docs/img/self.png" alt="Personal QR" width="200"/>

## Sejarah Bintang

<a href="https://star-history.com/?utm_source=bestxtools.com#we0-dev/we0&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=we0-dev/we0&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=we0-dev/we0&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=we0-dev/we0&type=Date" />
 </picture>
</a>

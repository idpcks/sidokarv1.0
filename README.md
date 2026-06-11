# SIDOKAR v1.0

## 📦 Prerequisites

Download atau clone file berikut dari repository ini:

* `Dockerfile`
* `docker-compose.yml`

Kemudian letakkan file tersebut pada root directory project SIDOKAR Anda.

Struktur direktori yang diharapkan:

```text
sidokar/
├── app/
├── public/
├── vendor/
├── Dockerfile
├── docker-compose.yml
└── ...
```

## 🚀 Menjalankan Project dengan Docker

Jalankan perintah berikut secara berurutan:

```bash
docker compose down
docker compose build --no-cache
docker compose up -d
```

Untuk memastikan seluruh container berjalan dengan baik:

```bash
docker ps
```

## 🌐 Akses Aplikasi

Setelah container berhasil dijalankan, buka aplikasi melalui browser:

```text
http://localhost:<PORT_WEB>
```

Contoh:

```text
http://localhost:8800
```

Sesuaikan port dengan konfigurasi yang terdapat pada file `docker-compose.yml`.

## 🗄️ Koneksi Database

Database dapat diakses langsung dari aplikasi atau menggunakan database client seperti Navicat, DBeaver, HeidiSQL, dan sejenisnya.

### Contoh Konfigurasi Navicat

| Parameter         | Value          |
| ----------------- | -------------- |
| Host / IP Address | 127.0.0.1      |
| Port              | 3307           |
| Username          | yourusernamedb |
| Password          | yourpwdb       |

> Pastikan nilai host, port, username, dan password sesuai dengan konfigurasi yang terdapat pada file `.env` atau `docker-compose.yml`.

## 🛠️ Useful Commands

### Melihat status container

```bash
docker ps
```

### Melihat log container

```bash
docker compose logs -f
```

### Menghentikan seluruh container

```bash
docker compose down
```

### Rebuild container tanpa cache

```bash
docker compose build --no-cache
docker compose up -d
```

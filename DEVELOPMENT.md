# Flutter GetX App - Aplikasi Dikembangkan

##  FITUR BARU YANG DITAMBAHKAN

### 1. **State Management dengan GetX Controller**
-  ArticleController - Mengelola data artikel
-  EventController - Mengelola data event
-  ContactController - Mengelola form kontak

### 2. **Model Data**
-  Article Model (id, title, author, date, category, image, excerpt, content)
-  Event Model (id, title, date, time, location, description, image, category, participants)

### 3. **Halaman Artikel (ArticlesPage)**
-  List artikel dengan data dummy (5 artikel)
-  Filter berdasarkan kategori (Tutorial, State Management, Performance, Design, Backend)
-  Pull to refresh
-  Card design yang menarik dengan gradient
-  Navigasi ke detail artikel

### 4. **Halaman Detail Artikel (ArticleDetailPage)**
-  Tampilan lengkap artikel
-  Header dengan emoji icon
-  Category chip
-  Informasi author dan tanggal
-  Konten artikel lengkap
-  Tombol Share dan Simpan
-  SnackBar notification

### 5. **Halaman Event (EventsPage)**
-  List event dengan data dummy (5 event)
-  Filter berdasarkan kategori (Meetup, Workshop, Conference, Webinar, Hackathon)
-  Pull to refresh
-  Card design yang eye-catching dengan gradient header
-  Informasi lengkap (tanggal, waktu, lokasi, jumlah peserta)
-  Tombol Daftar langsung di card
-  Bottom Sheet untuk detail event
-  Modal pendaftaran dengan animasi

### 6. **Halaman Kontak (ContactUsPage)**
-  Form lengkap dengan validasi:
  - Nama (minimal 3 karakter)
  - Email (validasi format email)
  - Subjek (wajib diisi)
  - Pesan (minimal 10 karakter)
-  Loading indicator saat submit
-  SnackBar success notification
-  Auto clear form setelah submit
-  Contact info cards (Telepon & Email)
-  Social media buttons (Facebook, TikTok, WhatsApp, Email)

##  Struktur Project yang Diupdate

\\\
lib/
 main.dart
 controllers/
    article_controller.dart    # NEW
    event_controller.dart      # NEW
    contact_controller.dart    # NEW
 models/
    article.dart               # NEW
    event.dart                 # NEW
 pages/
    splash_screen.dart
    home_page.dart
    articles_page.dart         # UPDATED - dengan list & filter
    article_detail_page.dart   # NEW
    events_page.dart           # UPDATED - dengan list & detail
    contact_us_page.dart       # UPDATED - dengan form
 routes/
     app_routes.dart            # UPDATED - tambah articleDetail
     app_pages.dart             # UPDATED - tambah ArticleDetailPage
\\\

##  Desain & UX Improvements

### Artikel:
-  Horizontal scroll filter categories
-  Card dengan gradient icon
-  Preview excerpt
-  Smooth navigation ke detail
-  Pull to refresh functionality

### Event:
-  Gradient header dengan emoji besar
-  Complete event information
-  Jumlah peserta ditampilkan
-  Quick registration button
-  Bottom sheet untuk detail lengkap

### Kontak:
-  Form validation real-time
-  Input fields dengan icon
-  Loading state saat submit
-  Success feedback dengan snackbar
-  Social media integration buttons

##  Cara Menjalankan

### Di Emulator Android:
\\\ash
# Launch emulator
flutter emulators --launch Medium_Phone_API_36.0

# Tunggu emulator ready, lalu run
flutter run
\\\

### Di Chrome:
\\\ash
flutter run -d chrome
\\\

### Di Android Studio:
1. Buka project di Android Studio
2. Pastikan Flutter plugin terinstall
3. Pilih device/emulator
4. Klik Run ()

##  GetX Features yang Digunakan

1. **State Management**: .obs dan Obx()
2. **Navigation**: Get.toNamed(), Get.back(), Get.offAllNamed()
3. **Dependency Injection**: Get.put()
4. **Snackbar**: Get.snackbar()
5. **Validation**: GetUtils.isEmail()
6. **Passing Arguments**: Get.arguments

##  Data Dummy

### Artikel (5):
1. Memulai Belajar Flutter untuk Pemula
2. GetX: State Management Terbaik di Flutter
3. 10 Tips Optimasi Performa Flutter
4. Membuat Design System dengan Flutter
5. Firebase Integration dengan Flutter

### Event (5):
1. Flutter Indonesia Meetup #45
2. Workshop: Build Your First Flutter App
3. Flutter Forward Extended Jakarta
4. Webinar: State Management with GetX
5. Hackathon: Flutter Challenge 2025

##  Interactive Features

-  Filter & search functionality
-  Pull to refresh
-  Form validation
-  Loading states
-  Success notifications
-  Bottom sheets
-  Modal dialogs
-  Smooth animations
-  Responsive design

##  Next Steps (Saran Pengembangan)

1. Integrasi dengan REST API
2. Implementasi database lokal (Hive/SQLite)
3. Add authentication (Login/Register)
4. Implementasi favorite articles/events
5. Search functionality
6. Dark mode theme
7. Multi-language support
8. Push notifications
9. Share to social media
10. Image upload untuk profile

---

**Aplikasi siap digunakan dan dikembangkan lebih lanjut!** 

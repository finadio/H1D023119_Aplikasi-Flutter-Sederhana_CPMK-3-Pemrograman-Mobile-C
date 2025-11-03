import 'package:get/get.dart';
import '../models/article.dart';

class ArticleController extends GetxController {
  var articles = <Article>[].obs;
  var isLoading = false.obs;
  var selectedCategory = 'Semua'.obs;

  @override
  void onInit() {
    super.onInit();
    loadArticles();
  }

  void loadArticles() {
    isLoading.value = true;

    // Simulasi loading data
    Future.delayed(const Duration(seconds: 1), () {
      articles.value = [
        Article(
          id: 1,
          title: 'Memulai Belajar Flutter untuk Pemula',
          author: 'Ahmad Rizki',
          date: '1 November 2025',
          category: 'Tutorial',
          image: '📱',
          excerpt:
              'Panduan lengkap untuk memulai belajar Flutter dari nol hingga mahir. Pelajari dasar-dasar Flutter dan mulai membuat aplikasi pertama Anda.',
          content:
              '''Flutter adalah framework UI open-source yang dikembangkan oleh Google untuk membuat aplikasi mobile, web, dan desktop dari satu codebase. Dengan Flutter, Anda dapat membuat aplikasi yang indah dan performa tinggi dengan mudah.

Mengapa Memilih Flutter?

1. Single Codebase - Tulis sekali, jalankan di mana saja. Flutter memungkinkan Anda membuat aplikasi untuk iOS, Android, Web, Windows, macOS, dan Linux dari satu source code.

2. Hot Reload - Lihat perubahan kode secara langsung tanpa perlu restart aplikasi. Fitur ini sangat mempercepat proses development.

3. Widget-Based - Semua elemen UI di Flutter adalah widget. Sistem widget yang fleksibel memudahkan Anda membuat tampilan yang kompleks dan menarik.

4. Performa Native - Flutter menggunakan Dart AOT (Ahead-of-Time) compilation yang menghasilkan performa setara aplikasi native.

Langkah Memulai:

Pertama, install Flutter SDK dari flutter.dev. Pastikan Anda juga install Android Studio untuk development Android atau Xcode untuk iOS. Kemudian, verifikasi instalasi dengan menjalankan "flutter doctor" di terminal.

Setelah setup selesai, buat project pertama Anda dengan "flutter create nama_project". Flutter akan generate template project yang siap dijalankan.

Struktur project Flutter terdiri dari folder lib (tempat code Dart Anda), android/ios (konfigurasi platform-specific), dan pubspec.yaml (dependency management).

Pelajari widget dasar seperti Container, Row, Column, Text, dan Image. Pahami konsep Stateless dan Stateful Widget. Kemudian eksplorasi Material Design widgets untuk membuat UI yang modern dan responsive.

Dengan konsistensi belajar dan praktik, Anda akan mahir Flutter dalam waktu singkat!''',
        ),
        Article(
          id: 2,
          title: 'GetX: State Management Terbaik di Flutter',
          author: 'Siti Nurhaliza',
          date: '28 Oktober 2025',
          category: 'State Management',
          image: '🎯',
          excerpt:
              'Mengapa GetX menjadi pilihan favorit developer Flutter untuk state management. Pelajari cara efektif mengelola state aplikasi Anda.',
          content:
              '''GetX adalah solusi state management yang powerful dan mudah digunakan di Flutter. Dengan GetX, Anda dapat mengelola state, routing, dan dependency injection dengan sangat efisien dalam satu package.

Keunggulan GetX:

1. Performa Tinggi - GetX menggunakan reactive programming yang sangat efisien. Update UI hanya terjadi pada widget yang berubah, bukan rebuild seluruh tree.

2. Sintaks Sederhana - GetX memiliki API yang clean dan mudah dipahami. Bahkan developer pemula dapat langsung produktif.

3. Decoupled Architecture - GetX mendorong pemisahan logic dan UI yang baik, membuat code lebih maintainable.

4. Low Memory Footprint - GetX sangat ringan dan tidak membebani aplikasi Anda.

Konsep Dasar GetX:

Reactive State (.obs) - Tambahkan .obs pada variabel untuk membuatnya reactive. Gunakan Obx() atau GetX() widget untuk listen perubahan.

Controllers - Buat class yang extend GetxController untuk mengelola business logic. Pisahkan logic dari UI.

Dependency Injection - Gunakan Get.put() untuk inject controller. GetX akan handle lifecycle management secara otomatis.

Navigation - Gunakan Get.to(), Get.back(), Get.offAll() untuk navigasi yang mudah tanpa BuildContext.

GetX vs Provider vs Bloc:

GetX lebih sederhana dibanding Bloc yang memiliki boilerplate code banyak. Dibanding Provider, GetX lebih powerful dengan fitur navigation dan dependency injection built-in.

Untuk project kecil hingga menengah, GetX adalah pilihan terbaik karena balance antara kesederhanaan dan fitur lengkap. Untuk project enterprise yang sangat besar, pertimbangkan Bloc untuk struktur yang lebih strict.

Mulai gunakan GetX di project Anda dan rasakan perbedaannya!''',
        ),
        Article(
          id: 3,
          title: '10 Tips Optimasi Performa Flutter',
          author: 'Budi Santoso',
          date: '25 Oktober 2025',
          category: 'Performance',
          image: '⚡',
          excerpt:
              'Tips dan trik untuk meningkatkan performa aplikasi Flutter Anda. Buat aplikasi yang cepat dan responsive dengan teknik optimasi terbukti.',
          content:
              '''Performa aplikasi adalah kunci kesuksesan. Artikel ini membahas 10 tips penting untuk mengoptimalkan aplikasi Flutter Anda agar berjalan lebih cepat dan efisien.

1. Gunakan const Constructor

Widget yang tidak berubah harus menggunakan const. Ini membantu Flutter menghindari rebuild yang tidak perlu dan mengurangi memory usage.

2. ListView.builder untuk List Panjang

Jangan gunakan ListView biasa untuk list panjang. ListView.builder hanya render item yang visible, menghemat memory dan CPU.

3. Avoid Expensive Operations di build()

Jangan lakukan kalkulasi berat atau I/O di method build(). Pindahkan ke initState() atau gunakan FutureBuilder/StreamBuilder.

4. Optimize Image Loading

Gunakan cached_network_image untuk cache image dari network. Compress dan resize image sebelum display. Gunakan format WebP untuk ukuran lebih kecil.

5. Minimize Widget Rebuilds

Gunakan state management yang baik (GetX, Provider, Bloc). Split widget besar menjadi widget kecil. Hanya rebuild widget yang benar-benar berubah.

6. Use Key Wisely

Gunakan Key untuk membantu Flutter identify widget yang berubah. ValueKey, ObjectKey, atau UniqueKey tergantung use case.

7. Lazy Loading & Pagination

Jangan load semua data sekaligus. Implementasi pagination dan lazy loading untuk list besar.

8. Profile Before Optimize

Gunakan Flutter DevTools untuk profile aplikasi. Identify bottleneck sebelum optimasi. Jangan optimasi prematur tanpa data.

9. Minimize Async Gaps

Gunakan await dengan bijak. Batch multiple async operations dengan Future.wait(). Hindari sequential await yang tidak perlu.

10. Code Splitting & Deferred Loading

Untuk aplikasi besar, gunakan deferred loading untuk lazy load library. Ini mengurangi initial bundle size.

Bonus: Gunakan Release Mode untuk Testing Performa

Debug mode selalu lambat karena overhead. Test performa di release mode dengan "flutter run --release".

Dengan menerapkan tips ini, aplikasi Flutter Anda akan jauh lebih cepat dan smooth!''',
        ),
        Article(
          id: 4,
          title: 'Membuat Design System dengan Flutter',
          author: 'Dewi Lestari',
          date: '20 Oktober 2025',
          category: 'Design',
          image: '🎨',
          excerpt:
              'Cara membuat design system yang konsisten untuk aplikasi Flutter. Pelajari best practices dalam membangun UI yang scalable dan maintainable.',
          content:
              '''Design system adalah fondasi penting untuk membuat UI yang konsisten. Pelajari cara membuat design system yang dapat digunakan kembali di seluruh aplikasi Anda.

Apa itu Design System?

Design system adalah kumpulan komponen UI, style guide, dan pattern yang reusable. Ini memastikan konsistensi visual dan UX di seluruh aplikasi.

Komponen Design System:

1. Color Palette - Definisikan primary, secondary, accent colors dan variasi nya (light, dark). Buat konstanta untuk setiap warna.

2. Typography Scale - Tentukan font family, size, weight, dan line height untuk heading, body, caption, dll.

3. Spacing System - Gunakan multiple 4 atau 8 untuk spacing (4, 8, 16, 24, 32, dll). Konsisten dalam padding dan margin.

4. Component Library - Buat custom widget reusable seperti CustomButton, CustomCard, CustomTextField dengan styling konsisten.

5. Icons Set - Pilih icon library (Material Icons, Font Awesome) dan gunakan konsisten.

Implementasi di Flutter:

Buat file theme.dart yang berisi ThemeData. Definisikan colorScheme, textTheme, buttonTheme, dll.

Gunakan Theme.of(context) untuk akses theme di widget. Hindari hardcode color atau size.

Buat custom widget dengan parameter yang fleksibel tapi dengan default yang sesuai design system.

Atomic Design Approach:

Atoms - Komponen dasar (button, input, icon)
Molecules - Kombinasi atoms (search bar = input + button)
Organisms - Kombinasi molecules (header = logo + nav + search)
Templates - Layout structure
Pages - Instance of template dengan real content

Benefit Design System:

- Developer lebih cepat karena tinggal pakai component
- Konsistensi UI di seluruh app
- Mudah maintenance dan update
- Scalable untuk team besar
- Onboarding developer baru lebih cepat

Mulai bangun design system Anda hari ini dan lihat perbedaan produktivitas!''',
        ),
        Article(
          id: 5,
          title: 'Firebase Integration dengan Flutter',
          author: 'Rizky Pratama',
          date: '15 Oktober 2025',
          category: 'Backend',
          image: '🔥',
          excerpt:
              'Integrasi Firebase untuk authentication, database, dan cloud storage. Tutorial lengkap setup Firebase di aplikasi Flutter Anda.',
          content:
              '''Firebase menyediakan backend-as-a-service yang sempurna untuk aplikasi Flutter. Pelajari cara mengintegrasikan Firebase Authentication, Firestore, dan Cloud Storage.

Mengapa Firebase?

Firebase adalah platform Google yang menyediakan backend solution lengkap tanpa perlu setup server. Cocok untuk MVP dan production app.

Fitur Firebase untuk Flutter:

1. Authentication - Login dengan email, Google, Facebook, Apple, phone number. Handle session management otomatis.

2. Cloud Firestore - NoSQL database realtime. Sync data across devices instantly. Offline support built-in.

3. Cloud Storage - Upload dan download file (image, video, document). Secure dengan Firebase Security Rules.

4. Cloud Messaging - Push notification to users. Segmentation dan analytics included.

5. Analytics - Track user behavior, screen views, custom events. Integrate dengan Google Analytics.

6. Crashlytics - Real-time crash reporting. Track errors dan stability metrics.

Setup Firebase:

1. Buat project di Firebase Console
2. Add Flutter app (iOS & Android)
3. Download google-services.json (Android) dan GoogleService-Info.plist (iOS)
4. Install FlutterFire CLI: "dart pub global activate flutterfire_cli"
5. Run: "flutterfire configure"
6. Add dependencies di pubspec.yaml

Authentication Flow:

Initialize Firebase di main.dart dengan WidgetsFlutterBinding.ensureInitialized() dan Firebase.initializeApp().

Buat auth service class untuk handle sign in, sign up, sign out. Gunakan FirebaseAuth.instance.

Listen auth state dengan authStateChanges() stream. Navigate user ke home atau login based on auth state.

Firestore CRUD:

Read - collection('users').doc(userId).get()
Create - collection('users').add({data})
Update - doc.update({field: value})
Delete - doc.delete()

Realtime Updates - listen dengan snapshots() stream. UI otomatis update ketika data berubah.

Security Best Practices:

- Jangan expose API keys di source code
- Setup Firebase Security Rules
- Validate input di client dan server
- Use Firebase App Check untuk prevent abuse

Firebase free tier sangat generous. Cocok untuk development dan small-medium apps. Scale up ke paid plan ketika user base tumbuh.

Start building dengan Firebase hari ini dan fokus ke product, bukan infrastructure!''',
        ),
      ];
      isLoading.value = false;
    });
  }

  void filterByCategory(String category) {
    selectedCategory.value = category;
  }

  List<Article> get filteredArticles {
    if (selectedCategory.value == 'Semua') {
      return articles;
    }
    return articles
        .where((article) => article.category == selectedCategory.value)
        .toList();
  }

  List<String> get categories {
    var cats = articles.map((article) => article.category).toSet().toList();
    cats.insert(0, 'Semua');
    return cats;
  }
}

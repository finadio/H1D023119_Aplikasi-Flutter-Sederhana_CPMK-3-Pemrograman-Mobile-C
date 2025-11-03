import 'package:get/get.dart';
import '../models/event.dart';

class EventController extends GetxController {
  var events = <Event>[].obs;
  var isLoading = false.obs;
  var selectedFilter = 'Semua'.obs;

  @override
  void onInit() {
    super.onInit();
    loadEvents();
  }

  void loadEvents() {
    isLoading.value = true;

    Future.delayed(const Duration(seconds: 1), () {
      events.value = [
        Event(
          id: 1,
          title: 'Flutter Indonesia Meetup #45',
          date: '10 November 2025',
          time: '14:00 - 17:00 WIB',
          location: 'Jakarta Convention Center',
          description:
              'Meetup bulanan Flutter Indonesia dengan pembahasan tentang Flutter 3.16 dan best practices.',
          image: '🎤',
          category: 'Meetup',
          participants: 150,
        ),
        Event(
          id: 2,
          title: 'Workshop: Build Your First Flutter App',
          date: '15 November 2025',
          time: '09:00 - 16:00 WIB',
          location: 'Online via Zoom',
          description:
              'Workshop hands-on untuk pemula yang ingin belajar membuat aplikasi Flutter dari nol.',
          image: '💻',
          category: 'Workshop',
          participants: 200,
        ),
        Event(
          id: 3,
          title: 'Flutter Forward Extended Jakarta',
          date: '20 November 2025',
          time: '10:00 - 18:00 WIB',
          location: 'Gedung Sate, Bandung',
          description:
              'Event besar Flutter dengan keynote dari Google Developer Experts dan community showcase.',
          image: '🚀',
          category: 'Conference',
          participants: 500,
        ),
        Event(
          id: 4,
          title: 'Webinar: State Management with GetX',
          date: '25 November 2025',
          time: '19:00 - 21:00 WIB',
          location: 'Online via Google Meet',
          description:
              'Webinar gratis tentang state management menggunakan GetX dengan studi kasus real-world.',
          image: '📺',
          category: 'Webinar',
          participants: 300,
        ),
        Event(
          id: 5,
          title: 'Hackathon: Flutter Challenge 2025',
          date: '1-2 Desember 2025',
          time: '08:00 - 20:00 WIB',
          location: 'Universitas Indonesia, Depok',
          description:
              'Kompetisi hackathon 24 jam untuk membuat aplikasi Flutter terbaik dengan hadiah total 50 juta.',
          image: '🏆',
          category: 'Hackathon',
          participants: 100,
        ),
      ];
      isLoading.value = false;
    });
  }

  void filterEvents(String filter) {
    selectedFilter.value = filter;
  }

  List<Event> get filteredEvents {
    if (selectedFilter.value == 'Semua') {
      return events;
    }
    return events
        .where((event) => event.category == selectedFilter.value)
        .toList();
  }

  List<String> get filters {
    var cats = events.map((event) => event.category).toSet().toList();
    cats.insert(0, 'Semua');
    return cats;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  var isSubmitting = false.obs;

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.onClose();
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      isSubmitting.value = true;

      // Simulasi pengiriman form
      Future.delayed(const Duration(seconds: 2), () {
        isSubmitting.value = false;

        Get.snackbar(
          'Berhasil!',
          'Pesan Anda telah terkirim. Kami akan menghubungi Anda segera.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: const Duration(seconds: 3),
          margin: const EdgeInsets.all(10),
        );

        // Clear form
        nameController.clear();
        emailController.clear();
        subjectController.clear();
        messageController.clear();
      });
    }
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama harus diisi';
    }
    if (value.length < 3) {
      return 'Nama minimal 3 karakter';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email harus diisi';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Email tidak valid';
    }
    return null;
  }

  String? validateSubject(String? value) {
    if (value == null || value.isEmpty) {
      return 'Subjek harus diisi';
    }
    return null;
  }

  String? validateMessage(String? value) {
    if (value == null || value.isEmpty) {
      return 'Pesan harus diisi';
    }
    if (value.length < 10) {
      return 'Pesan minimal 10 karakter';
    }
    return null;
  }
}

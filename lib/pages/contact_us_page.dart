import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/contact_controller.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactController controller = Get.put(ContactController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hubungi Kami'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Center(
                child: Icon(Icons.contact_mail, size: 80, color: Colors.purple),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Kirim Pesan Kepada Kami',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Kami siap membantu Anda 24/7',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
              ),

              const SizedBox(height: 30),

              // Contact Info Cards
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(Icons.phone, color: Colors.purple, size: 30),
                            const SizedBox(height: 8),
                            const Text(
                              'Telepon',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '+62 123 456',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(Icons.email, color: Colors.purple, size: 30),
                            const SizedBox(height: 8),
                            const Text(
                              'Email',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'info@app.com',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Form
              Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name Field
                    TextFormField(
                      controller: controller.nameController,
                      decoration: InputDecoration(
                        labelText: 'Nama Lengkap',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: controller.validateName,
                    ),

                    const SizedBox(height: 15),

                    // Email Field
                    TextFormField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: controller.validateEmail,
                    ),

                    const SizedBox(height: 15),

                    // Subject Field
                    TextFormField(
                      controller: controller.subjectController,
                      decoration: InputDecoration(
                        labelText: 'Subjek',
                        prefixIcon: const Icon(
                          Icons.subject,
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: controller.validateSubject,
                    ),

                    const SizedBox(height: 15),

                    // Message Field
                    TextFormField(
                      controller: controller.messageController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        labelText: 'Pesan',
                        prefixIcon: const Icon(
                          Icons.message,
                          color: Colors.purple,
                        ),
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: controller.validateMessage,
                    ),

                    const SizedBox(height: 25),

                    // Submit Button
                    Obx(
                      () => SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: controller.isSubmitting.value
                              ? null
                              : controller.submitForm,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            disabledBackgroundColor: Colors.purple.shade200,
                          ),
                          child: controller.isSubmitting.value
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Text(
                                  'Kirim Pesan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Social Media
              const Center(
                child: Text(
                  'Atau hubungi kami di:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialMediaButton(Icons.facebook, Colors.blue),
                  _socialMediaButton(Icons.tiktok, Colors.black),
                  _socialMediaButton(Icons.chat, Colors.green),
                  _socialMediaButton(Icons.alternate_email, Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialMediaButton(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {
          Get.snackbar(
            'Social Media',
            'Membuka social media...',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: color,
            colorText: Colors.white,
            duration: const Duration(seconds: 2),
          );
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}

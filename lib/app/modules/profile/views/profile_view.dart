import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import 'package:mahasiswa/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: const Color(0xFF484848),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.HOME),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: const ProfileBodyPage(),
    );
  }
}

class ProfileBodyPage extends StatelessWidget {
  const ProfileBodyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var vokasiLightGrey = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF8B8B8B),
    );
    var vkTextGrey = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF484848),
    );
    var vkTextLightGrey = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: const Color(0x80484848),
    );
    var textCardLight = GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
    var textCardBold = GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/me.jpg'),
              radius: 50.0,
            ),
          ),
          const Spacer(),
          Text(
            "Muhamad Ikbal",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF484848),
            ),
          ),
          Text(
            "balecoding21@gmail.com",
            style: vokasiLightGrey,
          ),
          Text(
            "085719894601",
            style: vokasiLightGrey,
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF755799),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("NPM", style: textCardLight),
                    const Spacer(),
                    Text("065120015", style: textCardBold),
                    const SizedBox(width: 9),
                    const Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text("Status Keaktifan", style: textCardLight),
                    const Spacer(),
                    Text("Aktif", style: textCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text("Program Studi", style: textCardLight),
                    const Spacer(),
                    Text("Ilmu Komputer", style: textCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text("Jenjang Pendidikan", style: textCardLight),
                    const Spacer(),
                    Text("S1", style: textCardBold),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text("Nama Lengkap", style: vkTextGrey),
                const Spacer(),
                Text("Muhamad Ikbal", style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color(0xFF755799)),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text("Panggilan", style: vkTextGrey),
                const Spacer(),
                Text("Ikbal", style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color(0xFF755799)),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alamat Rumah", style: vkTextGrey),
                const SizedBox(height: 6),
                Text(
                    "Kp. Hambalang Rt 08/03 Ds. Hambalang Kec. Citeureup Kab. Bogor, Jawa barat, Indonesia, 16810",
                    style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color(0xFF755799)),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text("Kartu Mahasiswa", style: vkTextGrey),
                const Spacer(),
                const Icon(Icons.badge),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Profil Pengguna
              Padding(
                padding: const EdgeInsets.all(0), // Padding luar
                child: Container(
                  padding: const EdgeInsets.all(16.0), // Padding dalam
                  decoration: BoxDecoration(
                    color: Colors.white, // Background putih
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Nama dan Nomor Telepon
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Text(
                              'Muhammad Fathurrozak Al Qoroni',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '+6211111111111',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      // Foto Profil di Sebelah Kanan
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: Image.asset('images/pp.jpg').image,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Warna kotak putih
                ),
                padding: EdgeInsets.all(10), // Padding di dalam container
                child: Column(
                  children: [
                    _buildMenuItem(
                      title: 'Account Type',
                      subtitle: 'FULL SERVICE',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'Account Settings',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'LinkAja Syariah',
                      subtitle: 'Not Active',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'Payment Method',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Warna kotak putih
                ),
                padding: EdgeInsets.all(10), // Padding di dalam container
                child: Column(
                  children: [
                    _buildMenuItem(
                      title: 'Email',
                      subtitle: '2241720109@student.polinema.ac.id',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'Security Question',
                      subtitle: 'Set',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'PIN Settings',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'Language',
                      subtitle: 'Arabic',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Warna kotak putih
                ),
                padding: EdgeInsets.all(10), // Padding di dalam container
                child: Column(
                  children: [
                    _buildMenuItem(
                      title: 'Terms of Service',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'Privacy Policy',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildMenuItem(
                      title: 'Help Center',
                      trailingIcon: Icons.chevron_right,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  // Widget untuk Item Menu
  Widget _buildMenuItem({
    required String title,
    String? subtitle,
    Color subtitleColor = Colors.grey,
    IconData? trailingIcon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
        child: Row(
          children: [
            // Title di sebelah kiri
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Subtitle dan Icon di sebelah kanan
            if (subtitle != null) ...[
              Text(
                subtitle,
                style: TextStyle(color: subtitleColor),
              ),
              SizedBox(width: 8), // Jarak antara subtitle dan icon
            ],
            if (trailingIcon != null) Icon(trailingIcon, color: Colors.black),
          ],
        ),
      ),
    );
  }
}

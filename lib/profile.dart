import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Maulana Khadafi'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
            },
          )
        ]
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person, size: 50),
                ),
                const SizedBox(height: 16),
                Text(
                  'Maulana Khadafi',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'NIM: 1124160205',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'Program Studi: Teknik Informatika',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 32),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kontak',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
              
                const Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      InfoTile(icon: Icons.email, label: 'Email', value: 'maulanakhadafi114@gmail.com'),
                      InfoTile(icon: Icons.phone, label: 'Nomor HP', value: '085710465321'),
                      InfoTile(icon: Icons.class_, label: 'Kelas', value: 'TI 24 P SE 3'),
                      InfoTile(icon: Icons.code, label: 'Akun GitHub', value: 'github.com/dapimorales'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Keahlian & Hobi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                
                const Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      InfoTile(icon: Icons.camera_alt, label: 'Hobi', value: 'Photography'),
                      InfoTile(icon: Icons.gamepad, label: 'Hobi', value: 'Main Catur'),
                      InfoTile(icon: Icons.music_note, label: 'Keahlian', value: 'Bermain Gitar'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
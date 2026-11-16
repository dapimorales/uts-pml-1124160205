import 'package:flutter/material.dart';
import '../widgets/info_tile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final keahlianList = [
      {
        'icon': Icons.phone_android,
        'label': 'Mobile Development',
        'value': 'Flutter, Dart, & Material 3',
      },
      {
        'icon': Icons.design_services,
        'label': 'Desain Grafis & UI/UX',
        'value': 'Figma, Adobe Illustrator, & Branding',
      },
      {
        'icon': Icons.camera_alt_outlined,
        'label': 'Fotografi & Media',
        'value': 'Event Photography & Digital Editing',
      },
      {
        'icon': Icons.music_note_outlined,
        'label': 'Musik & Gitar',
        'value': 'Akustik, Elektrik, & Aransemen Lagu',
      },
    ];

    final pendidikanList = [
      {
        'icon': Icons.school,
        'label': '2024 - Sekarang',
        'value': 'S1 Teknik Informatika - Global Institute Tangerang',
      },
      {
        'icon': Icons.account_balance,
        'label': '2021 - 2024',
        'value': 'Sekolah Menengah Atas (SMA)',
      },
      {
        'icon': Icons.menu_book,
        'label': '2018 - 2021',
        'value': 'Sekolah Menengah Pertama (SMP)',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Keahlian & Hobi',
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...keahlianList.map(
            (item) => InfoTile(
              icon: item['icon'] as IconData,
              label: item['label'] as String,
              value: item['value'] as String,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Riwayat Pendidikan',
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...pendidikanList.map(
            (item) => InfoTile(
              icon: item['icon'] as IconData,
              label: item['label'] as String,
              value: item['value'] as String,
            ),
          ),
        ],
      ),
    );
  }
}
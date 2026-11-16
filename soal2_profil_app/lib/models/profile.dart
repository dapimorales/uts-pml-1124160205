class Profile {
  final String nama;
  final String nim;
  final String prodi;
  final String kelas;
  final String bio;
  final String email;
  final String hp;
  final String github;
  final String fotoAsset;

  const Profile({
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.kelas,
    required this.bio,
    required this.email,
    required this.hp,
    required this.github,
    required this.fotoAsset,
  });

  Profile copyWith({
    String? nama,
    String? nim,
    String? prodi,
    String? kelas,
    String? bio,
    String? email,
    String? hp,
    String? github,
    String? fotoAsset,
  }) {
    return Profile(
      nama: nama ?? this.nama,
      nim: nim ?? this.nim,
      prodi: prodi ?? this.prodi,
      kelas: kelas ?? this.kelas,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      hp: hp ?? this.hp,
      github: github ?? this.github,
      fotoAsset: fotoAsset ?? this.fotoAsset,
    );
  }

  factory Profile.initial() {
    return const Profile(
      nama: 'Maulana Khadafi',
      nim: '1124160205',
      prodi: 'Teknik Informatika',
      kelas: 'TI 24 P SE 3', 
      bio: 'Mahasiswa Teknik Informatika yang cinta dengan seni.',
      email: 'maulana.khadafi@email.com', 
      hp: '081234567890', 
      github: 'github.com/dapimorales', 
      fotoAsset: 'assets/images/profile.png',
    );
  }
}
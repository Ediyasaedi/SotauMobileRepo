class User {
  final String email;
  final String name;
  final String ttl;
  final int nohandphne;
  final String asalSekolah;
  final int tahunLulus;
  bool isFollowUp;

  User(
      {required this.email,
      required this.name,
      required this.ttl,
      required this.nohandphne,
      required this.asalSekolah,
      required this.tahunLulus,
      this.isFollowUp = false});
}

class Il {
  Il({
    required this.ilAdi,
    required this.plakaKodu,
    required this.ilceler,
  });
  factory Il.fromJson(Map<String, dynamic> json) {
    final list = json['ilceler'] as List;

    final ilcelerList =
        list.map((i) => Ilce.fromJson(i as Map<String, dynamic>)).toList();

    return Il(
      ilAdi: json['il_adi'] as String,
      plakaKodu: json['plaka_kodu'] as String,
      ilceler: json['ilceler'] != null ? ilcelerList : [],
    );
  }

  String ilAdi;
  String plakaKodu;
  List<Ilce> ilceler;

  Map<String, dynamic> toJson() => {
        'il_adi': ilAdi,
        'plaka_kodu': plakaKodu,
        'ilceler': List<dynamic>.from(ilceler.map((x) => x.toJson())),
      };
}

class Ilce {
  Ilce({
    required this.ilceAdi,
  });
  factory Ilce.fromJson(Map<String, dynamic> json) => Ilce(
        ilceAdi: json['ilce_adi'] as String,
      );

  String ilceAdi;

  Map<String, dynamic> toJson() => {
        'ilce_adi': ilceAdi,
      };
}

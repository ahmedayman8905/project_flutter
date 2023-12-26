class TowBrowseResponse {
  List<Genres>? genres;

  TowBrowseResponse({
    this.genres,
  });

  TowBrowseResponse.fromJson(Map<String, dynamic> json) {
    if (json['genres'] != null) {
      genres = List<Genres>.from(
        json['genres'].map((dynamic genre) => Genres.fromJson(genre)),
      );
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    if (genres != null) {
      map['genres'] = genres?.map((Genres genre) => genre.toJson()).toList();
    }
    return map;
  }
}

class Genres {
  int? id;
  String? name;

  Genres({
    this.id,
    this.name,
  });

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
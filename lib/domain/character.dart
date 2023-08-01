class Character {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Map<String, dynamic>? origin;
  Map<String, dynamic>? location;
  String? image;
  List<String>? episodes;
  String? url;
  String? created;

  Character(
      this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episodes,
      this.url,
      this.created);

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        json['id'],
        json['name'],
        json['status'],
        json['species'],
        json['type'],
        json['gender'],
        json['origin'],
        json['location'],
        json['image'],
        json['episodes'],
        json['url'],
        json['created']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
      'origin': origin,
      'location': location,
      'image': image,
      'episodes': episodes,
      'url': url,
      'created': created
    };
  }
}

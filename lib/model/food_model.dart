class Food {
  final String name;
  final String img;
  final String description;

  Food({
    required this.name,
    required this.img,
    required this.description,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "img": img,
        "description": description,
      };

  static Food fromJson(Map<String, dynamic> json) => Food(
        name: json['name'],
        img: json['img'],
        description: json['description'],
      );
}

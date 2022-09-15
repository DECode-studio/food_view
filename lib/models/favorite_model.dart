class Favorite {
  final int id;
  final String mealId;
  final String mealImage;
  final String mealName;
  final String mealCategory;
  final String mealTag;
  final String mealInstruction;

  Favorite({
    required this.id,
    required this.mealId,
    required this.mealImage,
    required this.mealName,
    required this.mealCategory,
    required this.mealTag,
    required this.mealInstruction,
  });

  factory Favorite.fromDatabaseJson(Map<String, dynamic> data) => Favorite(
        id: data['id'],
        mealId: data['mealId'],
        mealImage: data['mealImage'],
        mealName: data['mealName'],
        mealCategory: data['mealCategory'],
        mealTag: data['mealTag'],
        mealInstruction: data['mealInstruction'],
      );

  Map<String, dynamic> toDatabaseJson() => {
        "id": this.id,
        "mealId": this.mealId,
        "mealImage": this.mealImage,
        "mealName": this.mealName,
        "mealCategory": this.mealCategory,
        "mealTag": this.mealTag,
        "mealInstruction": this.mealInstruction,
      };
}

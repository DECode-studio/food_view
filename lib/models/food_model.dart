class FoodModel {
  Meals? meals;
  List<Meals>? foods;
  String? error;

  FoodModel({this.meals});

  FoodModel.withError(String errorMessage) {
    error = errorMessage;
  }

  FoodModel.fromJson(Map<String, dynamic> json) {
    // meals = json['meals'] != null ? new Meals.fromJson(json['meals']) : null;

    if (json['meals'] != null) {
      foods = [];
      json['meals'].forEach((v) {
        foods!.add(Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    // if (this.meals != null) {
    //   data['meals'] = this.meals!.toJson();
    // }

    if (this.foods != null) {
      data['meals'] = this.foods!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Meals {
  String? idMeal;
  String? strMeal;
  String? strCategory;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? error;

  Meals({
    this.idMeal,
    this.strMeal,
    this.strCategory,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
  });

  Meals.withError(String errorMessage) {
    error = errorMessage;
  }

  Meals.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strCategory = json['strCategory'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
    strTags = json['strTags'];
    strYoutube = json['strYoutube'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strCategory'] = this.strCategory;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    data['strTags'] = this.strTags;
    data['strYoutube'] = this.strYoutube;
    return data;
  }
}

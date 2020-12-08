import 'package:flutter_samples/instagramClone/models/stories_model.dart';

class StoriesProvider {
  List<Storie> stories = new List();

  List<Storie> getStories() {
    stories = [
      new Storie(
        name: "Mabelle",
        photo:
            "https://images.pexels.com/photos/3841338/pexels-photo-3841338.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Roberta",
        photo:
            "https://images.pexels.com/photos/2250276/pexels-photo-2250276.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Carlos",
        photo:
            "https://images.pexels.com/photos/3027243/pexels-photo-3027243.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Carmen",
        photo:
            "https://images.pexels.com/photos/3482523/pexels-photo-3482523.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Juan",
        photo:
            "https://images.pexels.com/photos/4047318/pexels-photo-4047318.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Josefa",
        photo:
            "https://images.pexels.com/photos/3618717/pexels-photo-3618717.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Juse",
        photo:
            "https://images.pexels.com/photos/4096445/pexels-photo-4096445.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      new Storie(
        name: "Pat",
        photo:
            "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
    ];

    return stories;
  }
}

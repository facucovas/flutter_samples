import 'package:flutter_samples/instagramClone/models/post_model.dart';

class PostProvider {
  List<Post> posts = new List();

  List<Post> getPosts() {
    return posts = [
      new Post(
        userName: "Carlos",
        userPhoto:
            "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postPhoto:
            "https://images.pexels.com/photos/4348096/pexels-photo-4348096.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption:
            "probando escribir un texto relativamente largo pero no tan largo como me gustaría.",
        date: "Marzo 21",
        likes: 12,
        topLikes: ["Ricardo", "Carmen"],
      ),
      new Post(
        userName: "Carla",
        userPhoto:
            "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postPhoto:
            "https://images.pexels.com/photos/4596641/pexels-photo-4596641.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption:
            "Aquí mirand la app y opinando sobre su aspecto. Espero esté quedando bien.",
        date: "Noviembre 11",
        likes: 14,
        topLikes: ["Facundo", "Barbara"],
      ),
      new Post(
        userName: "Roberta",
        userPhoto:
            "https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postPhoto:
            "https://images.pexels.com/photos/4300986/pexels-photo-4300986.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Hoy ando con ganas de comer unos ravioles, tranqui 120.",
        date: "Octubre 20",
        likes: 223,
        topLikes: ["Juan", "Carlos"],
      ),
      new Post(
        userName: "Julio",
        userPhoto:
            "https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postPhoto:
            "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption:
            "Dos dias pasaron y la app está terminada. punto y final 10 puntines.",
        date: "Enero 10",
        likes: 141,
        topLikes: ["Leonardo", "Jan"],
      ),
    ];
  }
}

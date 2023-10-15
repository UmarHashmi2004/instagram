// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profileImage;
  final likes;

  const Post(
      {required this.description,
      required this.uid,
      required this.likes,
      required this.username,
      required this.postId,
      required this.datePublished,
      required this.postUrl,
      required this.profileImage});

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
      username: snapshot["username"],
      uid: snapshot["uid"],
      likes: snapshot["likes"],
      description: snapshot["description"],
      postId: snapshot["postId"],
      datePublished: snapshot["datePublished"],
      postUrl: snapshot["postUrl"],
      profileImage: snapshot["profileImage"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "likes": likes,
        "description": description,
        "postId": postId,
        "datePublished": datePublished,
        "postUrl": postUrl,
        "profileImage": profileImage,
      };
}

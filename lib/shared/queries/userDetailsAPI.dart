// import 'package:cloud_firestore/cloud_firestore.dart';

// class UserDetailsAPI {
//   String id = "";
//   final db = FirebaseFirestore.instance;
//   // final dbs = FirebaseStorage.instance;

//   Future<String> push(data) async {
//     var ref = await db.collection("user-details").add(data);
//     id = ref.id;
//     print("ref response $ref");
//     return ref.id.toString();
//   }
// }

import 'package:ecommerce/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helper Function to get FullName
  String get fullName => '$firstName $lastName';

  /// Helper Function to get phone number
  String get formattedPhoneNo => AppFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split(" ");

  static UserModel empty() =>
      UserModel(
          id: '',
          firstName: '',
          lastName: '',
          userName: '',
          email: '',
          phoneNumber: '',
          profilePicture: '');

  Map<String,dynamic> toJson(){
    return {
      'FirstName': firstName,
      'LastName' : lastName,
      'UserName' : userName,
      'Email' : email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture':profilePicture,
    };
  }

//   factory UserModel.formSnapshot(
//       DocumentSnapShot<Map<String, dynamic>> document){
//     if (document.data() != null) {
//       final data = document.data();
//       return UserModel(id: document.id,
//           firstName: data['FirstName'],
//           lastName: data['LastName'],
//           userName: data['UserName'],
//           email: data['Email'],
//           phoneNumber: data['PhoneNumber'],
//           profilePicture: data['ProfilePicture']);
//     }
//   }
}

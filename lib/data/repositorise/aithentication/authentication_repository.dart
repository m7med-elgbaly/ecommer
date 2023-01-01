// import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// import '../../../features/authentication/screens/login/login.dart';
//
// class AuthenticationRepository extends GetxController {
//   static AuthenticationRepository get instance => Get.find();
//
//   /// variable
//   final deviceStorage = GetStorage();
//   final _auth = FirebaseAuth.instance;
//
//   @override
//   void onReady() {
//     FlutterNativeSplash.remove();
//     screenRedirect();
//   }
//
//   screenRedirect() async {
//     /// local Storage
//     deviceStorage.writeIfNull('isFirstTime', true);
//     deviceStorage.read('isFirstTime') != true
//         ? Get.offAll(() => const LoginScreen())
//         : Get.offAll(() => const OnBoardingScreen());
//   }
//
//
//   /// register
//  Future <UserCredential> registerWithEmailAndPassword(String email, String password) async{
//     try{
//       return await _auth.createUserWithEmailAndPassword(email:email , password: password);
//     }on FirebaseAuthException catch(e){
//       rethrow;
//     }
//
//  }
// }

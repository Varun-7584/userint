import 'package:flutter/material.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:userint/main.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:integration_test/integration_test.dart';
import 'package:userint/main.dart' as app;
import 'package:flutter_driver/src/driver/driver.dart';
import 'package:userint/source/features/core/screens/login/login_form_widget.dart';
import 'package:userint/source/features/core/screens/login/login_screen.dart';
//

// void main(){
//   late FlutterDriver driver ;
//   SetUpAll(()async{
//
//   });
//   test("testing empty email returns error strings ", (){
//     // var result =
//
//
//   });
// }
///
// void main() {
//   enableFlutterDriverExtension();
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//   app.main();
//
//   group('test-group', () {
//     late FlutterDriver driver;
//     setUpAll(() async {
//       driver = await FlutterDriver.connect();
//     });
//     tearDownAll(() async {
//       driver.close();
//     });
//
//     test('Get email And Password',()async{
//       final email =  find.byValueKey('email');
//       await driver.tap(email);
//       await driver.enterText('Varun@12345@gamil.com');
//
//     });
//     testWidgets("Flutter Widget Test",  (WidgetTester tester) async {
//       await tester.pumpWidget(LoginForm());
//       var textField = find.byType(TextField);
//       expect(textField, findsOneWidget);
//     });
//   });
// }

// cmd :-  flutter driver --target=test/widget_test.dart
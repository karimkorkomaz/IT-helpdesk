import 'package:material_ui/material_ui.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IT Helpdesk',
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

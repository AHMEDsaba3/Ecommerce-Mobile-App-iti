import 'package:final_project/HomePage.dart';
import 'package:final_project/Service/prefs_service.dart';
import 'package:final_project/provider/favourite_provider.dart';
import 'package:final_project/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await PrefService.init();
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>FavouriteProvider()),
        ChangeNotifierProvider(create: (_)=>ProductProvider()),

      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomePage()
    );
  }
}



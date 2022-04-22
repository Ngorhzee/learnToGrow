import 'package:flutter/material.dart';
import 'package:learn_to_grow/models/app_state_manager.dart';
import 'package:learn_to_grow/models/toggle.dart';

import 'package:learn_to_grow/views/kids_zone.dart';
import 'package:learn_to_grow/views/main_cat_screen.dart';
import 'package:learn_to_grow/views/screen.dart';
import 'package:learn_to_grow/views/splash_screen.dart';
import 'package:provider/provider.dart';

import 'navigation/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final _appStateManager = AppStateManager();
  // late AppRouter _appRouter;
  
  // @override
  // void initState() {
  //   super.initState();
  //   _appRouter = AppRouter(
  //     appStateManager: _appStateManager,
     
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ToggleClass>(create:(_)=> ToggleClass()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        // home:  
        home: const SplashScreen(
    
        )
      ),
    );
      
      
    
  }
}


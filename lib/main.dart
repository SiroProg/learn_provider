import 'package:flutter/material.dart';
import 'package:learn_provider/counter_view_model.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() => runApp(
      MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => ViewModel())],
        child: const MyApp(),
      ),
    );

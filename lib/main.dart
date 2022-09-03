git checkout -b [name_of_your_new_branch]import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'locator.dart';
import 'logger.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();

  setupLogger();

  var app = await initializeApp();

  runApp(app);
}

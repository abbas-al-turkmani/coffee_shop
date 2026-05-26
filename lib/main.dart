import 'package:flutter/material.dart';

import 'my_app.dart';
import 'src/core/services/service_locator.dart';

void main() {

  
  WidgetsFlutterBinding.ensureInitialized();
  initDependencyInjection();

  runApp(const MyApp());
}

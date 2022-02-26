import 'package:fluent_ui/fluent_ui.dart';
import 'package:rana_invoice/features/dashboard/presentaion/dashboard.dart';
import 'package:system_theme/system_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemTheme.accentInstance.load();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late bool isDarkMode;

  @override
  void initState() {
    loadAccent();
    super.initState();
  }

  loadAccent() async {
    isDarkMode = await SystemTheme.darkMode;
  }

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'RANA INVOICE',
      theme: ThemeData(
          // accentColor: AccentColor.resolve(SystemTheme.accentInstance.accent, context),
          // brightness: isDarkMode ? Brightness.dark : Brightness.light,
          ),
      // home: const MyHomePage(),
      routes: {
        "/": (context) => const MyHomePage(),
        "/dashboard": (context) => const RanaDashboard()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushNamed(context, "/dashboard"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/LOGO.jpg"),
    );
  }
}

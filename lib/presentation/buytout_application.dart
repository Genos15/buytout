import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final rootScaffoldMessengerKeyProvider =
    Provider((ref) => GlobalKey<ScaffoldMessengerState>());

class BuytoutApplication extends ConsumerWidget {
  const BuytoutApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rootScaffoldMessengerKey = ref.read(rootScaffoldMessengerKeyProvider);
    final authStateAsync = ref.watch(authManagerProvider);

    var authState = const AuthState(user: null, isLogged: false);

    if (!authStateAsync.isLoading &&
        !authStateAsync.isReloading &&
        !authStateAsync.hasError &&
        authStateAsync.hasValue) {
      authState = authStateAsync.requireValue;
    }

    return AppContextProvider(
      authState: authState,
      child: MaterialApp.router(
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        routerConfig: router,
        title: 'Readige',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(CommonColors.main),
          ),
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.dmSansTextTheme(
            Theme.of(context).textTheme.copyWith(
                  bodyMedium: const TextStyle(fontSize: TextDimens.baseSize),
                ),
          ),
          // textTheme: GoogleFonts.interTextTheme(textTheme),
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // dividerTheme: DividerThemeData(color: Colors.black.withOpacity(.04)),
          // scaffoldBackgroundColor: from(context).scaffoldBackground,
        ),
      ),
    );
  }
}

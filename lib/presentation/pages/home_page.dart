import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../l10n/app_localizations.dart';
import '../widgets/language_selector.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedLanguage = 'fr';

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(selectedLanguage);

    return Scaffold(
      body: Column(
        children: [
          // Première section - Header avec sélecteur de langue
          FB5Row(
            children: [
              FB5Col(
                classNames: 'col-12',
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Sélecteur de langue aligné à droite
                      LanguageSelector(
                        selectedLanguage: selectedLanguage,
                        onLanguageChanged: (value) {
                          if (value != null) {
                            setState(() {
                              selectedLanguage = value;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Deuxième section - Contenu principal
          // FB5Row(
          //   children: [
          //     FB5Col(
          //       classNames: 'col-12 mt-5 mb-5',
          //       child: Center(
          //         child: SelectableText(
          //           localizations.helloWorld,
          //           style: const TextStyle(fontSize: 24),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),

          // Troisième section - Layout avec avatar
          FB5Container(
            child: FB5Row(
              children: [
                // Premier container vide - col-lg-3 col-md-3 col-sm-1
                FB5Col(
                  classNames: 'col-lg-3 col-md-3 col-sm-3',
                  child: Container(
                      // Container vide pour l'espacement
                      ),
                ),

                // Deuxième container - col-lg-4 col-sm-10
                FB5Col(
                  classNames: 'col-lg-4 col-sm-10',
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    // margin: margin(context, 'mt-5 mb-5'),
                    // color: Colors.blue.withValues(alpha: 0.1),
                    child: SelectableText(
                      'Hi, my name is Jean Luc KABULU',
                      // style: TextStyle(fontSize: 18),
                      style: ShadTheme.of(context).textTheme.lead,
                    ),
                  ),
                ),

                // Troisième container avec avatar - col-lg-2 col-sm-10
                FB5Col(
                  classNames: 'col-lg-2 col-sm-10',
                  child: Center(
                    child: ShadAvatar(
                        // size: 80,
                        'https://avatars.githubusercontent.com/u/25481431?v=4', // ✅ Utilise maintenant l'image locale
                        placeholder: Text('CN')),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: FB5Row(
        classNames: 'bg-slate-200 dark:bg-slate-800 p-4',
        children: [
          FB5Col(
            classNames: 'col-12 text-center',
            child: Text(
              '${localizations.home} • ${localizations.about} • ${localizations.contact}',
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

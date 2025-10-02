/// Classe pour gérer les traductions de l'application
class AppLocalizations {
  final String languageCode;

  AppLocalizations(this.languageCode);

  static AppLocalizations of(String languageCode) {
    return AppLocalizations(languageCode);
  }

  // Méthode pour obtenir les traductions
  String translate(String key) {
    return _localizedValues[languageCode]?[key] ?? key;
  }

  // Toutes les traductions regroupées ici
  static const Map<String, Map<String, String>> _localizedValues = {
    'fr': {
      'hello_world': 'Bonjour le monde',
      'welcome': 'Bienvenue',
      'select_language': 'Sélectionner la langue',
      'language': 'Langue',
      'home': 'Accueil',
      'about': 'À propos',
      'contact': 'Contact',
      // Ajoutez toutes vos traductions françaises ici
    },
    'en': {
      'hello_world': 'Hello World',
      'welcome': 'Welcome',
      'select_language': 'Select language',
      'language': 'Language',
      'home': 'Home',
      'about': 'About',
      'contact': 'Contact',
      // Ajoutez toutes vos traductions anglaises ici
    },
  };

  // Raccourcis pour accès rapide
  String get helloWorld => translate('hello_world');
  String get welcome => translate('welcome');
  String get selectLanguage => translate('select_language');
  String get language => translate('language');
  String get home => translate('home');
  String get about => translate('about');
  String get contact => translate('contact');
}

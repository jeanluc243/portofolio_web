# Système de Traduction (i18n)

## 📁 Structure

```
lib/
  └── l10n/
      └── app_localizations.dart  # Toutes les traductions
```

## 🌍 Utilisation

### 1. Ajouter une nouvelle traduction

Dans `app_localizations.dart`, ajoutez votre texte dans les deux langues :

```dart
static const Map<String, Map<String, String>> _localizedValues = {
  'fr': {
    'hello_world': 'Bonjour le monde',
    'new_key': 'Nouveau texte en français',  // ← Ajoutez ici
  },
  'en': {
    'hello_world': 'Hello World',
    'new_key': 'New text in English',  // ← Ajoutez ici
  },
};
```

### 2. Créer un raccourci (optionnel mais recommandé)

```dart
class AppLocalizations {
  // ...
  String get newKey => translate('new_key');
}
```

### 3. Utiliser dans votre widget

```dart
class MyWidget extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(selectedLanguage);
    
    return Text(localizations.newKey);
    // ou
    return Text(localizations.translate('new_key'));
  }
}
```

## 📝 Exemple complet

```dart
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  String selectedLanguage = 'fr';

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(selectedLanguage);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.home),
      ),
      body: Column(
        children: [
          Text(localizations.welcome),
          Text(localizations.helloWorld),
          // Changement de langue
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedLanguage = selectedLanguage == 'fr' ? 'en' : 'fr';
              });
            },
            child: Text('Change Language'),
          ),
        ],
      ),
    );
  }
}
```

## ✅ Avantages de cette approche

1. **Centralisé** : Tous les textes sont dans un seul fichier
2. **Simple** : Pas besoin de packages externes
3. **Type-safe** : Raccourcis avec auto-complétion
4. **Facile à maintenir** : Ajoutez simplement des entrées dans le Map

## 🚀 Pour aller plus loin

### Option 1 : Utiliser avec Bloc (recommandé)

Créez un `LanguageCubit` pour gérer la langue globalement :

```dart
// language_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<String> {
  LanguageCubit() : super('fr');

  void changeLanguage(String languageCode) {
    emit(languageCode);
  }
}
```

Puis dans votre widget :

```dart
final languageCode = context.watch<LanguageCubit>().state;
final localizations = AppLocalizations.of(languageCode);
```

### Option 2 : Fichiers séparés par langue

Si vous avez beaucoup de traductions, créez des fichiers séparés :

```
lib/l10n/
  ├── app_localizations.dart
  ├── translations/
  │   ├── fr.dart
  │   └── en.dart
```

## 🎯 Langues supportées actuellement

- 🇫🇷 Français (fr)
- 🇬🇧 English (en)

Pour ajouter une nouvelle langue, ajoutez simplement une entrée dans `_localizedValues`.

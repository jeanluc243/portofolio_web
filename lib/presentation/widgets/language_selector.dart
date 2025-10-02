import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../l10n/app_localizations.dart';

class LanguageSelector extends StatelessWidget {
  final String selectedLanguage;
  final ValueChanged<String?> onLanguageChanged;

  static const Map<String, String> languages = {
    'fr': 'Français',
    'en': 'English',
  };

  const LanguageSelector({
    super.key,
    required this.selectedLanguage,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(selectedLanguage);
    final theme = ShadTheme.of(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 180),
      child: ShadSelect<String>(
        placeholder: Text(localizations.selectLanguage),
        initialValue: selectedLanguage,
        options: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 6, 6, 6),
            child: Text(
              localizations.language,
              style: theme.textTheme.muted.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.popoverForeground,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          ...languages.entries
              .map((e) => ShadOption(value: e.key, child: Text(e.value))),
        ],
        selectedOptionBuilder: (context, value) => Text(languages[value]!),
        onChanged: onLanguageChanged,
      ),
    );
  }
}

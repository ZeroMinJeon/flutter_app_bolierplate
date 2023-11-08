import 'dart:ui';

enum Language {
  korean,
  english,
  unknown;

  static Language find(String key) {
    return Language.values.asNameMap()[key] ?? Language.english;
  }

  String get flagPath {
    switch (this) {
      case Language.korean:
        return '';// path
      case Language.english:
        return '';// path
      default:
        return '';
    }
  }

  Locale get locale {
    switch (this) {
      case Language.korean:
        return const Locale('ko') ;
      case Language.english:
        return const Locale('en');
      default:
        return const Locale('en');
    }
  }
}

//TODO: 
// Language get currentLanguage =>
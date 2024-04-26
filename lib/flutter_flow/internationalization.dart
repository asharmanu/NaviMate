import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'de'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? deText = '',
  }) =>
      [enText, deText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'ae9zef8d': {
      'en': 'Welcome,',
      'de': '',
    },
    'mw6i2pmy': {
      'en': 'Our Services:',
      'de': '',
    },
    'kui3mkul': {
      'en': 'Health',
      'de': '',
    },
    'maqfmh50': {
      'en': 'Insurance',
      'de': '',
    },
    'uzx58jgt': {
      'en': 'Bank',
      'de': '',
    },
    'h66mlyjj': {
      'en': 'Housing',
      'de': '',
    },
    'gvwqqjba': {
      'en': 'Education',
      'de': '',
    },
    '1oytn7vs': {
      'en': 'Store',
      'de': '',
    },
    'rhyag5of': {
      'en': 'Home',
      'de': '',
    },
  },
  // profile
  {
    'txrvrdrx': {
      'en': 'Email',
      'de': '',
    },
    'vvindmqc': {
      'en': 'University',
      'de': '',
    },
    'a3vofz8h': {
      'en': 'Country',
      'de': '',
    },
    'nn2750ny': {
      'en': 'Birth date',
      'de': '',
    },
    'u24kub8a': {
      'en': 'Your Account',
      'de': '',
    },
    'tqbmco41': {
      'en': 'Edit Profile',
      'de': '',
    },
    '9jyzej0u': {
      'en': 'App Settings',
      'de': '',
    },
    '05hxyji9': {
      'en': 'About Us',
      'de': '',
    },
    '26u6w9ea': {
      'en': 'Terms of Service',
      'de': '',
    },
    'lrakp3od': {
      'en': 'Log Out',
      'de': '',
    },
    'jul9fgbk': {
      'en': 'Profile',
      'de': '',
    },
  },
  // Notification
  {
    '4igh9kdq': {
      'en': 'Profile successfully made!',
      'de': '',
    },
    'zh2nmpx7': {
      'en': 'Welcome to NaviMate! Let\'s start your academic transition!',
      'de': '',
    },
    '60rsphme': {
      'en': 'Notifications',
      'de': '',
    },
    '32ztdycv': {
      'en': 'Notification',
      'de': '',
    },
  },
  // Health
  {
    '6f3u330s': {
      'en': 'Health Services',
      'de': '',
    },
  },
  // Emergency
  {
    '23mpnfxc': {
      'en': 'Emergency Hotline',
      'de': '',
    },
    '05e61u9j': {
      'en': 'Fire:',
      'de': '',
    },
    'h70lq5mu': {
      'en': '112',
      'de': '',
    },
    'wcbzthuw': {
      'en': 'Police:',
      'de': '',
    },
    'jq2t4uvp': {
      'en': '110',
      'de': '',
    },
    'su3rnus9': {
      'en': 'Medical:',
      'de': '',
    },
    'slzm3r2u': {
      'en': '112',
      'de': '',
    },
    's3tujxw9': {
      'en': 'Campus security:',
      'de': '',
    },
    'oehpg1dn': {
      'en': '0421 200-4815',
      'de': '',
    },
    'bgzr8zb2': {
      'en': 'In case of an emergency, follow these steps:',
      'de': '',
    },
    'i8x0joab': {
      'en': '1. Stay calm and assess the situation.',
      'de': '',
    },
    'uu7t3oqe': {
      'en': '2. Call the local emergency number immediately.',
      'de': '',
    },
    '4mz3n3tq': {
      'en': '3. Provide clear and accurate information.',
      'de': '',
    },
    '0doilq9i': {
      'en': '4. Follow the instructions given by the emergency operator.',
      'de': '',
    },
    'otj6rdv5': {
      'en': 'Emergency Info',
      'de': '',
    },
  },
  // Genpracti
  {
    'tcsn6t51': {
      'en': 'Near Campus',
      'de': '',
    },
    'vr8yatln': {
      'en': 'Dr. Hagen Schmidtmann',
      'de': '',
    },
    'o24bvriz': {
      'en': 'Pumpenstrasse 10',
      'de': '',
    },
    'ia4ec67b': {
      'en': '28759 Bremen',
      'de': '',
    },
    'aa4fu3vo': {
      'en': 'map',
      'de': '',
    },
    'ychdxw5f': {
      'en': '+49421627171',
      'de': '',
    },
    'i17281gg': {
      'en': 'Dr. Oliver Kahlen',
      'de': '',
    },
    '40f3gnhn': {
      'en': 'Reeder-Bischoff-Str. 28',
      'de': '',
    },
    '2yf73m1u': {
      'en': '28757 Bremen',
      'de': '',
    },
    'x5fm8arq': {
      'en': 'map',
      'de': '',
    },
    '5mvxpsbk': {
      'en': '+49421663036',
      'de': '',
    },
    'nkwl4jso': {
      'en': 'Dr. Hans Martin Noltenius',
      'de': '',
    },
    '0vabqgfz': {
      'en': 'Gerhard-Rohlfs-Strasse 16 a',
      'de': '',
    },
    'p5zv3hv7': {
      'en': '28757 Bremen',
      'de': '',
    },
    '0cbfnacb': {
      'en': 'map',
      'de': '',
    },
    'f6dnojs5': {
      'en': '+49421669039',
      'de': '',
    },
    'xighyo1w': {
      'en': 'General Practitioners',
      'de': '',
    },
  },
  // Login
  {
    'z7p8u4cu': {
      'en': 'NaviMate',
      'de': '',
    },
    'dg5uacfn': {
      'en': 'Email',
      'de': '',
    },
    'b03ugqxu': {
      'en': 'Password',
      'de': '',
    },
    'qd3ccuqc': {
      'en': 'Sign In',
      'de': '',
    },
    'zxvv5qoc': {
      'en': 'Forgot Password',
      'de': '',
    },
    'h5ojpnjk': {
      'en': 'Sign up',
      'de': '',
    },
    'uwsmgmyn': {
      'en': 'Emergency',
      'de': '',
    },
    '1iskulnl': {
      'en': 'Home',
      'de': '',
    },
  },
  // createacc
  {
    '525teg6l': {
      'en': 'NaviMate',
      'de': '',
    },
    'pklqzsn3': {
      'en': 'Create an account',
      'de': '',
    },
    's41wgs6r': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': '',
    },
    '0xy926ks': {
      'en': 'Name Surname',
      'de': '',
    },
    'bjfg629m': {
      'en': 'Constructor University',
      'de': '',
    },
    '370mupqm': {
      'en': 'Select University',
      'de': '',
    },
    '8r12i6ks': {
      'en': 'Search for an item...',
      'de': '',
    },
    'e1n7x10z': {
      'en': 'Email',
      'de': '',
    },
    '37cazn3o': {
      'en': 'Password',
      'de': '',
    },
    '3mclwm6f': {
      'en': 'Confirm Password',
      'de': '',
    },
    'c5uiaen4': {
      'en': 'Create Account',
      'de': '',
    },
    'gw58c7b5': {
      'en': 'Already have an account? ',
      'de': '',
    },
    'eq1fd6i3': {
      'en': ' Sign In here',
      'de': '',
    },
    'tyv6g3ra': {
      'en': 'UserName',
      'de': '',
    },
    'e5q4zsiw': {
      'en': 'Overall',
      'de': '',
    },
    'dli6n8at': {
      'en': '5',
      'de': '',
    },
    'g9k6virj': {
      'en':
          'Nice outdoor courts, solid concrete and good hoops for the neighborhood.',
      'de': '',
    },
    's3sblrcy': {
      'en': 'Home',
      'de': '',
    },
  },
  // Insurance
  {
    '3ty7wfwu': {
      'en': 'Public Insurances',
      'de': '',
    },
    'hd0cmrh1': {
      'en': 'TK',
      'de': '',
    },
    'xl02gzl5': {
      'en': 'AOK\n',
      'de': '',
    },
    'vd672f23': {
      'en': 'Insurance',
      'de': '',
    },
  },
  // TKinsur
  {
    '5lzmqjaz': {
      'en': 'Techniker Krankenkasse',
      'de': '',
    },
    '3zdc9o4i': {
      'en':
          'Techniker Krankenkasse insurees benefit from medical treatment based on state-of-the-art science. Techniker Krankenkasse focuses on a comprehensive care concept for a range of therapies and treatments - from outpatient surgery up to the treatment of chronic diseases. The individual treatment steps are better coordinated, making your treatment more efficient.',
      'de': '',
    },
    '5q7sf955': {
      'en':
          'Techniker Krankenkasse has special contracts with hospitals in many European countries. Just show your TK eHealth card and you will get the medical care you need.',
      'de': '',
    },
    '9xscskts': {
      'en': 'Learn More',
      'de': '',
    },
    'eliqur8j': {
      'en': 'TK',
      'de': '',
    },
  },
  // AOKInsur
  {
    's5pcre25': {
      'en': 'Allgemeine Ortskrankenkasse',
      'de': '',
    },
    '2slyubf0': {
      'en':
          'AOK is one of the biggest health insurance companies in Germany with over 27 million policyholders and takes extra special care of students.',
      'de': '',
    },
    'k2d77ff0': {
      'en':
          'AOK is a provider of statutory health insurance. They pay out for treatment by doctors and dentists, drugs, therapy (e.g. massages, physiotherapy, etc.) and assistive equipment (e.g. walking aids), and hospital treatment. Some of these services incur an additional charge. This applies to everyone, no matter what health insurance provider they are with. AOK also strives to prevent illnesses from happening in the first place and, if they do happen, to detect them as early as possible and to treat them appropriately. They therefore pay for all legally required preventive examinations and offer their policyholders advice and courses on becoming healthy and staying healthy.',
      'de': '',
    },
    'd14v6vb1': {
      'en': 'Learn More',
      'de': '',
    },
    'omyzidhu': {
      'en': 'AOK',
      'de': '',
    },
  },
  // Specialist
  {
    'dlas4smu': {
      'en': 'Near Campus',
      'de': '',
    },
    'zlyxb33p': {
      'en': 'Dr.  Dietmar Schulte am Hülse',
      'de': '',
    },
    'ubw885dc': {
      'en': 'Dentist',
      'de': '',
    },
    '5t9ebvhm': {
      'en': 'Vegesacker Bahnhofsplatz 2',
      'de': '',
    },
    'ksdhhr6v': {
      'en': '28757 Bremen',
      'de': '',
    },
    'b4wtmw7d': {
      'en': 'map',
      'de': '',
    },
    'd2ekn373': {
      'en': '0421–669 66 10',
      'de': '',
    },
    'ov9wxmxp': {
      'en': 'Mostafa Shirazi',
      'de': '',
    },
    '8cmh39od': {
      'en': 'Dentist',
      'de': '',
    },
    '845de6di': {
      'en': 'Hindenburg Str.56',
      'de': '',
    },
    's1rdhfii': {
      'en': '28717 Bremen',
      'de': '',
    },
    '9avx2acm': {
      'en': '0421-639 72 33',
      'de': '',
    },
    'ho8mzhcy': {
      'en': 'Dr. Christa Goecke',
      'de': '',
    },
    'w3zfrl38': {
      'en': 'Gynecologist',
      'de': '',
    },
    'xpzfjvtj': {
      'en': 'Gerhard-Rohlfs Strasse 16 a',
      'de': '',
    },
    'giphori0': {
      'en': '28757 Bremen',
      'de': '',
    },
    '8ja0n7qk': {
      'en': 'map',
      'de': '',
    },
    'cbwqd3mc': {
      'en': '0421-665 98 55',
      'de': '',
    },
    'm3xlepgk': {
      'en': 'Dr.  Ingrid Böhnke',
      'de': '',
    },
    'jr1crgr0': {
      'en': 'Dermatologist',
      'de': '',
    },
    't0c43but': {
      'en': 'Gerhard-Rohlfs Strasse 16 a',
      'de': '',
    },
    '3zc5qecs': {
      'en': '28757 Bremen',
      'de': '',
    },
    'yltsmcre': {
      'en': 'map',
      'de': '',
    },
    'aiihy3ks': {
      'en': '0421-66 32 82',
      'de': '',
    },
    'kyei5i8n': {
      'en': 'Dr. Hans Udo Homoth',
      'de': '',
    },
    '4zwvkfuz': {
      'en': 'ENT',
      'de': '',
    },
    'e9wr03o5': {
      'en': 'Gerhard-Rohlfs-Straße 19',
      'de': '',
    },
    'wd0lh08u': {
      'en': '28757 Bremen',
      'de': '',
    },
    'wdvddlmn': {
      'en': 'map',
      'de': '',
    },
    'dmj95rwp': {
      'en': '0421-65 00 94',
      'de': '',
    },
    'o3ondjlu': {
      'en': 'Beate Zschausch',
      'de': '',
    },
    '8qna0s76': {
      'en': 'Eye',
      'de': '',
    },
    'ksbn0mqg': {
      'en': 'Reeder-Bischoff-Str. 28',
      'de': '',
    },
    'ohi7m6nh': {
      'en': '28757 Bremen',
      'de': '',
    },
    'h5xz5gyl': {
      'en': 'map',
      'de': '',
    },
    '13egjtxv': {
      'en': '0421-66 44 71',
      'de': '',
    },
    '5d9brnpl': {
      'en': 'Specialists',
      'de': '',
    },
  },
  // Hospitals
  {
    'j79z7hgk': {
      'en': 'Nearby Hospitals',
      'de': '',
    },
    'dg1u0gsv': {
      'en': 'Hospitals',
      'de': '',
    },
  },
  // ForgotPassword
  {
    'hjv74hix': {
      'en': 'Back',
      'de': '',
    },
    'ep7q6wu1': {
      'en': 'Forgot Password',
      'de': '',
    },
    'vnlw0mrw': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'de': '',
    },
    'ng0pktpw': {
      'en': 'Your email address...',
      'de': '',
    },
    '623c0mck': {
      'en': 'Enter your email...',
      'de': '',
    },
    'e7o9bgxk': {
      'en': 'Send Link',
      'de': '',
    },
    '9tvi1vc7': {
      'en': 'Back',
      'de': '',
    },
    '5fodcdtx': {
      'en': 'Home',
      'de': '',
    },
  },
  // EditProfile
  {
    'p7vq1mu6': {
      'en': 'Name Surname',
      'de': '',
    },
    '4ushal3e': {
      'en': 'Country from',
      'de': '',
    },
    '5q0diffm': {
      'en': 'Your birth date',
      'de': '',
    },
    '2gywhbze': {
      'en': 'Your birth date',
      'de': '',
    },
    'fym9m1tz': {
      'en': 'Save Changes',
      'de': '',
    },
    'psp7goqo': {
      'en': 'Edit Profile',
      'de': '',
    },
  },
  // VerifyEmail
  {
    '5goyckpx': {
      'en': 'Verification link was sent! \nPlease check your email.',
      'de': '',
    },
    'e7fs4es4': {
      'en': 'Done!',
      'de': '',
    },
    'uejzo576': {
      'en': 'Verify E-mail!',
      'de': '',
    },
  },
  // AboutUs
  {
    'b9b4qacb': {
      'en': 'Members',
      'de': '',
    },
    'xchy0x3w': {
      'en': 'Below are a list of members of your team.',
      'de': '',
    },
    'g4kh8ug3': {
      'en': 'Ankit Lamsal',
      'de': '',
    },
    't98v40be': {
      'en': 'alamsal@constructor.university',
      'de': '',
    },
    'tg03gkry': {
      'en': 'Anushka Sharma',
      'de': '',
    },
    'p8x338qe': {
      'en': 'asharma@constructor.university',
      'de': '',
    },
    'mof2vpcr': {
      'en': 'Mariam Machaidze',
      'de': '',
    },
    'huubi837': {
      'en': 'mmachaidze@constructor.university',
      'de': '',
    },
    '7lu7bndn': {
      'en': 'About us',
      'de': '',
    },
    'uo57xgsv': {
      'en': 'Home',
      'de': '',
    },
  },
  // GenPracDescription
  {
    '217lie5l': {
      'en': 'Discription',
      'de': '',
    },
    '1d4nx409': {
      'en': '3',
      'de': '',
    },
    'ybqqn9a7': {
      'en': 'likes',
      'de': '',
    },
    'rk76b7vw': {
      'en': '8',
      'de': '',
    },
    'ucv2mbcd': {
      'en': 'Reviews',
      'de': '',
    },
    '7mhxu8i0': {
      'en': 'Reviews',
      'de': '',
    },
    '3gvyhz0x': {
      'en': 'Write a Review',
      'de': '',
    },
    'bosq8hmp': {
      'en': 'Home',
      'de': '',
    },
  },
  // GenpractiCopy
  {
    'wcshicrn': {
      'en': 'Search all articles...',
      'de': '',
    },
    '3ld38tay': {
      'en': 'Open Now',
      'de': '',
    },
    'zmkg2emi': {
      'en': 'English',
      'de': '',
    },
    'iss34423': {
      'en': 'TK',
      'de': '',
    },
    'yrjjvvo2': {
      'en': 'AOK',
      'de': '',
    },
    'te31fnq9': {
      'en': 'Location - Near to Far',
      'de': '',
    },
    'mr8xzv3g': {
      'en': 'Location  - Far to Near',
      'de': '',
    },
    'f13sjzug': {
      'en': 'Review - 1 to 5',
      'de': '',
    },
    'riol0vtm': {
      'en': 'Review - 5 to 1',
      'de': '',
    },
    'a9hzmfhp': {
      'en': 'Work experience - most to least',
      'de': '',
    },
    'ffqjvrjs': {
      'en': 'Work experience - least to most',
      'de': '',
    },
    'wk7wgpxz': {
      'en': 'Sort by',
      'de': '',
    },
    '4dccg595': {
      'en': 'Search for an item...',
      'de': '',
    },
    'vlwutco8': {
      'en': '28759 Bremen',
      'de': '',
    },
    'nb7aphr3': {
      'en': 'map',
      'de': '',
    },
    'cu15nby9': {
      'en': '28759 Bremen',
      'de': '',
    },
    'w3yzppt1': {
      'en': 'map',
      'de': '',
    },
    'r2bo88rr': {
      'en': 'General Practitioners',
      'de': '',
    },
  },
  // Miscellaneous
  {
    'xwphu1it': {
      'en': '',
      'de': '',
    },
    'fb4px5ss': {
      'en': '',
      'de': '',
    },
    'ok2at06t': {
      'en': '',
      'de': '',
    },
    'ri2vreg1': {
      'en': '',
      'de': '',
    },
    'mbv2tt2m': {
      'en': '',
      'de': '',
    },
    '3npi8dgz': {
      'en': '',
      'de': '',
    },
    'qza0kf0e': {
      'en': '',
      'de': '',
    },
    'hvbvv1nt': {
      'en': '',
      'de': '',
    },
    'qwbt7h6o': {
      'en': '',
      'de': '',
    },
    'bwvuj64j': {
      'en': '',
      'de': '',
    },
    '0b2ixxp8': {
      'en': '',
      'de': '',
    },
    'a55l4nuq': {
      'en': '',
      'de': '',
    },
    'j0mlt6v1': {
      'en': '',
      'de': '',
    },
    's98lm091': {
      'en': '',
      'de': '',
    },
    '6pzd2qwb': {
      'en': '',
      'de': '',
    },
    'lv1e6gjn': {
      'en': '',
      'de': '',
    },
    'pke45mei': {
      'en': '',
      'de': '',
    },
    'kkuaai9m': {
      'en': '',
      'de': '',
    },
    'veypeplo': {
      'en': '',
      'de': '',
    },
    'iqwjc842': {
      'en': '',
      'de': '',
    },
    '0doycr0i': {
      'en': '',
      'de': '',
    },
    'wcid2qh6': {
      'en': '',
      'de': '',
    },
    '3dlc1dsy': {
      'en': '',
      'de': '',
    },
    '863c06zj': {
      'en': '',
      'de': '',
    },
    'lc7f1j2l': {
      'en': '',
      'de': '',
    },
    'keg0pi68': {
      'en': '',
      'de': '',
    },
    'oecxzunu': {
      'en': '',
      'de': '',
    },
  },
].reduce((a, b) => a..addAll(b));

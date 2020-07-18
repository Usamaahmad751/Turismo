import 'package:flutter/foundation.dart';
class ClubCountries  with ChangeNotifier{
  final String id;
  final String country;
  final String imageUrl;
  ClubCountries({
    @required this.id,
    @required this.country,
    @required this.imageUrl,
  });
}
class ClubCountryData with ChangeNotifier{
  List<ClubCountries> _items=[
    ClubCountries(
      id: '0',
      country: 'Pakistan',
      imageUrl:'https://cdn.countryflags.com/thumbs/pakistan/flag-round-250.png',),
    ClubCountries(
      id: '1',
      country: 'USA',
      imageUrl:'https://cdn1.iconfinder.com/data/icons/rounded-flat-country-flag-collection-1/2000/us-01.png',),
    ClubCountries(
      id: '2',
      country: 'Switzerland',
      imageUrl:'https://cdn1.iconfinder.com/data/icons/rounded-flat-country-flag-collection-1/2000/ch-01.png',),
    ClubCountries(
      id: '3',
      country: 'England',
      imageUrl:'https://cdn2.iconfinder.com/data/icons/world-flags-1-1/100/Britain-512.png',),
    ClubCountries(
        id: '4',
        country: 'Turkey',
        imageUrl:'https://www.pinclipart.com/picdir/big/103-1032536_turkish-icon-png-clipart-computer-icons-social-media.png')
  ];

  List<ClubCountries> get items{
    // ignore: sdk_version_ui_as_code
    return[..._items];
  }
  ClubCountries findById(String id){
    return items.firstWhere((prod)=>prod.id==id);
  }
}

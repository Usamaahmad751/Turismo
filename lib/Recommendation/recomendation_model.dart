import 'package:flutter/foundation.dart';

class Recomend with ChangeNotifier{
  final String id;
  final String place;
  final String country;
  final String imageUrl;
  final String description;
  final String location;
  Recomend({
    @required this.id,
    @required this.place,
    @required this.country,
    @required this.imageUrl,
    @required this.description,
    @required this.location,
  });
}

class Recomends with ChangeNotifier{
  List<Recomend> _items=[
    Recomend(id: "1",
        place: "Naran-Kagan",
        country: "Pakistan",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQC13Qv7C6HeT2B1d52F8HE_T0zOQeVxkIf7g&usqp=CAU",
        description: "Naran is a medium sized town situated in upper kaghan valley which is a part of Khyber Pakhtun khwa province of Pakistan. It is one of the most beautiful part of northern areas in pakistan which is elevated 2500 meters above sea level. Its beauty captures a lot of people towards itself and thus it is a famous resort for tourists and trekkers. The weather of Naran is very cold. The ice on the moutain tops never melts, even in months of June and Jully there are glaciers and mountains are covered with snow.The road to naran valley travells alongside with River Kunhar which Starts from the glaciers of Kaghan and flow deep down in mansehra.  The local languages of Naran Valley are Hindko and Gojri but every individual overthere can speak and understand urdu. The dress is Shalwar kameez with long bottom shalwars. Most of the people are tall. Average height of males was about 5”8’ or 5”9’.The Inhabitant of Naran Valley are basically Gujars and I found them very generous and good natured. They welcome the tourists very nicely and treats them like their own friends.Their main source of income is the tourists and their occupations include tour guides, resthouse managers, shop keepers, restaurant workers, jeep drivers,  some of them also grow crops and some of them are shepherds. But their whole fortune is just gathered up in the summer season as in winters the whole area is covered up in snow and they have to move down to mansehra or some other hoter place. For that reason the prices over there are bit higher. For example the price of 100 rupee mobile card is about 107 up there. But i think that is fair enough as they this source of income just for limited timeThe Inhabitant of Naran Valley are basically Gujars and I found them very generous and good natured. They welcome the tourists very nicely and treats them like their own friends.Their main source of income is the tourists and their occupations include tour guides, resthouse managers, shop keepers, restaurant workers, jeep drivers,  some of them also grow crops and some of them are shepherds. But their whole fortune is just gathered up in the summer season as in winters the whole area is covered up in snow and they have to move down to mansehra or some other hoter place. For that reason the prices over there are bit higher. For example the price of 100 rupee mobile card is about 107 up there. But i think that is fair enough as they this source of income just for limited time.The main items of Naran valley are dry fruits and Handicrafts. One of the handicrafts you should buy are the artistically carved Walnuts and another famous thing is the Namdas, the woolen felt rugs while woolen shawls, embroidered shawls and shirts are also avalibale.These places have cottage industries running and you can find yourself having excellent bargains. Hand made articles are displaced in the shops at the main market.",
        location: "Mansehra, Khyber Pakhtunkhwa"),
    Recomend(id: "2",
        place: "The British Museum",
        country: "England",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRz2lXVHG-Dyd9hCEQvSeQupSQt3pbkf-IJ6Q&usqp=CAU",
        description: "The British Museum set up in 1753 and opened in 1759. It was the first museum in the world to be open to everyone. ... It has nearly six million visitors a year and is the third most popular art museum in the world. Some of the museum's most popular and important exhibits include the Rosetta Stone and the Elgin Marbles.The British Museum set up in 1753 and opened in 1759. It was the first museum in the world to be open to everyone. ... It has nearly six million visitors a year and is the third most popular art museum in the world. Some of the museum's most popular and important exhibits include the Rosetta Stone and the Elgin Marbles.",
        location: "Great Russell St, Bloomsbury, London WC1B 3DG, United Kingdom"),
    Recomend(id: "3",
        place: "Zürich",
        country: "Switzerland",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSN0i_xb-biG2b3sOaxBMy6pL8u0BYrkiA5Ow&usqp=CAU",
        description: "Zürich, largest city of Switzerland and capital of the canton of Zürich. Located in an Alpine setting at the northwestern end of Lake Zürich, this financial, cultural, and industrial centre stretches out between two forested chains of hills, about 40 miles (60 km) from the northern foothills of the Alps. Two rivers, the Limmat and Sihl, run through the city. Zürich’s western and northeastern limitations are formed by the Albis mountains (which include the 2,850-foot [870-metre] Üetliberg, considered the “top” of Zürich, with an idyllic view of the lake, mountains, and city) and by Zürichberg, a wooded hilly area. Area city, 34 square miles (88 square km). Pop. (2010) 372,857.\n\n\nHistory\n       The first inhabitants of the region were the prehistoric peoples whose hut dwellings rose from pile foundations driven into the shores of the lake. The Celtic Helvetii founded a community on the right bank of the Limmat River; when the Romans conquered this area about 58 BCE, they made the settlement, which they called Turicum, a customs post. Under Roman rule, Zürich grew into a small army stronghold with an adjacent vicus, or Roman village. After the collapse of Rome, the community fell first to the Alemanni, a Germanic people from the north, and later to the Franks, who made it a royal residence.The community began to flourish as traders settled in the town and took advantage of its position straddling European trade routes. In 1218 Zürich became an imperial free city, and in 1351 it joined the Swiss Confederation, a coalition of cantons that were opposed to the Austrian Habsburgs. In 1336 the citizens accepted a constitution that, based democratically on the guild system, balanced the power of the various crafts, the trades, and the nobility. As the guilds became more powerful, the city was able to purchase its freedom from the emperor in 1400, and tax obligations were lifted. Zürich became embroiled in conflicts with neighbouring territories, but economic growth continued relatively unimpeded. Staging repeated successful forays into the surrounding countryside, the city began controlling an even larger part of it; moreover, Zürich profited from being conveniently located on both the southbound trade route, centred on the St. Gotthard Pass, and the east-west route from the Rhône River to the Danube.In 1519 Huldrych Zwingli, a priest at the Grossmünster (“Great Minster”), began to preach a series of sermons that initiated the Swiss Protestant Reformation and transformed the character of Zürich itself. It turned into an industrious puritanical city maintaining lively business relations and an exchange of ideas with other Protestant cities, notably Bern and Geneva. During the Counter-Reformation, the city offered asylum to many refugees from northern Italy and France, and the new residents further stimulated cultural and economic growth.",
        location: "City in Switzerland"),
    Recomend(id: "4",
        place: "İstanbul",
        country: "Turkey",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQ9V3QDFl-_Xr88xjNBsGFyl0JrtxQVXWUjA&usqp=CAU",
        description: "Istanbul is the largest city of Turkey. It is the financial capital of Turkey, making it the busiest city in Turkey. It is located in the northwestern side of Turkey. In the Marmara region having a total area of 5,343 square kilometers (2,063 sq mi). The Sea of Marmara is connected to the Black Sea by the Bosphorus strait, which divides Istanbul into European that is the Thracian side, which is the economic and historic side, and Antolian side that is the Asian side. It has a population of 13.5 million due to which it is listed in one of the largest cities in the world for population in city limits. In the year 2008 in the terms of gross domestic product Istanbul was ranked 34th because of its GDP being US\$182 Billion. 27 percent of Turkeys GDP is contributed by Istanbul. Two- fifths of the Turkish economy of the nations tax revenue, is contributed by Istanbul.",
        location: "City in Turkey"),
    Recomend(id: "5",
        place: "Echo Park Lake",
        country: "USA",
        imageUrl: "https://www.tripsavvy.com/thmb/kN3PyHPETDQloqQkQ1p-y6_0f9s=/1000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/downtown-at-sunset-seen-from-lake-echo-park-536175737-57acec025f9b58b5c216611d.jpg",
        description: "This is one of the most surprising views of the Los Angeles skyline to many visitors. The city has such a reputation for congestion and overbuilding, but you can get a view of the skyline with a tree-lined lake in the foreground."
        "Echo Park Lake is about two miles northwest of downtown Los Angeles. The lake was originally built in the 1860s as a drinking water reservoir. Nowadays, it's in a city park at 751 Echo Park Avenue.",
        location: "Echo Park Lake 751 Echo Park Ave Los Angeles, CA Community Services - MapQuest"),
  ];

  List<Recomend> get items{
    return[..._items];
  }
  Recomend findById(String id){
    return items.firstWhere((prod)=>prod.id==id);
  }
}
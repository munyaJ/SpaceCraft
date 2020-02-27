

import 'package:colorize/colorize.dart';

enum Color {red, orange, yellow, green, blue, purple, brown, magenta, tan, cyan, olive, maroon, navy, aquamarine, turquoise, silver, lime, teal, indigo, violet, pink, black, white, grey}

class Spacecraft {
  String name;
  DateTime launchDate;
  Color color;
  static String description;
  

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(String name1, DateTime launchDate1, Color color1, String description1) {
    // Initialization code goes here.
    name = name1;
    launchDate = launchDate1;
    color = color1;
    description = description1;
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name, String description) : this(name, null, Color.magenta, description);


  int get launchYear =>
      launchDate?.year; // read-only non-final property

  // Method.
  void describe([String specialMessage]) {
    print('');

      Colorize displayText = Colorize('Spacecraft: $name');
      if (color == Color.blue) {
        displayText.blue();
        displayText.bgGreen();
      }
      else if (color == Color.red) {
        displayText.red();
        displayText.bgGreen();
      }
      else if (color == Color.magenta) {
        displayText.magenta();
        displayText.bgGreen();
      }

    print(displayText);
    print(typesOfColor(color));
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
    print(description);
    if (specialMessage!=null) {
      print(specialMessage);
    }
  }
} 

main() {

  //Index:   0  1  2
  List<Spacecraft> spacecraftsList = List();
  spacecraftsList.add(new Spacecraft ('Voyager I', new DateTime(1977, 9, 5), Color.blue, 'Description: Voyager 1 is a space probe launched by NASA on September 5, 1977. Part of the Voyager program to study the outer Solar System.'));
  spacecraftsList[0].describe();

  spacecraftsList.add(new Spacecraft('Mars Rover', new DateTime(2011, 11, 27, 7, 2), Color.red, "Description: Mars rover is a motor vehicle that travels across the surface of the planet Mars upon arrival."));
  spacecraftsList[1].describe();

  spacecraftsList.add(new Spacecraft.unlaunched('Voyager III', 'Description: Voyager 3 would have been Mariner 13, before the name of the mission was changed.'));
  spacecraftsList[2].describe();
  
}

String typesOfColor(Color color) {
  switch(color) {
    case Color.aquamarine :
    return "color: aquamarine";
    case Color.black :
    return "color: black";
    case Color.blue :
    return "color: blue";
    case Color.brown :
    return "color: brown";
    case Color.cyan :
    return "color: cyan";
    case Color.green :
    return "color: green";
    case Color.grey :
    return "color: grey";
    case Color.indigo :
    return "color: indigo";
    case Color.lime :
    return "color: lime";
    case Color.magenta :
    return "color: megenta";
    case Color.maroon :
    return "color: maroon";
    case Color.navy :
    return "color: navy";
    case Color.olive :
    return "color: olive";
    case Color.orange :
    return "color: orange";
    case Color.pink :
    return "color: pink";
    case Color.purple :
    return "color: purple";
    case Color.red :
    return "color: red";
    case Color.silver :
    return "color: silver";
    case Color.tan :
    return "color: tan";
    case Color.teal :
    return "color: teal";
    case Color.turquoise :
    return "color: turquoise";
    case Color.violet :
    return "color: violet";
    case Color.white :
    return "color: white";
    case Color.yellow :
    return "color: yellow";
  }
}
import 'package:colorize/colorize.dart';

enum Color {red, orange, yellow, green, blue, purple, brown, magenta, tan, cyan, olive, maroon, navy, aquamarine, turquoise, silver, lime, teal, indigo, violet, pink, black, white, grey}

class Spacecraft {
  String name;
  DateTime launchDate;
  Color color;
  

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(String name1, DateTime launchDate1, Color color1) {
    // Initialization code goes here.
    name = name1;
    launchDate = launchDate1;
    color = color1;
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null, Color.magenta);


  int get launchYear =>
      launchDate?.year; // read-only non-final property

  // Method.
  void describe([String specialMessage]) {
    print('');

      Colorize displayText = Colorize('Spacecraft: $name');
      if (color == Color.blue) {
        displayText.blue();
      }
      else if (color == Color.red) {
        displayText.red();
      }
      else if (color == Color.magenta) {
        displayText.magenta();
      }

    print(displayText);
    //print('color: $color');
    print(typesOfColor(color));
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
    if (specialMessage!=null) {
      print(specialMessage);
    }
  }
} 

main() {
  Spacecraft voyager = new Spacecraft('Voyager I', new DateTime(1977, 9, 5), Color.blue);
  voyager.describe('Description: Voyager 1 is a space probe launched by NASA on September 5, 1977. Part of the Voyager program to study the outer Solar System.');

  Spacecraft marsRover = new Spacecraft('Mars Rover', new DateTime(2011, 11, 27, 7, 2), Color.red);
  marsRover.describe("Description: Mars rover is a motor vehicle that travels across the surface of the planet Mars upon arrival.");

  var voyager3 = new Spacecraft.unlaunched('Voyager III');
  voyager3.describe("Description: Voyager 3 would have been Mariner 13, before the name of the mission was changed.");


//String color = typesOfColor(Color.grey);
    //print(color);

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
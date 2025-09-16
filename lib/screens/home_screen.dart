import 'package:flutter/material.dart';
import 'package:mmt_clone/widgets/search_tab.dart';
import 'package:mmt_clone/widgets/offer_carousel.dart';
import 'package:mmt_clone/widgets/destination_card.dart';
import 'package:mmt_clone/screens/hotels_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List destinations = [
    {'name': 'Goa', 'image': 'assets/images/goa.jpeg', 'price': '₹ 6,999'},
    {'name': 'Dubai', 'image': 'assets/images/dubai.jpeg', 'price': '₹ 19,999'},
    {
      'name': 'Singapore',
      'image': 'assets/images/singapore.jpeg',
      'price': '₹ 17,499',
    },
  ];

  final List where2GoCards = [
    {
      'image': 'assets/images/bali.jpg',
      'title': 'Bali',
      'subtitle': 'Popular for beaches and nightlife',
    },
    {
      'image': 'assets/images/saudi.jpeg',
      'title': 'Saudi',
      'subtitle': 'Marvel at the Blend of Past & Present in Spectacular',
    },
    {
      'image': 'assets/images/pool.jpeg',
      'title': 'Pool Edition: Your License to Chill',
      'subtitle': "World's Best Hotels with Luxe Infinity Pools",
    },
    {
      'image': 'assets/images/fort.jpeg',
      'title': 'Alwar',
      'subtitle': "Neemrana's - Hill Fort - Kesroli",
    },
    {
      'image': 'assets/images/varanasi.jpeg',
      'title': 'Varanasi',
      'subtitle': "Uttar Pradesh's Spiritual Capital",
    },
    {
      'image': 'assets/images/jaipur.jpg',
      'title': 'Jaipur',
      'subtitle': 'The capital and the largest city of Rajasthan',
    },
    {
      'image': 'assets/images/anupshahr.jpg',
      'title': 'The Fort Unchagaon by Aspen',
      'subtitle': 'Anupshahr',
    },
    {
      'image': 'assets/images/bhutan.jpeg',
      'title': 'Bhutan',
      'subtitle': 'Uncover the Hidden wonder of the land',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/images/Makemytrip_logo.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 8),
              Text("MakeMyTrip", style: TextStyle(color: Colors.white)),
            ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.notifications_none), onPressed: () {}),
            IconButton(icon: Icon(Icons.person_outline), onPressed: () {}),
          ],
          backgroundColor: Colors.blue,
          elevation: 3,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: TabBar(
                  labelColor: const Color.fromARGB(255, 3, 36, 63),
                  indicatorColor: const Color.fromARGB(255, 1, 23, 41),
                  tabs: [
                    Tab(text: 'Flights', icon: Icon(Icons.flight)),
                    Tab(text: 'Hotels', icon: Icon(Icons.hotel)),
                    Tab(text: 'Buses', icon: Icon(Icons.directions_bus)),
                    Tab(text: 'Cabs', icon: Icon(Icons.local_taxi)),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: TabBarView(
                  children: [
                    SearchTab(type: 'Flights'),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => HotelsScreen()),
                      ),
                      child: SearchTab(type: 'Hotels'),
                    ),
                    SearchTab(type: 'Buses'),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => HotelsScreen()),
                      ),
                      child: SearchTab(type: 'Cabs'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),
              OfferCarousel(),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.2,
                  children: [
                    ShortcutButton('assets/images/flight.png', "Flights"),
                    ShortcutButton('assets/images/hotel.png', "Hotels"),
                    ShortcutButton('assets/images/train.png', "Trains"),
                    ShortcutButton('assets/images/holidays.jpeg', "Holidays"),
                    ShortcutButton('assets/images/cab.png', "Cabs"),
                    ShortcutButton('assets/images/bus.png', "Buses"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 10.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "Where 2 Go",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        /* Handle View All */
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: where2GoCards.length,
                itemBuilder: (context, index) {
                  final card = where2GoCards[index];
                  return Where2GoCard(
                    image: card['image'],
                    title: card['title'],
                    subtitle: card['subtitle'],
                  );
                },
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Popular Destinations",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: destinations
                      .map(
                        (item) => DestinationCard(
                          name: item['name'],
                          imagePath: item['image'],
                          price: item['price'],
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12,
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text("Login / Create Account"),
                    ),
                    SizedBox(height: 8),
                    OutlinedButton(child: Text("Help"), onPressed: () {}),
                    SizedBox(height: 8),
                    OutlinedButton(child: Text("About Us"), onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShortcutButton extends StatelessWidget {
  final String imagePath;
  final String label;
  const ShortcutButton(this.imagePath, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 13)),
      ],
    );
  }
}

class Where2GoCard extends StatelessWidget {
  final String image, title, subtitle;
  const Where2GoCard({
    required this.image,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: double.infinity,
            height: 160,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 12,
            bottom: 18,
            right: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(blurRadius: 3, color: Colors.black)],
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    shadows: [Shadow(blurRadius: 2, color: Colors.black)],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

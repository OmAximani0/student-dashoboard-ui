import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the size of the current device screen
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Design
          Container(
            height: size.height * 0.3, // Use only 30% of device height
            decoration: _backgroundDecoration(),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: _appBar(),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        ServiceCard(
                          title: "Personal Data",
                          image:
                              "https://cdn-icons-png.flaticon.com/512/1904/1904425.png",
                        ),
                        ServiceCard(
                          title: "Course Schedule",
                          image:
                              "https://cdn-icons-png.flaticon.com/512/1904/1904565.png",
                        ),
                        ServiceCard(
                          title: "Study Result",
                          image:
                              "https://cdn-icons-png.flaticon.com/512/1904/1904527.png",
                        ),
                        ServiceCard(
                          title: "Attendance Recap",
                          image:
                              "https://cdn-icons-png.flaticon.com/512/1904/1904437.png",
                        ),
                        ServiceCard(
                          title: "Course Booking",
                          image:
                              "https://cdn-icons-png.flaticon.com/512/1904/1904235.png",
                        ),
                        ServiceCard(
                          title: "Course Plan",
                          image:
                              "https://cdn-icons-png.flaticon.com/512/1904/1904221.png",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _appBar() {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 64,
      margin: const EdgeInsets.only(bottom: 32),
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Anthony Castillo',
                style: TextStyle(
                  fontFamily: "Montserrat Medium",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                '41546527',
                style: TextStyle(
                  fontFamily: "Montserrat Regular",
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  BoxDecoration _backgroundDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xff17D577),
          Color(0xff01BAEF),
        ],
      ),
      borderRadius: BorderRadius.vertical(
        bottom: Radius.elliptical(256, 128),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String image;
  final String title;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  ServiceCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            height: 128,
            image: NetworkImage(
              image,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Montserrat Regular",
              fontSize: 14,
              color: Color.fromRGBO(63, 63, 63, 1),
            ),
          ),
        ],
      ),
    );
  }
}

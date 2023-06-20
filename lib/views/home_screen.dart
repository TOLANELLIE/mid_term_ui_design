import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/widget/Recommend.dart';
import 'package:mid_term_ui_design/widget/big_text.dart';
import 'package:mid_term_ui_design/widget/city_widget.dart';
import 'package:mid_term_ui_design/widget/neaby_widget.dart';
import 'package:mid_term_ui_design/widget/popular_widget.dart';
import 'package:mid_term_ui_design/widget/search_bar.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routename = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    //
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Avatar
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Image.asset('assets/man.png'),
                          ),

                          //
                          SizedBox(width: width * 0.05),

                          //
                          Container(
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //
                                Smalltext(
                                    text: 'Hello, Tola',
                                    color: Colors.grey.shade500),

                                //
                                const Bigtext(
                                  text: 'Let\'s Find Best Hotel',
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //notification
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      child: Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              PhosphorIcons.regular.bell,
                              size: 24,
                            ),
                          ),

                          //Reed Dot
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Icon(
                              PhosphorIcons.bold.dot,
                              size: 35,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //
              SizedBox(height: height * 0.03),

              //search bar
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: MySearchBar(
                  hint: 'Search for hotel',
                  icon: PhosphorIcons.regular.magnifyingGlass,
                ),
              ),

              //
              SizedBox(height: height * 0.05),

              //explore city
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Bigtext(
                  text: 'Explore city',
                  color: Colors.black,
                  size: 20,
                ),
              ),

              //
              SizedBox(height: height * 0.01),

              //city
              Container(
                color: Colors.transparent,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Nearby(),

                          //
                          SizedBox(width: width * 0.05),

                          //
                          const City(
                            image:
                                'https://a.cdn-hotels.com/gdcs/production66/d41/07b19af0-8ab2-492e-97af-1ba8c6cac50a.jpg',
                            cityName: 'Phnom Penh',
                          ),

                          //
                          SizedBox(width: width * 0.05),

                          //
                          const City(
                            image:
                                'https://www.holidify.com/images/bgImages/KAMPOT.jpg',
                            cityName: 'Kom Pot',
                          ),

                          //
                          SizedBox(width: width * 0.05),

                          //
                          const City(
                            image:
                                'https://www.sovrinmagazine.com/assets/upload/thumbnail/1569_1633150005.jpeg',
                            cityName: 'Sihanuk',
                          ),

                          //
                          SizedBox(width: width * 0.05),

                          //
                          const City(
                            image:
                                'https://topmekongcruises.com/uploads/Battambang_4.jpg',
                            cityName: 'Battambong',
                          ),

                          //
                          SizedBox(width: width * 0.05),

                          //
                          const City(
                            image:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyQNGI-ZuFc3cIwwBsb8SPF8eLDzu_-nMeMA&usqp=CAU',
                            cityName: 'SeimReap',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //
              SizedBox(height: height * 0.03),

              //recommend
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Bigtext(
                  text: 'Recommend for your next trip',
                  color: Colors.black,
                  size: 20,
                ),
              ),

              //
              SizedBox(height: height * 0.01),

              //Recommend Hotel
              Container(
                color: Colors.transparent,
                height: 265,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(2),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          const RecommendTrip(
                              image:
                                  'https://media-cdn.tripadvisor.com/media/photo-s/19/55/4b/d4/swimming-pool.jpg',
                              title: 'Sokha Hotel Phnom Penh',
                              subtitle: '100 kilometres away',
                              price: '\$100 per Night'),
                          //
                          SizedBox(width: width * 0.05),
                          //
                          const RecommendTrip(
                              image:
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ed/3f/1e/kampot-sweet-boutique.jpg?w=1200&h=-1&s=1',
                              title: 'Kampot Sweet Boutique',
                              subtitle: '160 kilometres away',
                              price: '\$50 per Night'),
                          //
                          SizedBox(width: width * 0.05),
                          //
                          const RecommendTrip(
                              image:
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/a1/53/24/sara-resort.jpg?w=1200&h=-1&s=1',
                              title: 'Sara Resort',
                              subtitle: '309 kilometres away',
                              price: '\$100 per Night'),
                          //
                          SizedBox(width: width * 0.05),
                          //
                          const RecommendTrip(
                              image:
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/fe/bd/f2/au-cabaret-vert.jpg?w=1200&h=-1&s=1',
                              title: 'Au Cabaret Vert',
                              subtitle: '500 kilometres away',
                              price: '\$100 per Night'),
                          //
                          SizedBox(width: width * 0.05),
                          //
                          const RecommendTrip(
                              image:
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/28/d7/22/saem-siemreap-hotel.jpg?w=1200&h=-1&s=1',
                              title: 'Saem Siemreap Hotel',
                              subtitle: '400 kilometres away',
                              price: '\$100 per Night'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //
              SizedBox(height: height * 0.02),

              //Popular Hotel
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    const Bigtext(
                      text: 'Popular Hotel',
                      color: Colors.black,
                      size: 20,
                    ),

                    //
                    Smalltext(text: 'See more', color: Colors.grey.shade500),
                  ],
                ),
              ),

              //
              SizedBox(height: height * 0.02),

              //
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: PopularWidget(
                  image:
                      'https://media-cdn.tripadvisor.com/media/photo-s/19/55/4b/d4/swimming-pool.jpg',
                  title: 'Nagar Valley Hotel Ltd.',
                  distance: '14.3 km',
                  price: 'Start from 60\$ per Night',
                  rate: '5.0',
                ),
              ),
              //
              SizedBox(height: height * 0.02),

              //
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: PopularWidget(
                  image:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ed/3f/1e/kampot-sweet-boutique.jpg?w=1200&h=-1&s=1',
                  title: 'Richmond Hotel',
                  distance: '16.3 km',
                  price: 'Start from 60\$ per Night',
                  rate: '4.8',
                ),
              ),
              //
              SizedBox(height: height * 0.02),

              //
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: PopularWidget(
                  image:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/a1/53/24/sara-resort.jpg?w=1200&h=-1&s=1',
                  title: 'Hotel Sarina',
                  distance: '20.3 km',
                  price: 'Start from 60\$ per Night',
                  rate: '4.9',
                ),
              ),

              SizedBox(height: height * 0.10),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: const ButtomNavigation(),
    );
  }
}

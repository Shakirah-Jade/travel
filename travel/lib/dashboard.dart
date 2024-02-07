import 'package:flutter/material.dart';
import 'package:travel/detailspage.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Color(0xFFFD4F99),
              ),
              child: Center(
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'HOME',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Color(0xFF353535)),
              child: Center(
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height - 150.0,
            child: ListView(
              children: [
                _buildListItem('assets/tokyo.jpg', 'Japan',
                    'Explore the land of the rising sun'),
                _buildListItem('assets/canada.jpg', 'Canada',
                    'Explore the vast forests of canada'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildListItem(String imgpath, String country, String description) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage(imgpath),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.darken))),
          ),
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    country,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ///////////////////
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                imgpath: imgpath,
                                title: country,
                              )));
                    },
                    child: Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'Explore now',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFD4F99)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

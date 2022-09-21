import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/models/travel_model.dart';
import 'package:untitled/ui/widgets/destination_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Travel App', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Image.asset('assets/images/travel1.jpg', fit: BoxFit.cover,),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 60,

              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: travel.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                                travel[index].travelCategory,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12))),
                      ),
                    );

              }),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Popular Destinations', style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold),),
            ),
            Container(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(10.0),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

              ),
                itemCount: travel.length,
                itemBuilder: (BuildContext context, int index) =>
                    TravelWidget(
                        location: travel[index].location,
                        locationImage: travel[index].locationImage
                    )

              ),
            )
          ],
        ),
      ),
    );
  }
}

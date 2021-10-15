import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDonation extends StatefulWidget {
  _AddDonationState createState() => _AddDonationState();
}

class _AddDonationState extends State<AddDonation> {

  Widget _buildImage() {
    return Icon(Icons.add_a_photo_rounded, size: 80);
  }

  Widget _buildImage3() {
    return Image(
      image: AssetImage('assets/images/donate.jpg'),

    );
  }

  Widget _buildImage2() {
    return Container(
      height: 360,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(40),
          bottomRight: const Radius.circular(40),
        ),
        //shape: BoxShape.,
        image: DecorationImage(
            image: AssetImage('assets/images/donate.jpg'), fit: BoxFit.fill),
      ),
    );
  }

  Widget _buildFood()
  {
    return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, top: 400),
        child: Container(
          width: 180.0,
          height: 140.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  spreadRadius: 4,
                )
              ],
              image: new DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage("assets/images/food.jpg"),
              )),
        ),
      ),
      
    ],
  );
  }

  Widget _buildCloth()
  {
    return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, top: 600),
        child: Container(
          width: 180.0,
          height: 140.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  spreadRadius: 4,
                )
              ],
              image: new DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage("assets/images/other3.jpg"),
              )),
        ),
      ),
      
    ],
  );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(500))),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 25), child: _buildImage3()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildClothes() {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(40),
          bottomRight: const Radius.circular(40),
        ),
        //shape: BoxShape.,
        image: DecorationImage(
            image: AssetImage('assets/images/donate.jpg'), fit: BoxFit.fill),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 360,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(40),
                      bottomRight: const Radius.circular(40),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [_buildImage2()],
                ),
              ),
            ),
            Row(
              children: [
                _buildFood(),
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Text('Food Items ', style: TextStyle(
                    fontSize: 20,
                  )),
                )
              ],
            ),
            Row(
              children: [
                _buildCloth(),
                Padding(
                  padding: const EdgeInsets.only(top: 600),
                  child: Text('Other Items ', style: TextStyle(
                    fontSize: 20,
                  )),
                )
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}

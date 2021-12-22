
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_eco/components/body.dart';
import 'package:my_eco/detalis/Detalis_Screen.dart';
import 'package:my_eco/modles/product.dart';
import 'package:my_eco/components/item_card.dart';


import '../constants.dart';

class HomeScreen extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: Column(
            children: [
              Card(
                color: Colors.white70,
                child: Column(
                  children: [
                    Container(
                      height: 95,
                      width: double.infinity,
                      child: Icon(
                        Icons.account_circle,
                        size: 60,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      child: Text(
                        'ANIK',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaultPaddin /4),
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  size: 35,
                ),
                title: Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.sixty_fps_select_outlined,
                  size: 35,
                ),
                title: Text(
                  'Shop',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 35,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
      backgroundColor: Colors.greenAccent,
        elevation: 0,

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Women',style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
            ),
            Categories(),

            Expanded(
              child:GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75),
                itemBuilder:
                    (context,index) => ItemCard(product:products[index],
                        press: ()=> Navigator.push(context, MaterialPageRoute
                          (builder: (context)=> DetalisScreen(product: products[index],
                        ),
                        ),
                        ),
                    ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}





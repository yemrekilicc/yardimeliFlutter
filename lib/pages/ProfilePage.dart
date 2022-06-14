import 'package:flutter/material.dart';
import 'package:yardimeliflutter/pages/MyCampaignsPage.dart';

import 'addbalancePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/17),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:32.0 , bottom: 16.0, left: 16, right: 16),
                      child: Text("Kullanıcı Adı",style: TextStyle(fontSize: 25,color: Color(0xff7f0000),fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: RichText(

                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.account_circle, size: 25, color: Color(0xff7f0000)),
                              ),
                              TextSpan(
                                  text: " Ad Soyad",
                                  style: TextStyle(fontSize: 25,color: Color(0xff7f0000),fontWeight: FontWeight.bold,)
                              ),
                            ],
                          ),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: RichText(

                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.mail, size: 22, color: Color(0xff7f0000)),
                            ),
                            TextSpan(
                              text: " Email",
                              style: TextStyle(fontSize: 25,color: Color(0xff7f0000),fontWeight: FontWeight.bold,)
                            ),
                          ],
                        ),
                      )
                    ),
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: RichText(

                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.location_city, size: 25, color: Color(0xff7f0000)),
                              ),
                              TextSpan(
                                  text: " Şehir",
                                  style: TextStyle(fontSize: 25,color: Color(0xff7f0000),fontWeight: FontWeight.bold,)
                              ),
                            ],
                          ),
                        )
                    ),

                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: RichText(

                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.account_balance_wallet, size: 22, color: Color(0xff7f0000)),
                              ),
                              TextSpan(
                                  text: " Bakiye",
                                  style: TextStyle(fontSize: 25,color: Color(0xff7f0000),fontWeight: FontWeight.bold,)
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => addbalacePage(),
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 300),
                          ),
                        );

                      },
                      child: Text('Bakiye Yükle'),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _myCampaignsPage(context);
                      },
                      child: Text('Kampanyalarım'),

                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }

  void _myCampaignsPage(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return const MyCampaignsPage();
    },));
  }
}

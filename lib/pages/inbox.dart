import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: Text('Kuliner'),
          leading: IconButton(
            icon: Icon(Icons.restaurant, color: Colors.white), 
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: (){},
            )
          ],
        ),
      body: ListView(
        children: <Widget>[ 
          Promo(),   
          ListKuliner()
          // Divider(),   
        ],
      ),
    );
  }
}



class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Kuliner Rekomendasi', 
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){},
          ),
        ),
        Container(
          width: double.infinity,
          height: 130.0, 
          padding: EdgeInsets.only(left: 8.0),        
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[             
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/1.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/2.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/3.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/4.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/5.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(left: 10.0),
                child: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListKuliner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Kuliner Terdekat', 
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){},
          ),
        ), 
        Container(
          width: double.infinity,
          height: 290.0, 
          padding: EdgeInsets.only(left: 8.0),        
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[             
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/1.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 15.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/2.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 15.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/3.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 15.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/4.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 15.0),
                child: null,
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/kuliner/5.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 15.0),
                child: null,
              ),
            ],
          ),
        ),               
      ],
    );
  }
}
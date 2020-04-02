import 'package:flutter/material.dart';

class Simpan extends StatefulWidget {
  @override
  _SimpanState createState() => _SimpanState();
}

class _SimpanState extends State<Simpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: Text('Wisata'),
          leading: IconButton(
            icon: Icon(Icons.card_travel, color: Colors.white), 
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
          ListWisata(),   
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
            'Wisata Rekomendasi', 
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
                    image: AssetImage('images/wisata/sleman.jpg'),
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
                    image: AssetImage('images/wisata/mangunan.jpg'),
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
                    image: AssetImage('images/wisata/tugu.jpg'),
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
                    image: AssetImage('images/wisata/kulonprogo.jpg'),
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
                    image: AssetImage('images/wisata/bantul.jpg'),
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

class ListWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Wisata Terdekat', 
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
                    image: AssetImage('images/wisata/6.jpg'),
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
                    image: AssetImage('images/wisata/sleman.jpg'),
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
                    image: AssetImage('images/wisata/mangunan.jpg'),
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
                    image: AssetImage('images/wisata/kulonprogo.jpg'),
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
                    image: AssetImage('images/wisata/bantul.jpg'),
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
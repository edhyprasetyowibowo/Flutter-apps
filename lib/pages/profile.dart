import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Text("Akun Saya"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Akun(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://yt3.ggpht.com/a-/AOh14Gg10Ed4sCfncA5stnZdOqVOldWAph_1xVXivSY9=s88-c-k-c0xffffffff-no-rj-mo"
              )
            )
          ),
        ),
        title: Text(
          'Edhy Prasetyo Wibowo', 
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.album),
                label: Text('305 Poin'),
                onPressed: (){},
                color: Colors.grey[200],
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              RaisedButton(
                child: Text('TripPay'),
                onPressed: (){},
                color: Colors.grey[200],
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
              )
            ],
          ),
      ),
    );
  }
}


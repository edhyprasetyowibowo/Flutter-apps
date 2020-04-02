import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: Text('Trip.ID'),
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
          
          // Akun(),
          Divider(),
          MenuUtama(), 
          MenuTambahan(),   
          Promo(),      
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

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Aktifitas & Rekreasi',
    icon: Icons.local_play,
    colorBox: Colors.green[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Kuliner',
    icon: Icons.local_dining,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiker Kereta Api',
    icon: Icons.train,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & travel',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Transportasi Bandara',
    icon: Icons.local_taxi,
    colorBox: Colors.blue[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rental Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.green[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.black,
  )
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(          
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: colorBox,
              shape: BoxShape.circle
            ),
            child: Icon(icon, color: iconColor,),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.0),
            child: Text(title, style: TextStyle(fontSize: 12.0), textAlign: TextAlign.center,)
          )        
        ],
      ),
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(
    title: 'Tagihan & Isi Ulang',
    icon: Icons.receipt
  ),
  MenuTambahanItem(
    title: 'Internet Luar Negeri',
    icon: Icons.data_usage
  ),
  MenuTambahanItem(
    title: 'Bisokop',
    icon: Icons.movie
  ),
  MenuTambahanItem(
    title: 'PayLater',
    icon: Icons.payment
  ),
  MenuTambahanItem(
    title: 'Pulsa & Paket Internet',
    icon: Icons.signal_cellular_4_bar
  ),
  MenuTambahanItem(
    title: 'Online Check-In',
    icon: Icons.airplanemode_inactive
  ),
  MenuTambahanItem(
    title: 'Notifikasi Harga',
    icon: Icons.notifications
  ),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
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
            'Promo Saat ini', 
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0, 
          padding: EdgeInsets.only(left: 8.0),        
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blue[800]
                    ]
                  ),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0, 20.0),
                          bottomRight: Radius.elliptical(150.0, 150.0)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                        child: Text(
                          '%', 
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      'Lihat Semua \nPromo',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),                      
                    ),
                  ],
                ),
              ),
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/promo.jpeg')
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
                    image: AssetImage('images/promo.jpeg')
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
                    image: AssetImage('images/promo.jpeg')
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
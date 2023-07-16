import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
   @override
  _DashboardState createState() => _DashboardState();
}

class background extends StatelessWidget {
  const background ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.png'),
              fit: BoxFit.cover,
            ),
          ),
    );
  }
}

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    // Icon(Icons.assignment),
                    // Text(
                    //   'Pengumpulan data free API',
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           'Pelaksanaan Mata Kuliah AI hari Selasa Diliburkan' ,
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                          ListTile(
                            leading: Icon(Icons.volume_up_sharp),
                            title: Text(
                              'Artificial Intelegence',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text(
                            'Selasa, 11-07-2023 10.00',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    // Icon(Icons.assignment),
                    // Text(
                    //   'Pengumpulan data free API',
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           'Uji public API menggunakan Postman dengan metode CRUD' ,
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                          ListTile(
                            leading: Icon(Icons.task),
                            title: Text(
                              'Application Programming Interface',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text(
                            'Due : Senin, 17-07-2023 23.59',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    // Icon(Icons.assignment),
                    // Text(
                    //   'Pengumpulan data free API',
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           'Pelaksanaan Mata Kuliah Network Security' ,
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                          ListTile(
                            leading: Icon(Icons.volume_up),
                            title: Text(
                              'Network Security',
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text(
                            'Sabtu, 22-07-2023 10.00',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    // Icon(Icons.assignment),
                    // Text(
                    //   'Pengumpulan data free API',
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           'Nilai UAS Semester 4' ,
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                          ListTile(
                            leading: Icon(Icons.volume_up_sharp),
                            title: Text(
                              'Device Protocol',
                              style: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text(
                            'Rabu, 19-07-2023 10.00',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Jadwal extends StatelessWidget {
  const Jadwal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 40,),
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/images/img.png'),
              ),
              SizedBox(height: 16),
              Text(
                'Hengki Hermansyah',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '2142405',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('hengki@gmail.com'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+62 123-456-7890'),
                ),
              ),
      ],
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Tugas(),
      ],
    );
  }
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Tugas(),
    Jadwal() // Menambahkan widget Jadwal di sini
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('dasd'),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Halaman',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto'
                ),
              ),
              TextSpan(
                text: ' ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto'
                ),
              ),
              TextSpan(
                text: 'Dashboard',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'Roboto'
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 4,
      ),

      body: Stack(
        children:[
          background(),
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Tugas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 8, 112, 144),
        onTap: _onItemTapped,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

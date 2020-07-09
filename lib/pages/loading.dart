import 'package:flutter/material.dart';
import 'package:theninjaclock/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  void setupWorldTime() async
  {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 150 , 0, 0),
          child: Column(
            children: [
              Text('Ninja Clock',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 60.0,
                color: Colors.white,
              ),
              ),
              SizedBox(height: 40,),
              SpinKitRing(
                color: Colors.white,
                size: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

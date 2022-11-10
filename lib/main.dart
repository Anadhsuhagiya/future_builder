import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(debugShowCheckedModeBanner: false,home: future_builder(),));
}


class future_builder extends StatefulWidget {
  const future_builder({Key? key}) : super(key: key);

  @override
  State<future_builder> createState() => _future_builderState();
}

class _future_builderState extends State<future_builder> {

  Future<List> Movies()
  async {
     await Future.delayed(Duration(seconds: 5));

     List Movies = ['Movie 1','Movie 2','Movie 3','Movie 4','Movie 5','Movie 6','Movie 7','Movie 8','Movie 9','Movie 10'];

     return Movies;
  }

  Future<List> WebSeries()
  async {
    await Future.delayed(Duration(seconds: 10));

    List WebSeries = ['Series 1','Series 2','Series 3','Series 4','Series 5','Series 6','Series 7','Series 8','Series 9','Series 10'];

    return WebSeries;
  }

  Future<List> Seriel()
  async {
    await Future.delayed(Duration(seconds: 3));

    List Seriel = ['Episode 1','Episode 2','Episode 3','Episode 4','Episode 5','Episode 6','Episode 7','Episode 8','Episode 9','Episode 10'];

    return Seriel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fututre_Builder"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.black),
            child: FutureBuilder(future: Movies(),builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done)
              {
                if(snapshot.hasData)
                {
                  List? Movies = snapshot.data as List?;

                  return ListView.builder(scrollDirection: Axis.horizontal,itemCount: Movies?.length,itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 90,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.white),
                      child: Text("${Movies?[index]}",style: TextStyle(color: Colors.black,fontSize: 20),),
                    );
                  },);
                }
                else if(snapshot.hasError)
                {
                  return Text("No Data Found");
                }
                else
                {
                  return Text("No Data Found");
                }
              }
              return Center(child: CircularProgressIndicator(color: Colors.white,));
            },),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.black),
            child: FutureBuilder(future: WebSeries(),builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done)
              {
                if(snapshot.hasData)
                {
                  List? WebSeries = snapshot.data as List?;

                  return ListView.builder(scrollDirection: Axis.horizontal,itemCount: WebSeries?.length,itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 90,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.white),
                      child: Text("${WebSeries?[index]}",style: TextStyle(color: Colors.black,fontSize: 20),),
                    );
                  },);
                }
                else if(snapshot.hasError)
                {
                  return Text("No Data Found");
                }
                else
                {
                  return Text("No Data Found");
                }
              }
              return Center(child: CircularProgressIndicator(color: Colors.white,));
            },),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.black),
            child: FutureBuilder(future: Seriel(),builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done)
              {
                if(snapshot.hasData)
                {
                  List? Seriel = snapshot.data as List?;

                  return ListView.builder(scrollDirection: Axis.horizontal,itemCount: Seriel?.length,itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 90,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.white),
                      child: Text("${Seriel?[index]}",style: TextStyle(color: Colors.black,fontSize: 20),),
                    );
                  },);
                }
                else if(snapshot.hasError)
                {
                  return Text("No Data Found");
                }
                else
                {
                  return Text("No Data Found");
                }
              }
              return Center(child: CircularProgressIndicator(color: Colors.white,));
            },),
          ),
        ],
      )
    );
  }
}

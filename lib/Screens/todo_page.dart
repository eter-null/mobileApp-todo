import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List listOfItems = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Task Board",
        style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.white,
        shadowColor: Color(0x32F5F8FB),
        surfaceTintColor: Colors.white,
      ),

      body:
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: ListView.builder(
              itemCount: listOfItems.length,
              itemBuilder: (context, index) {
                return Align(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Card(
                        elevation: 0,
                        color: Color(0xFFF5F8FB),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(13, 10, 13, 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child:
                                Text(
                                  //listOfItems[index].toString(),
                                    "Task ${listOfItems[index]}",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child:
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Text(
                                      "Your Personal task management and planning solution for planning your day, week & months",
                                      style: TextStyle(fontSize: 15)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Text(
                                      "12:55 pm 3rd Mar, 2024",
                                      style: TextStyle(fontSize: 15,
                                        color: Color(0xFF87898A),
                                        fontWeight: FontWeight.w300
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));

              },
            ),
          ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF393939),
        onPressed: () {
          setState((){
            listOfItems.add(listOfItems.length+1);
          });

        },
        child: Icon(Icons.add,
          color: Colors.white,
        ),
      ),

    );
  }
}
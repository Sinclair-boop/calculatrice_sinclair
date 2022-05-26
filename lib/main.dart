import 'package:flutter/material.dart';

void main(){
  runApp(Calculatrice());
}

class Calculatrice extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Calculatrice",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculatrice(),
    );
  }
}

class SimpleCalculatrice extends StatefulWidget{
  @override
  _SimpleCalculatriceState createState() => _SimpleCalculatriceState();
}

class _SimpleCalculatriceState extends State<SimpleCalculatrice>{


  Widget calculatriceButton(String textButton,Color couleurText,Color coleurBouton){
    return Container(
      height: MediaQuery.of(context).size.height.0.1,
      color: couleurBouton,
      child: MaterialButton(
        onPressed: null,
        padding:EdgeInsets.all(16),
        child: Text("C", style: TextStyle(color:couleurText),),),
    );
  }

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("Calculatrice"),
        centerTitle:true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),

            child: Text("0",style: TextStyle(fontSize: 35),),
          )     ,
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(20, 30, 10, 0),

            child: Text("0",style: TextStyle(fontSize: 35),),
          ),
          Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          MaterialButton(onPressed: null, child:Text("C",style: TextStyle(color: Colors.redAccent,),),),
                          MaterialButton(onPressed: null, child:Text("sup",style: TextStyle(color: Colors.blue,),),),
                          MaterialButton(onPressed: null, child:Text("%",style: TextStyle(color: Colors.blue,),),),
                          MaterialButton(onPressed: null, child:Text("/",style: TextStyle(color: Colors.blue,),),),
                        ]
                    )
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
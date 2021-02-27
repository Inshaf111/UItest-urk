import 'package:flutter/material.dart';
import 'package:uruk/src/constants/constants.dart';

class Creditcard extends StatelessWidget {
  final backgroundColor;
  const Creditcard({Key key,this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(color: backgroundColor,
            borderRadius: BorderRadius.circular(20)),
            height: 200,            
            child: Stack(
              children: [
                Positioned(
                  top:-100,
                  left: -70,
                  child: circle()),
                      Positioned(
                  bottom:-50,
                  left: -100,
                  child: circle()),
                Positioned(
                  top: 10,
                  left: 15,
                  right: 15,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Stack(
                        children:[
                           Positioned( 
                            left: 15,             
                            child: Icon(Icons.circle,color: Colors.white24,size: 28,)),
                            Positioned(                 
                            child: Icon(Icons.circle,color: Colors.white70,size: 28))
                        ]
                      ),
                    ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Current Account",style:TextStyle(fontSize: fontLarge,color: fontColorLight),textAlign: TextAlign.end,),
                      Text("1234 **** **** 4141",style:TextStyle(fontSize: fontLarge,color: fontColorLight,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),

                    ],
                  )
                  
                ],)),
                Positioned(
                  bottom: 20,
                  left: 15,
                  right: 15,
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(StringContants.BALANCE,style:TextStyle(fontSize: fontLarge,color: fontColorLight),textAlign: TextAlign.start,),
                        Text("130,0000 AED",style:TextStyle(fontSize: fontLarge,color: fontColorLight,fontWeight: FontWeight.bold),),

                      ]
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Text("Valid Through",style:TextStyle(fontSize: fontLarge,color: fontColorLight),textAlign: TextAlign.start,),
                        Text("06/30",style:TextStyle(fontSize: fontLarge,color: fontColorLight,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),
                      ]
                    )
                ],))
              ],
            ),
          );
        
  }
    Widget circle(){
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white10,
          borderRadius: BorderRadius.circular(100.0)
        ),
    );
  }
}
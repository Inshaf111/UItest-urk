import 'package:flutter/material.dart';
import 'package:uruk/src/constants/constants.dart';

class AccountsTab extends StatelessWidget {
  const AccountsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
            children:[
                Card(
                  color: Colors.white,
                  elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Column(
                          // mainAxisAlignment:  MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          Text("6535 **** **** 7263",style:TextStyle(fontSize: fontMedium,fontWeight: FontWeight.bold, ),textAlign: TextAlign.left,),
                          SizedBox(height:6),
                          Text("Al Nahda Branch - Dubai, UAE",style:TextStyle(fontSize: fontMedium, )),
                          SizedBox(height:12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("130,000",style:TextStyle(fontSize: fontExLarge,fontWeight: FontWeight.bold,color: primaryColor )),
                              SizedBox(width:5),
                              Text("IQD",style:TextStyle(fontSize: fontMedium,fontWeight: FontWeight.bold,color: primaryColor )),

                            ],
                          ),
                        ]),

                          Column(
                             mainAxisAlignment:  MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                            Text(StringContants.CARD_VALID,style:TextStyle(fontSize: fontLarge, ),textAlign: TextAlign.left,),
                            SizedBox(height:6),
                            Text("06/23",style:TextStyle(fontSize: fontLarge,fontWeight: FontWeight.bold )),
                            SizedBox(height:12),

                            Text("Saving Account",style:TextStyle(fontSize: fontMedium,color: primaryColor )),
                          ])
                    ],
                  ),
                      ),
                ),
                SizedBox(height:20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(width:30,height:5,
                    color: primaryColor,
                    ),
                  ),
                  Text(StringContants.TRANSFER_AMOUNT,style:TextStyle(fontSize: fontLarge,fontWeight: FontWeight.bold))
                ],),
                SizedBox(height: 10,),
                Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.credit_card,color: primaryColor,),
                      title: Text(StringContants.CASH_TRANSFER,style:TextStyle(fontSize: fontLarge,)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.arrow_circle_down,color: primaryColor,),
                      title: Text(StringContants.OTHER_ACCOUNTS_IN_SAMEBRANCH,style:TextStyle(fontSize: fontLarge,)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.refresh,color: primaryColor,),
                      title: Text(StringContants.BETWEEN_OWN_ACCOUNTS,style:TextStyle(fontSize: fontLarge,)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),

        ] 
      ),
    );
  }
}
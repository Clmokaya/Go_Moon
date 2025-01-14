import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_DropDown_button.dart';

class Homepage extends StatelessWidget{

late double _deviceHeight, _deviceWidth;

 Homepage({super.key});
@override
  Widget build(BuildContext context) {
    _deviceHeight=MediaQuery.of(context).size.height;
    _deviceWidth=MediaQuery.of(context).size.width;
 return Scaffold(body:SafeArea
 (child:Container(
  height: _deviceHeight,
  width: _deviceHeight,
 padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
 child:Stack(children: [
  Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
     _pageTitle(),
     _bookRideWidget(),
  ],
 ),
   Align(alignment: Alignment.center,
    child:_astroImageWidget() ,
   )
 ],
 ),
 ),
 ),
 );
 
  }
Widget _pageTitle(){
  return const Text("#GoMoon",
  style:TextStyle(
    color: Colors.white,
    fontSize: 70,
    fontWeight: FontWeight.w800,
  )
    );
    
}

  Widget _astroImageWidget() {
    return Container(
      height:_deviceHeight*0.50 ,
      width: _deviceWidth*0.65,
  decoration:const BoxDecoration(
    image:DecorationImage(
      fit:BoxFit.fill ,
      image: AssetImage("assets/images/astro_moon.png"))
  ),
  );

  }
Widget _bookRideWidget(){
return Container(height: _deviceHeight * 0.25,child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    _destinationDropDownWidget(),
    __travellersInformationWidget(),
    _rideButton(),

  ],
),);
}



Widget __travellersInformationWidget () {
  return Row(
 mainAxisAlignment: MainAxisAlignment.spaceBetween,
 mainAxisSize: MainAxisSize.max,
 crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    CustomDropdownButtonClass(values:const [
        '1',
        '2',
        '3',
        '4',
     ],
     width: _deviceWidth*0.45,
     ),
     CustomDropdownButtonClass(values:const [
        'Economy',
        'Business',
        'First_Class',
        'Premium',
     ],
     width: _deviceWidth*0.40,
     ),
  ],
);
}
Widget _destinationDropDownWidget(){
  return  CustomDropdownButtonClass(values:const [
    'James Web Station',
    'Mokaya Station',
 ],
 width: _deviceWidth,
  );
}
Widget _rideButton(){
return Container(
  margin: EdgeInsets.only(bottom: _deviceHeight*0.01),
  width: _deviceWidth,
  decoration: BoxDecoration(color: Colors.white, borderRadius:BorderRadius.circular(10), ),
  child: MaterialButton(onPressed:(){}, 
  child: const Text ("Book Ride!", 
  style:TextStyle(
  color: Colors.black,),),
  )
);
}

}
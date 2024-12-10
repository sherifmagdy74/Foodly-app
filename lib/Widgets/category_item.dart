import 'package:flutter/material.dart';

class categoryitem extends StatelessWidget {
final String title;
final String imageUrl;

  const categoryitem(this.title , this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child:
        Image.network(imageUrl,height: 400,fit: BoxFit.cover,)),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(title,style: TextStyle(fontSize: 30,color: Colors.white),),

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
            color: Colors.black.withOpacity(0.4),),
        )
        
      ],
    );
  }
}

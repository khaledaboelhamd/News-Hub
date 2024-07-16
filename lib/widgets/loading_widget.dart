
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10  ,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey.withOpacity(.4),
    ),
          ),
          title: Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Container(
          height: 15,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(.5),
          ),
        ),
        const SizedBox(height: 10),
      ],
    ),
          ),
          subtitle: Align(
    alignment: Alignment.bottomLeft,
    child: Column(
      children: [
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(.3),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(.3),
          ),
        ),
      ],
    ),
          ),
        ); 
      },
    );
  }
}

// دي عشان الbody

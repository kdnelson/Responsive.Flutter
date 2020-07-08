import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManufacturingMenuDialog extends StatelessWidget {
  const ManufacturingMenuDialog(BuildContext context, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 20,
      child: Container(
        height: 510.0,
        width: 360.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Manufacturer Menu",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 370,
                    width: 150,
                  ),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// return Dialog(
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(12.0),
//   ),
//   child: Container(
//     height: 300.0,
//     width: 300.0,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.all(15.0),
//           child: Text(
//             'Manufacturing Menu Here',
//             style: TextStyle(fontSize: 25.0, color: Colors.black),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               RaisedButton(
//                 color: Colors.black,
//                 onPressed: () {
//                   Navigator.of(context).pop(true);
//                 },
//                 child: Text(
//                   'Okay',
//                   style: TextStyle(fontSize: 18.0, color: Colors.white),
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               RaisedButton(
//                 color: Colors.red,
//                 onPressed: () {
//                   Navigator.of(context).pop(false);
//                 },
//                 child: Text(
//                   'Cancel',
//                   style: TextStyle(fontSize: 18.0, color: Colors.white),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// );

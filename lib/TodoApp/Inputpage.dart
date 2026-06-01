import 'package:assignment/TodoApp/Widget/Allwidget.dart';
import 'package:flutter/material.dart';

class Inputpage extends StatefulWidget {
  // final VoidCallback onPressed;
  final Function(int) onPressed;

  const Inputpage({super.key, required this.onPressed});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  // List<bool> _isChack = [false,false,false];
  // final TextEditingController _textEditingController = TextEditingController();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //
  // void chack(){
  //
  //     if(_isChack == true){
  //       _isChack != false;
  //     }else if(_isChack == false){
  //       setState(() {
  //        
  //       });
  //     }
  // }





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: [
              Row(
                children: [
                  Icon(Icons.check_box_outline_blank_rounded),
                  SizedBox(width: 10),
                  GreyTex(text: 'What\'s in your mind ', fontSize: 20),
                ],
              ),
              SizedBox(height: 20),
              // ListView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //
              //   padding: EdgeInsets.zero,
              //   itemCount: 3,
              //   shrinkWrap: true,
              //   itemBuilder: (context, index) {
              //     return Card(
              //       elevation: 5,
              //       child: ListTile(
              //         title: Text('Task ',style: TextStyle(
              //         decoration: _isChack[index]
              //         ? TextDecoration.lineThrough
              //           : TextDecoration.none,
              //         ),),
              //         leading: Checkbox(value:_isChack[index], onChanged: (value) {setState(() {
              //           print('value');
              //           _isChack[index] = value!;
              //         });}),
              //         trailing: IconButton(
              //           onPressed: widget.onPressed(index),
              //           icon: Icon(Icons.delete,color: Colors.red,),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              SizedBox(height: 20,),
              TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  prefix: Icon(Icons.edit,color: Colors.black54,),
                      hintText: 'Add a note...',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.black54
                  ),
                  

              )
              ),

              Spacer(),
              Button(onPressed: () {  },),


            ],
          ),
        ),
      ),
    );
  }
}

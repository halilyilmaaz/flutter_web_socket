import 'package:flutter/material.dart';
import 'package:flutter_web_socket/view/message/controller/message_controller.dart';
import 'package:flutter_web_socket/view/message/widget/message_widget.dart';
import 'package:get/get.dart';


class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final messageController = Get.put(MessageController());
    
    
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              child: SenMessageField(
                textcontroller: messageController.textController,
              ),
            ),
            StreamBuilder(
              stream: messageController.channel!.stream,
              builder: (context,snapshot){
                return Text(snapshot.hasData ? '${snapshot.data}' : '');
              }),
            FlatButton(onPressed: (){
              messageController.sendMessage();
            }, child: Text("Gönder")),
          ],
        ),
      ),
    );
    
  }
  

}


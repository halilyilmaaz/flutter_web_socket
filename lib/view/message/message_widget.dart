import 'package:flutter/material.dart';
import 'package:flutter_web_socket/view/message/controller/message_controller.dart';
import 'package:flutter_web_socket/view/message/view/message_view.dart';
import 'package:get/get.dart';


class MessageMain extends StatelessWidget {
  const MessageMain({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MessageController(),
      builder: (GetxController controller){
        return MessageView();
      },
    );
  }
}
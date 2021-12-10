
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';


/// [https://www.piesocket.com/websocket-tester] adresten dummy websocket kullanılmıştır.

class MessageController extends GetxController{
  final GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();

  late final WebSocketChannel? channel;
  TextEditingController? textController= TextEditingController();
  

  void sendMessage() {
    if (textController!.text.isNotEmpty) {
      channel!.sink.add(textController!.text);
      }
    }

  @override
  void onInit() {
    super.onInit();
   channel = WebSocketChannel.connect(
    Uri.parse('wss://demo.piesocket.com/v3/channel_1?api_key=oCdCMcMPQpbvNjUIzqtvF1d2X2okWpDQj4AwARJuAgtjhzKxVEjQU6IdCjwm&notify_self'),
  );
    
  }


  @override
  void dispose() {
    
    channel!.sink.close();
    super.dispose();
  }
  
}
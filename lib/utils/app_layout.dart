import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{

    static getSize(BuildContext context){
      return MediaQuery.of(context).size;
    }

    static getScreenWidth(){
      return Get.width;
    }

    static getScreenHeight(){
      return Get.height;
    }

    static getHeight(double pixels){
      double x=getScreenHeight()/pixels;
      return getScreenHeight()/x; 
    }

        static getWidth(double pixels){
      double x=getScreenWidth()/pixels;
      return getScreenWidth()/x; 
    }
}
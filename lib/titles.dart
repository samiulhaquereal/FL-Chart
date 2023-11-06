import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles{
  static getTitleData(){
    return FlTitlesData(
      topTitles: AxisTitles(
        sideTitles: SideTitles(
            showTitles: false
        ),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(
            showTitles: false
        ),
      ),
      leftTitles: AxisTitles(sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: (value,meta){
            return Text(value.toString(),style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold,color: Colors.white),);
          }
      )),
      bottomTitles: AxisTitles(sideTitles:SideTitles(
        showTitles: true,
        reservedSize: 50,
        getTitlesWidget: (value, meta) {
          String a = '';
        switch (value.toInt()){
          case 0:
            a = 'JAN';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 1:
            a = 'FEB';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 2:
            a = 'MAR';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 3:
            a = 'APR';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 4:
            a = 'MAY';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 5:
            a = 'JUN';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 6:
            a = 'JUL';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 7:
            a = 'AUG';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 8:
            a = 'SEP';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 9:
            a = 'OCT';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 10:
            a = 'NOV';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
          case 11:
            a = 'DEC';
            return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
        }
        return Text(a,style: TextStyle(color: Colors.white,fontSize: 12),);
        },
      )),
    );
  }
}
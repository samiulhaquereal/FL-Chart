import 'package:chart/titles.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartPage extends StatelessWidget {
  final List<Color> gradiantColors = [
  const Color(0xFF00d39b),
  const Color(0xFF22B6E6),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        titlesData: LineTitles.getTitleData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value){
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1
            );
          },
          drawVerticalLine: true,
          getDrawingVerticalLine: (value){
            return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1
            );
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Color(0xff37434d),width: 1)
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 2.5),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
            ],
            gradient: _barsGradient,
            dotData: FlDotData(show: true,),
            isCurved: true,
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              gradient: _barsGradient,
            ),
          ),
          LineChartBarData(
            spots: [
              FlSpot(0, 5),
              FlSpot(2.6, 1),
              FlSpot(4.9, 3),
              FlSpot(6.8, 4.5),
              FlSpot(8, 2),
              FlSpot(9.5, 1),
              FlSpot(11, 4.5),
            ],
            gradient: _barsGradient2,
            dotData: FlDotData(show: true,),
            isCurved: true,
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              gradient: _barsGradient2,
            ),
          )
        ]
      ),
    );
  }
}

LinearGradient get _barsGradient => LinearGradient(
  colors: [
    const Color(0xFF00d39b).withOpacity(0.5),
    const Color(0xFF22B6E6).withOpacity(0.5),
  ],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

LinearGradient get _barsGradient2 => LinearGradient(
  colors: [
    const Color(0xffff0000).withOpacity(0.5),
    const Color(0xFFFF710D).withOpacity(0.5),
  ],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);
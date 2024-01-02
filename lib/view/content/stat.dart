import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  late ZoomPanBehavior zoom;

  @override
  void initState() {
    super.initState();
    zoom = ZoomPanBehavior(
        enablePinching: true,
        enableDoubleTapZooming: true,
        enablePanning: true,
        enableSelectionZooming: true,
        enableMouseWheelZooming: true);
  }

  @override
  Widget build(BuildContext context) {
    List<DataIncome> data = [
      DataIncome('Jan', 4.200),
      DataIncome('Feb', 5.100),
      DataIncome('Mar', 2.200),
      DataIncome('April', 7.200),
      DataIncome('Mei', 3.300),
      DataIncome('Juni', 3.300),
      DataIncome('Juli', 3.300),
      DataIncome('Agustus', 8.200),
      DataIncome('September', 10.300),
      DataIncome('Oktober', 1.100),
      DataIncome('November', 3.300),
      DataIncome('Desember', 3.300),
    ];

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Center(
              child: Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: const Text(
              'Statistic Per Year',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(size.height * 0.05),
                child: const Text(
                  '\$ 10,320,40 \n Income',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: const Text(
                  '\$ 6,320,40 \n Expense',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
              ),
            ],
          ),
          SfCartesianChart(
              zoomPanBehavior: zoom,
              primaryXAxis: CategoryAxis(),
              series: <LineSeries<DataIncome, String>>[
                LineSeries<DataIncome, String>(
                  dataSource: data,
                  xValueMapper: (DataIncome month, _) => month.month,
                  yValueMapper: (DataIncome income, _) => income.income,
                )
              ])
        ]),
      ),
    );
  }
}

class DataIncome {
  DataIncome(this.month, this.income);
  final String month;
  final double income;
}

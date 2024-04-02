import 'package:flutter/material.dart';
import 'package:unishare/app/widgets/chart.dart';
import 'package:unishare/app/widgets/chart_explanation.dart';
import 'package:unishare/app/widgets/secondary_button.dart';
import 'package:unishare/app/widgets/ternary_button.dart';
import 'package:unishare/app/widgets/to_do_list_card.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key});

  final double onTimeValue = 50;
  final double lateValue = 28;
  final double onGoingValue = 22;
  final double radiusValue = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 247, 255),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Statistik',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: PieChartSample2(
                    onTimeValue: onTimeValue,
                    lateValue: lateValue,
                    onGoingValue: onGoingValue,
                    radiusValue: radiusValue,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChartExplanation(text: '$onTimeValue% selesai tepat waktu', color: const Color.fromARGB(255, 34, 222, 154)),
                      ChartExplanation(text: '$lateValue% lewat batas waktu', color: const Color.fromARGB(255, 222, 34, 57)),
                      ChartExplanation(text: '$lateValue% masih berlangsung', color: const Color.fromARGB(255, 217, 217, 217)),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.5,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(73),
                        ),
                        child: TernaryButton(onPressed: (){}, label: 'Lihat Detail', iconData: Icons.info_outline, width: 173),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Hari ini',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const ToDoListCard(),
            const ToDoListCard(),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(73),
              ),
              child: Center(child: TernaryButton(onPressed: (){}, label: 'Tambah To-do List', iconData: Icons.add_circle_outline_outlined, width: 319)),
            ),
          ],
        ),
      ),
    );
  }
}

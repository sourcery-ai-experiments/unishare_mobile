import 'package:flutter/material.dart';
import 'package:unishare/widgets/milestone_checkbox.dart';

class MilestoneCard extends StatelessWidget {
  final bool isCheckedIn;
  final bool isCheckedOut;

  const MilestoneCard({Key? key, required this.isCheckedIn, required this.isCheckedOut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Webinar X',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    children: [
                      MilestoneCheckBox(isChecked: isCheckedIn),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Timeline',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Deskripsi',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
        
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.black,
                        iconSize: 20,
                      ),
                    ],
                  ),
                  Container(
                    width: 3,
                    height: 30,
                    color: Colors.grey.withOpacity(0.5),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Row(
                    children: [
                      MilestoneCheckBox(isChecked: isCheckedOut),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Timeline',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Deskripsi',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
        
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.black,
                        iconSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
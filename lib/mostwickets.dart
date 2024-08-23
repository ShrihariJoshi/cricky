import 'package:flutter/material.dart';

class Mostwickets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Purple Cap'),
          backgroundColor: const Color.fromARGB(255, 89, 204, 220),
        ),
        body: (Purplecap()));
  }
}

class Purplecap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DataTable(columns: const [
      DataColumn(label: Text('Standing')),
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Innings')),
      DataColumn(label: Text('Wickets')),
      DataColumn(label: Text('Economy')),
      DataColumn(label: Text('Team')),
    ], rows: const [
      DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('Virat Kohli')),
        DataCell(Text('14')),
        DataCell(Text('30')),
        DataCell(Text('5.90')),
        DataCell(Text('RCB')),
      ]),
      DataRow(cells: [
        DataCell(Text('2')),
        DataCell(Text('Smrit Mandhana')),
        DataCell(Text('14')),
        DataCell(Text('29')),
        DataCell(Text('13.9')),
        DataCell(Text('RCB')),
      ]),
      DataRow(cells: [
        DataCell(Text('3')),
        DataCell(Text('Shane Warne')),
        DataCell(Text('14')),
        DataCell(Text('25')),
        DataCell(Text('7.72')),
        DataCell(Text('RR')),
      ])
    ]);
  }
}

// ignore: file_names
import 'package:flutter/material.dart';

class Mostruns extends StatelessWidget {
  const Mostruns({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orange Cap'),
        ),
        body: (const Orangecap()));
  }
}

class Orangecap extends StatelessWidget {
  const Orangecap({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DataTable(columns: const [
      DataColumn(label: Text('Standing')),
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Innings')),
      DataColumn(label: Text('Runs')),
      DataColumn(label: Text('Strike Rate')),
      DataColumn(label: Text('Team')),
    ], rows: const [
      DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('Virat Kohli')),
        DataCell(Text('14')),
        DataCell(Text('973')),
        DataCell(Text('175.89')),
        DataCell(Text('RCB')),
      ]),
      DataRow(cells: [
        DataCell(Text('2')),
        DataCell(Text('Shubman Gill')),
        DataCell(Text('14')),
        DataCell(Text('568')),
        DataCell(Text('139')),
        DataCell(Text('GT')),
      ]),
      DataRow(cells: [
        DataCell(Text('3')),
        DataCell(Text('SuryaKumar Yadav')),
        DataCell(Text('14')),
        DataCell(Text('499')),
        DataCell(Text('145')),
        DataCell(Text('MI')),
      ])
    ]);
  }
}

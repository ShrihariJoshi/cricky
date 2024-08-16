import 'package:flutter/material.dart';

void main() {
  runApp(Standings());
}

class Standings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Points Table'),
          ),
          body: ( PointsTable())
          ),
    ));
  }
}

class PointsTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DataTable(columns: [
      DataColumn(label: Text('Standing')),
      DataColumn(label: Text('Team')),
      DataColumn(label: Text('Played')),
      DataColumn(label: Text('Won')),
      DataColumn(label: Text('Lost')),
      DataColumn(label: Text('No Result')),
      DataColumn(label: Text('Points')),
    ], rows: [
      DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('RCB')),
        DataCell(Text('14')),
        DataCell(Text('14')),
        DataCell(Text('0')),
        DataCell(Text('0')),
        DataCell(Text('28')),
      ]),
      DataRow(cells: [
        DataCell(Text('2')),
        DataCell(Text('CSK')),
        DataCell(Text('14')),
        DataCell(Text('10')),
        DataCell(Text('4')),
        DataCell(Text('0')),
        DataCell(Text('20')),
      ]),
      DataRow(cells: [
        DataCell(Text('3')),
        DataCell(Text('MI')),
        DataCell(Text('14')),
        DataCell(Text('9')),
        DataCell(Text('5')),
        DataCell(Text('0')),
        DataCell(Text('18')),

      ])
    ]);
  }
}

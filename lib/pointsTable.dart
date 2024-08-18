import 'package:flutter/material.dart';

class Standings extends StatelessWidget {
  const Standings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Table'),
      ),
      body: Container(
        color: Colors.white,
        child: const PointsTable(),
      ),
      // ),
    );
  }
}

class PointsTable extends StatelessWidget {
  const PointsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columnSpacing: 16.0,
        columns: const [
          DataColumn(label: Text('Standing', style: TextStyle(fontSize: 12))),
          DataColumn(label: Text('Team', style: TextStyle(fontSize: 12))),
          DataColumn(label: Text('Played', style: TextStyle(fontSize: 12))),
          DataColumn(label: Text('Won', style: TextStyle(fontSize: 12))),
          DataColumn(label: Text('Lost', style: TextStyle(fontSize: 12))),
          DataColumn(label: Text('No Result', style: TextStyle(fontSize: 12))),
          DataColumn(label: Text('Points', style: TextStyle(fontSize: 12))),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(Text('1', style: TextStyle(fontSize: 12))),
              DataCell(Text('RCB', style: TextStyle(fontSize: 12))),
              DataCell(Text('14', style: TextStyle(fontSize: 12))),
              DataCell(Text('14', style: TextStyle(fontSize: 12))),
              DataCell(Text('0', style: TextStyle(fontSize: 12))),
              DataCell(Text('0', style: TextStyle(fontSize: 12))),
              DataCell(Text('28', style: TextStyle(fontSize: 12))),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('2', style: TextStyle(fontSize: 12))),
              DataCell(Text('CSK', style: TextStyle(fontSize: 12))),
              DataCell(Text('14', style: TextStyle(fontSize: 12))),
              DataCell(Text('12', style: TextStyle(fontSize: 12))),
              DataCell(Text('4', style: TextStyle(fontSize: 12))),
              DataCell(Text('0', style: TextStyle(fontSize: 12))),
              DataCell(Text('20', style: TextStyle(fontSize: 12))),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('3', style: TextStyle(fontSize: 12))),
              DataCell(Text('MI', style: TextStyle(fontSize: 12))),
              DataCell(Text('14', style: TextStyle(fontSize: 12))),
              DataCell(Text('9', style: TextStyle(fontSize: 12))),
              DataCell(Text('5', style: TextStyle(fontSize: 12))),
              DataCell(Text('0', style: TextStyle(fontSize: 12))),
              DataCell(Text('18', style: TextStyle(fontSize: 12))),
            ],
          ),
        ],
      ),
    );
  }
}

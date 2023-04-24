import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [_reportLists()],
    ));
  }

  DataTable _reportLists() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      dividerThickness: 5,
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      headingRowColor:
          MaterialStateProperty.resolveWith((states) => Colors.blueGrey),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(label: Text('ID')),
      const DataColumn(label: Text('Book')),
      const DataColumn(label: Text('Author')),
      const DataColumn(label: Text('Report'))
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John'))
      ]),
      const DataRow(cells: [
        DataCell(Text('#101')),
        DataCell(Text('Dart Internals')),
        DataCell(Text('Dart Internals')),
        DataCell(Text('Alex Wick'))
      ])
    ];
  }
}

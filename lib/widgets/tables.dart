import 'package:flutter/material.dart';

Widget tableData({
  required headersData,
  required contentData,
}) {
  List<DataColumn> headers = [];
  List<DataRow> data = [];
  headersData.forEach((header) {
    headers.add(
      DataColumn(
        label: Expanded(
          child: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  });

  contentData.forEach((datum) {
    List<DataCell> dataCell = [];
    datum.forEach((key, value) {
      if (value.runtimeType == String) {
        dataCell.add(DataCell(Text(value)));
      } else {
        dataCell.add(DataCell(value));
      }
    });

    data.add(
      DataRow(
        cells: datum,
        // <DataCell>[
        //   DataCell(Text('Sarah')),
        //   DataCell(Text('19')),
        //   DataCell(Text('Student')),
        // ],
      ),
    );
  });
  return DataTable(
    columns: headers,
    rows: data,
  );
}

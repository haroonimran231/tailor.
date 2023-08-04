import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/measurement.dart';
import 'package:flutter_application_1/pages/add__measure..dart';

class MeasurementListScreen extends StatefulWidget {
  @override
  _MeasurementListScreenState createState() => _MeasurementListScreenState();
}

class _MeasurementListScreenState extends State<MeasurementListScreen> {
  List<Measurement> _measurements = [];

  void _addMeasurement(Measurement measurement) {
    setState(() {
      _measurements.add(measurement);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tailor Diary')),
      body: ListView.builder(
        itemCount: _measurements.length,
        itemBuilder: (context, index) {
          final measurement = _measurements[index];
          return ListTile(
            title: Text('Date: ${measurement.date}'),
            subtitle: Text(
                'Chest: ${measurement.chest}, Waist: ${measurement.waist}, Hips: ${measurement.hips}'
                "Shoulders: ${measurement.shoulder}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AddMeasurementScreen(addMeasurement: _addMeasurement),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

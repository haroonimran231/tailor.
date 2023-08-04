import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/measurement.dart';

class AddMeasurementScreen extends StatefulWidget {
  final Function addMeasurement;

  AddMeasurementScreen({required this.addMeasurement});

  @override
  _AddMeasurementScreenState createState() => _AddMeasurementScreenState();
}

class _AddMeasurementScreenState extends State<AddMeasurementScreen> {
  late TextEditingController _dateController;
  late TextEditingController _chestController;
  late TextEditingController _waistController;
  late TextEditingController _hipsController;
  late TextEditingController _shouldersController;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
    _chestController = TextEditingController();
    _waistController = TextEditingController();
    _hipsController = TextEditingController();
    _shouldersController = TextEditingController();
  }

  @override
  void dispose() {
    _dateController.dispose();
    _chestController.dispose();
    _waistController.dispose();
    _hipsController.dispose();
    _shouldersController.dispose();

    super.dispose();
  }

  void _submitMeasurement() {
    final date = _dateController.text;
    final chest = double.tryParse(_chestController.text) ?? 0.0;
    final waist = double.tryParse(_waistController.text) ?? 0.0;
    final hips = double.tryParse(_hipsController.text) ?? 0.0;
    final shoulder = double.tryParse(_shouldersController.text) ?? 0.0;

    if (date.isNotEmpty && chest > 0 && waist > 0 && hips > 0 && shoulder > 0) {
      final newMeasurement = Measurement(
          date: date,
          chest: chest,
          waist: waist,
          hips: hips,
          shoulder: shoulder);
      widget.addMeasurement(newMeasurement);

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Measurement')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _dateController,
              decoration: InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _shouldersController,
              decoration: InputDecoration(labelText: 'Shoulders'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _chestController,
              decoration: InputDecoration(labelText: 'Chest'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _waistController,
              decoration: InputDecoration(labelText: 'Waist'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _hipsController,
              decoration: InputDecoration(labelText: 'Hips'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitMeasurement,
              child: Text('Add Measurement'),
            ),
          ],
        ),
      ),
    );
  }
}

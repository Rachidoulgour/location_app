import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locations_app/providers/user_locations.dart';
import 'package:locations_app/widgets/image_input.dart';

class AddLocationScreen extends ConsumerStatefulWidget {
  const AddLocationScreen({super.key});

  @override
  ConsumerState<AddLocationScreen> createState() {
    return _AddLocationScreenState();
  }
}

class _AddLocationScreenState extends ConsumerState<AddLocationScreen> {
  final _titleController = TextEditingController();

  void _saveLocation() {
    final enteredText = _titleController.text;

    if (enteredText.isEmpty) {
      return;
    }

    ref.read(userLocationsProvider.notifier).addLocation(enteredText);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add new location'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: _titleController,
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(
              height: 16,
            ),
            ImageInput(),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              onPressed: _saveLocation,
              icon: const Icon(Icons.add),
              label: const Text('Add Location'),
            ),
          ],
        ),
      ),
    );
  }
}

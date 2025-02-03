import 'package:flutter/material.dart';

// TODO: Remove this widget and the associated route once you have finished.

/// A demonstration screen to showcase and simplify theme customization.
/// This screen displays various themed widgets to help you visually
/// verify and adjust your theme settings.
class ThemePreviewScreen extends StatelessWidget {
  const ThemePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: const Text('Theme Preview'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTextStylesSection(context),
          const Divider(),
          _buildButtonsSection(context),
          const Divider(),
          _buildInputsSection(),
          const Divider(),
          _buildDialogsAndCardsSection(context),
          const Divider(),
          _buildProgressIndicatorsSection(),
          const Divider(),
          _buildIconsSection(),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTextStylesSection(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Text Styles',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text('Headline Large', style: theme.textTheme.headlineLarge),
        Text('Headline Medium', style: theme.textTheme.headlineMedium),
        Text('Headline Small', style: theme.textTheme.headlineSmall),
        Text('Body Large', style: theme.textTheme.bodyLarge),
        Text('Body Medium', style: theme.textTheme.bodyMedium),
        Text('Body Small', style: theme.textTheme.bodySmall),
      ],
    );
  }

  Widget _buildButtonsSection(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Buttons',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
        OutlinedButton(onPressed: () {}, child: const Text('Outlined Button')),
        TextButton(onPressed: () {}, child: const Text('Text Button')),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star),
            ),
            Flexible(
              child: Text('Icon Button'),
            )
          ],
        ),
        FilledButton(onPressed: () {}, child: const Text('Filled Button')),
      ],
    );
  }

  Widget _buildInputsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Inputs',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Input Field',
            hintText: 'Enter text',
          ),
        ),
      ],
    );
  }

  Widget _buildDialogsAndCardsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dialogs & Cards',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Dialog Title'),
              content: const Text('This is a sample dialog'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
          child: const Text('Show Dialog'),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text('This is a sample card'),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressIndicatorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Progress Indicators',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const CircularProgressIndicator(),
        const SizedBox(height: 8),
        const LinearProgressIndicator(),
      ],
    );
  }

  Widget _buildIconsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Icons',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Icon(Icons.star),
            SizedBox(width: 8),
            Icon(Icons.favorite),
            SizedBox(width: 8),
            Icon(Icons.settings),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return Builder(builder: (context) {
      return FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FAB Pressed!')),
          );
        },
        child: const Icon(Icons.add),
      );
    });
  }
}

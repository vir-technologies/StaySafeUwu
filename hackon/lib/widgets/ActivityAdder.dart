import 'package:flutter/material.dart';

// MENU
int weight = 0;

// this widget will be used to add activities to the calendar
class ActivityAdder extends StatefulWidget {
  // final String title;

  ActivityAdder({Key? key}) : super(key: key);
  // It is stateful -. has State obj containing fields that affect how it looks.
  // This class is the configuration for the state. holds the values (eg title)
  // provided by the parent (eg App widget) and used by the build method of the
  // State. Fields in a Widget subclass are always marked "final".

  @override
  _ActivityAdderState createState() => _ActivityAdderState();
}

class _ActivityAdderState extends State<ActivityAdder> {
  // place changeable fields here

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("increment counter pressed");
    });
  }

  Padding textField(String labelText) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new Activity"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'YEET COUNTER:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Activity Name",
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                textField("some other thing we'd want"),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // if valid, display snackbar (pop-up at bottom screen)
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Activity saved')));
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increments the counter',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

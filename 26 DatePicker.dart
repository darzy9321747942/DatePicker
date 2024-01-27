import 'package:flutter/material.dart';
import 'package:flutter/src/material/date_picker.dart';

class datepicker extends StatefulWidget {
  const datepicker({super.key});

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                      "select date and time")), // the process might take some time so await is used
              // so it will wait until it wont show the result
              // question mark defines values should  also be  null
              //Datetime is a type of date
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    final DateTime? dateTime = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2015),
                      lastDate: DateTime(2025),
                    );

                    if (dateTime != null) {
                      print(
                        'Date Selected:${dateTime.day} ${dateTime.month} ${dateTime.year}',
                      );
                    }
                  },
                  child: Text("Select Date")),
              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? pickedtime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now()
                      );
                      if(pickedtime!=null){
                        print(
                        'Selected  Time:${pickedtime.hour} ${pickedtime.minute}',
                      );
                      }
                },
                child: Text("Select time"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.amber,
    ),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

  
  /* //For IOS & Android
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //For Web
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB4lZgatGzPXJcrnt2GA8Oftt1Hs-Tls7k",
          appId: "1:475201429605:web:f0dc0c3554d352ea8d668c",
          messagingSenderId: "475201429605",
          projectId: "simplecrudff"),
    );
  }
  // await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.amber,
    ),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String empName, empId, empBranchLocation, empShift, empClient;
  late double empPerformancePercentage;

  getEmployeeName(employeeeName) {
    this.empName = employeeeName;
  }

  getEmployeeId(employeeeId) {
    this.empId = employeeeId;
  }

  getEmployeeBranchLocation(employeeeLocation) {
    this.empBranchLocation = employeeeLocation;
  }

  getEmployeeShift(employeeeShift) {
    this.empShift = employeeeShift;
  }

  getEmployeePerformancePercentage(performancePercentage) {
    this.empPerformancePercentage = double.parse(performancePercentage);
  }

  getEmployeeClient(employeeeClient) {
    this.empClient = employeeeClient;
  }

  createData() {
    print("Create");
  }

  readData() {
    print('Read');
  }

  updateData() {
    print('Update');
  }

  deleteData() {
    print('Delete');
  }

  DocumentReference documentReference =
      FirebaseFirestore.instance.collection("CTSEmployessDEtails").doc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employess Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeName) {
                  getEmployeeName(employeeeName);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Id",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeId) {
                  getEmployeeId(employeeeId);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Branch Location",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeLocation) {
                  getEmployeeBranchLocation(employeeeLocation);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Work Shift",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeShift) {
                  getEmployeeShift(employeeeShift);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp performance percentage",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String performancePercentage) {
                  getEmployeePerformancePercentage(performancePercentage);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(280.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Emp Client",
                  fillColor: Color.fromARGB(255, 56, 16, 29),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 30),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (String employeeeClient) {
                  getEmployeeClient(employeeeClient);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.black)),
                  ),
                  child: const Text(
                    "Create",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    createData();
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {
                    readData();
                  },
                  child: const Text(
                    "Read",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {
                    updateData();
                  },
                  child: const Text(
                    "Update",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.black)),
                  ),
                  onPressed: () {
                    deleteData();
                  },
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }*/
//}

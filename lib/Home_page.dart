import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool myValue3 = false;
  bool myValue2 = false;
  bool myValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myValue1 ? Colors.black12 : null,
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
// dark mode switch done 39----------------
              SwitchListTile(
                  secondary: Icon(
                    Icons.dark_mode_outlined,
                    color: myValue1 ? Colors.grey : Colors.black,
                  ),
                  title: Text(
                    "Dark Mode",
                    style: TextStyle(
                      fontSize: 28,
                      color: myValue1 ? Colors.grey : Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    " Light Night (*_*)",
                    style: TextStyle(
                      fontSize: 15,
                      color: myValue1 ? Colors.grey : Colors.black,
                    ),
                  ),
                  value: myValue1,
                  onChanged: (val) {
                    setState(() {
                      myValue1 = !myValue1;
                    });
                  }),
// ----------------------------------------------------------
              SwitchListTile(
                title: Text(
                  "show contact information",
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text("Email,Mobile,Etc"),
                value: myValue2,
                onChanged: (value) {
                  if (value = !myValue2)
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              Text("Do you want to proceed ?"),
                              Text("yes"),
                              Text("No")
                            ],
                            backgroundColor: Colors.green.shade300,
                            content: Container(
                              color: Colors.lime.shade300,
                              child: Column(
                                children: [
                                  Divider(
                                    height: 100,
                                  ),
                                  Container(
                                    color: Colors.purple,
                                    child: Row(
                                      children: [
                                        Text("Mobile"),
                                        Text("962 797777777")
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 100,
                                  ),
                                  Container(
                                    color: Colors.amber,
                                    child: Row(
                                      children: [
                                        Text("Email"),
                                        Text("Example@example.com")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  setState(() {
                    myValue2 = !myValue2;
                  });
                },
              ),

// ----------------------------------------------------------

              ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            Container(
                                alignment: Alignment.topCenter,
                                child: Text("Do you want to go to home page?")),
                            Divider(
                              height: 25,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                content: Image.network(
                                                    "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
                                              );
                                            });
                                      },
                                      child: Text("Yes")),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return MyApp();
                                          },
                                        ));
                                      },
                                      child: Text("No")),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.home),
                  label: Text("Home")),

// -----------------------------------------------------------

              SwitchListTile(
                  value: myValue3,
                  secondary:Icon(Icons.home) ,

                  title: Text("Back to home"),
                  onChanged: ((value) {
                    setState(() {
                      myValue3 = !myValue3;
                    });
                    if (value = myValue3)
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              actions: [
                                Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                        "Do you want to go to home page?")),
                                Divider(
                                  height: 25,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: Image.network(
                                                        "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
                                                  );
                                                });
                                          },
                                          child: Text("Yes")),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return MyApp();
                                              },
                                            ));
                                          },
                                          child: Text("No")),
                                    ],
                                  ),
                                )
                              ],
                            );
                          }));
                  }))

// ----------------------------------------------------------
            ],
          ),
        ));
  }
}

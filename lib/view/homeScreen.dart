// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_edapt_network_connection_learning/modelclass/modelclass.dart';
import 'package:flutter_application_edapt_network_connection_learning/view/Employeedetails.dart';
import 'package:flutter_application_edapt_network_connection_learning/services/provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late Future<List<Modelclass>> fetchdata;

  @override
  Widget build(BuildContext context) {
    // final fetchdata=fetchDataFromApi;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          size: 35,
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: FutureBuilder<List<Modelclass>>(
                      future: Provider.of<ProviderClass>(context).datafromapi,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Consumer<ProviderClass>(
                            builder: (context, value23, child) {
                              return GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          childAspectRatio: 1.3 / 2,
                                          crossAxisSpacing: 23,
                                          mainAxisSpacing: 23),
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (BuildContext ctx, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Provider.of<ProviderClass>(context,
                                                listen: false)
                                            .indexTaker(index);

                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Employeedetails(index)));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                  radius: 50,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      radius: 45,
                                                      backgroundImage:
                                                          NetworkImage(snapshot
                                                              .data![index]
                                                              .profileImage
                                                              .toString())),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 5.0),
                                                  child: AutoSizeText(
                                                    
                                                    snapshot.data![index].name
                                                        .toString(),
                                                        minFontSize: 10,
                                                        maxLines:3,
                                                    style: TextStyle(
                                                        
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

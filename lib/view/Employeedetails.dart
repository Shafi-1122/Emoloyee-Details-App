// ignore_for_file: must_be_immutable, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_application_edapt_network_connection_learning/view/homeScreen.dart';
import 'package:flutter_application_edapt_network_connection_learning/services/provider.dart';
import 'package:provider/provider.dart';

import '../modelclass/modelclass.dart';

class Employeedetails extends StatefulWidget {
  Employeedetails(this.index, {Key? key}) : super(key: key);
  int index;

  @override
  State<Employeedetails> createState() => _MainscreenState();
}

class _MainscreenState extends State<Employeedetails> {
  late String nameOfCompany;
  late String bsofcompany;
  late String chatchphraseofcompany;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<Modelclass>>(
            future: Provider.of<ProviderClass>(context).datafromapi,
            builder: (context, snapshot) {
              if (snapshot.data![context.read<ProviderClass>().currentuser]
                      .company ==
                  null) {
                nameOfCompany = 'notavailable';
                bsofcompany = 'notavailable';
                chatchphraseofcompany = 'notavailable';
              } else {
                nameOfCompany =
                    '${snapshot.data![context.read<ProviderClass>().currentuser].company!.name}';
                bsofcompany =
                    '${snapshot.data![context.read<ProviderClass>().currentuser].company!.bs}';
                chatchphraseofcompany =
                    '${snapshot.data![context.read<ProviderClass>().currentuser].company!.bs}';
              }
              if (snapshot.data![context.read<ProviderClass>().currentuser]
                      .company ==
                  null) {
                nameOfCompany = 'notavailable';
                bsofcompany = 'notavailable';
                chatchphraseofcompany = 'notavailable';
              } else {
                nameOfCompany =
                    '${snapshot.data![context.read<ProviderClass>().currentuser].company!.name}';
                bsofcompany =
                    '${snapshot.data![context.read<ProviderClass>().currentuser].company!.bs}';
                chatchphraseofcompany =
                    '${snapshot.data![context.read<ProviderClass>().currentuser].company!.bs}';
              }
              if (snapshot.hasData) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 238, 177, 172),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8))),
                              width: MediaQuery.of(context).size.width / 1.7,
                              height: MediaQuery.of(context).size.height / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomeScreen()));
                                    },
                                    icon: const Icon(
                                      Icons.chevron_left,
                                      size: 35,
                                    ),
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 56.0, right: 56, top: 8),
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                          radius: 34,
                                          backgroundImage: NetworkImage(snapshot
                                              .data![context
                                                  .read<ProviderClass>()
                                                  .currentuser]
                                              .profileImage
                                              .toString())),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 48.0, right: 47, top: 10),
                                    child: AutoSizeText(
                                      snapshot
                                          .data![context
                                              .read<ProviderClass>()
                                              .currentuser]
                                          .name
                                          .toString(),
                                      maxLines: 3,
                                      maxFontSize: 18,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          height: 1,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 2.2,
                                width: MediaQuery.of(context).size.width / 2.8,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "Profile",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "ID:${snapshot.data![context.read<ProviderClass>().currentuser].id}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "Username:${snapshot.data![context.read<ProviderClass>().currentuser].username}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "Email:${snapshot.data![context.read<ProviderClass>().currentuser].email}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "Phone:${snapshot.data![context.read<ProviderClass>().currentuser].phone}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "Website:${snapshot.data![context.read<ProviderClass>().currentuser].website}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 27, right: 27, top: 25, bottom: 25),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Company",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 238, 177, 172),
                                  ),
                                ),
                                Text(
                                  "Name:$nameOfCompany",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 34, 105, 20),
                                  ),
                                ),
                                Text(
                                  "Catch Phrase:$chatchphraseofcompany",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 34, 105, 20),
                                  ),
                                ),
                                Text(
                                  "Bs:$bsofcompany",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 34, 105, 20),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 238, 177, 172),
                                    ),
                                  ),
                                ),
                                AutoSizeText(
                                  "${snapshot.data![context.read<ProviderClass>().currentuser].address!.city}\n${snapshot.data![context.read<ProviderClass>().currentuser].address!.street}\n${snapshot.data![context.read<ProviderClass>().currentuser].address!.suite}\n${snapshot.data![context.read<ProviderClass>().currentuser].address!.zipcode}\n",
                                  minFontSize: 2,
                                  maxFontSize: 16,
                                  maxLines: 10,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 34, 105, 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 11,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (context
                                                  .read<ProviderClass>()
                                                  .currentuser <
                                              snapshot.data!.length - 1) {
                                            Provider.of<ProviderClass>(context,
                                                    listen: false)
                                                .updateUserDetails();
                                          }
                                        },
                                        child: const Text(
                                          "Next",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromARGB(
                                                      255, 238, 177, 172)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}

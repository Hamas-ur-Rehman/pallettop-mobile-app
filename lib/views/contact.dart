// ignore_for_file: must_be_immutable, unnecessary_brace_in_string_interps

import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:httpservice/httpservice.dart';

class Contact extends StatefulWidget {
  const Contact({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool loading = false;
  void getapidata(String apix, context) async {
    setState(() {
      loading = true;
    });
    try {
      final result = await InternetAddress.lookup('www.google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        HttpService httpService = HttpService(apix);
        var data = await httpService.getContents();
        var decodedData = jsonDecode(data);

        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(decodedData['message'])));
        setState(() {
          loading = false;
        });
      }
    } on SocketException catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Something went wrong please try again later")),
      );
    }
  }

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController message = TextEditingController();

  TextEditingController subject = TextEditingController();

  String fname = "";
  String femail = "";
  String fsubject = "";
  String fmessage = "";
  @override
  Widget build(BuildContext context) {
    return loading
        ? const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SafeArea(
            child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: widget._formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, top: 50.0, bottom: 50),
                          child: Text("Contact Us",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                          labelText: "Name",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Name cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: "Email",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Email cannot be empty";
                          } else {
                            if (EmailValidator.validate(val)) {
                              return null;
                            } else {
                              return "Please enter a valid email";
                            }
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: subject,
                        decoration: InputDecoration(
                          labelText: "Subject",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Subject cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 6 * 24.0,
                        child: TextFormField(
                          controller: message,
                          maxLines: 6,
                          decoration: InputDecoration(
                            labelText: "Message",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Message cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color(0xff3054bf),
                        textColor: Colors.white,
                        elevation: 5,
                        onPressed: () async {
                          if (widget._formKey.currentState!.validate()) {
                            setState(() {
                              fname = name.text;
                              femail = email.text;
                              fsubject = subject.text;
                              fmessage = message.text;
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            });
                            getapidata(
                                'https://www.pallettop.com/api/contact.php?name=${fname}=&email=${femail}&subject=${fsubject}&message=${fmessage} ',
                                context);
                          }
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ));
  }
}

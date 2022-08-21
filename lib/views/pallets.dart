// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Pallets extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  final String collection_address;
  final String delivery_address;
  final String message;

  const Pallets(
      {required this.name,
      required this.email,
      required this.collection_address,
      required this.delivery_address,
      required this.message,
      required this.phone});

  @override
  State<Pallets> createState() => _PalletsState();
}

class _PalletsState extends State<Pallets> {
  final TextEditingController _standardcontroller = TextEditingController();
  final TextEditingController _bGradecontroller = TextEditingController();
  final TextEditingController _aGradecontroller = TextEditingController();
  final TextEditingController _lightEurocontroller = TextEditingController();
  final TextEditingController _mEurocontroller = TextEditingController();
  final TextEditingController _pbcontroller = TextEditingController();
  final TextEditingController _mediumpbcontroller = TextEditingController();
  final TextEditingController _convertedcontroller = TextEditingController();
  final TextEditingController _lightstandardcontroller =
      TextEditingController();
  final TextEditingController _wingerscontroller = TextEditingController();
  final TextEditingController _leggercontroller = TextEditingController();
  final TextEditingController _cpcontroller = TextEditingController();
  final TextEditingController _48sqcontroller = TextEditingController();
  final TextEditingController _yankeecontroller = TextEditingController();
  final TextEditingController _kaloncontroller = TextEditingController();
  final TextEditingController _spricercontroller = TextEditingController();
  final TextEditingController _plasticpbcontroller = TextEditingController();
  final TextEditingController _collarscontroller = TextEditingController();
  final TextEditingController _boxescontroller = TextEditingController();
  final TextEditingController _chickencontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool standard = false;
  bool bGrade = false;
  bool aGrade = false;
  bool lightEuro = false;
  bool mEuro = false;
  bool pb = false;
  bool mediumpb = false;
  bool converted = false;
  bool lightstandard = false;
  bool wingers = false;
  bool legger = false;
  bool cp = false;
  bool f48sq = false;
  bool yankee = false;
  bool kalon = false;
  bool spricer = false;
  bool plasticpb = false;
  bool collars = false;
  bool boxes = false;
  bool chicken = false;
  List palletsquantity = [];
  List pallets = [
    "Standard",
    "B Grade Euro",
    "A Grade Euro",
    "Light Euro",
    "M Euro",
    "PB Pallets",
    "Medium PB",
    "Converted",
    "Light Standard",
    "Wingers",
    "Legger St",
    "CP",
    "48 Sq",
    "Yankee",
    "Kalon",
    "Spricer",
    "Plastic PB",
    "Collars",
    "Boxes",
    "Chicken Boxes",
  ];
  String? simple;
  void addlist(int ind, String? controller) {
    palletsquantity.add({'pname': pallets[ind], 'quantity': controller});
  }

  void removelist(int ind) {
    palletsquantity.removeWhere((element) => element['pname'] == pallets[ind]);
  }

  Widget palletCheckBoxes(
      bool chkbox, int index, TextEditingController controller) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: chkbox,
          onChanged: (bool? value) {
            setState(() {
              chkbox = value!;
              if (!chkbox) {
                removelist(index);
              }
            });
          },
        ),
        Text(pallets[index], style: const TextStyle(fontSize: 18)),
        chkbox
            ? SizedBox(
                width: MediaQuery.of(context).size.width - 150,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          setState(() {
                            addlist(index, controller.text);
                          });
                        },
                        controller: controller,
                        decoration: InputDecoration(
                            labelText: "Quantity",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(),
                            )))))
            //fillColor: Colors.green

            : const SizedBox()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 50.0, bottom: 5),
                  child: Text("choose pallets",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("check the boxes to select the pallets",
                      style: TextStyle(fontSize: 18)),
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: standard,
                      onChanged: (bool? value) {
                        setState(() {
                          standard = value!;
                          if (!standard) {
                            removelist(0);
                          }
                        });
                      },
                    ),
                    Text(pallets[0], style: const TextStyle(fontSize: 18)),
                    standard
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(0, _standardcontroller.text);
                                      });
                                    },
                                    controller: _standardcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: bGrade,
                      onChanged: (bool? value) {
                        setState(() {
                          bGrade = value!;

                          if (!bGrade) {
                            removelist(1);
                          }
                        });
                      },
                    ),
                    Text(pallets[1], style: const TextStyle(fontSize: 18)),
                    bGrade
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(1, _bGradecontroller.text);
                                      });
                                    },
                                    controller: _bGradecontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: aGrade,
                      onChanged: (bool? value) {
                        setState(() {
                          aGrade = value!;
                          if (!standard) {
                            removelist(2);
                          }
                        });
                      },
                    ),
                    Text(pallets[2], style: const TextStyle(fontSize: 18)),
                    aGrade
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(2, _aGradecontroller.text);
                                      });
                                    },
                                    controller: _aGradecontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: lightEuro,
                      onChanged: (bool? value) {
                        setState(() {
                          lightEuro = value!;
                          if (!lightEuro) {
                            removelist(3);
                          }
                        });
                      },
                    ),
                    Text(pallets[3], style: const TextStyle(fontSize: 18)),
                    lightEuro
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(3, _lightEurocontroller.text);
                                      });
                                    },
                                    controller: _lightEurocontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: mEuro,
                      onChanged: (bool? value) {
                        setState(() {
                          mEuro = value!;
                          if (!mEuro) {
                            removelist(4);
                          }
                        });
                      },
                    ),
                    Text(pallets[4], style: const TextStyle(fontSize: 18)),
                    mEuro
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(4, _mEurocontroller.text);
                                      });
                                    },
                                    controller: _mEurocontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: pb,
                      onChanged: (bool? value) {
                        setState(() {
                          pb = value!;
                          if (!pb) {
                            removelist(5);
                          }
                        });
                      },
                    ),
                    Text(pallets[5], style: const TextStyle(fontSize: 18)),
                    pb
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(5, _pbcontroller.text);
                                      });
                                    },
                                    controller: _pbcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: mediumpb,
                      onChanged: (bool? value) {
                        setState(() {
                          mediumpb = value!;
                          if (!mediumpb) {
                            removelist(6);
                          }
                        });
                      },
                    ),
                    Text(pallets[6], style: const TextStyle(fontSize: 18)),
                    mediumpb
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(6, _mediumpbcontroller.text);
                                      });
                                    },
                                    controller: _mediumpbcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: converted,
                      onChanged: (bool? value) {
                        setState(() {
                          converted = value!;
                          if (!converted) {
                            removelist(7);
                          }
                        });
                      },
                    ),
                    Text(pallets[7], style: const TextStyle(fontSize: 18)),
                    converted
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(7, _convertedcontroller.text);
                                      });
                                    },
                                    controller: _convertedcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: lightstandard,
                      onChanged: (bool? value) {
                        setState(() {
                          lightstandard = value!;
                          if (!lightstandard) {
                            removelist(8);
                          }
                        });
                      },
                    ),
                    Text(pallets[8], style: const TextStyle(fontSize: 18)),
                    lightstandard
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(
                                            8, _lightstandardcontroller.text);
                                      });
                                    },
                                    controller: _lightstandardcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: wingers,
                      onChanged: (bool? value) {
                        setState(() {
                          wingers = value!;
                          if (!wingers) {
                            removelist(9);
                          }
                        });
                      },
                    ),
                    Text(pallets[9], style: const TextStyle(fontSize: 18)),
                    wingers
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(9, _wingerscontroller.text);
                                      });
                                    },
                                    controller: _wingerscontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: legger,
                      onChanged: (bool? value) {
                        setState(() {
                          legger = value!;
                          if (!legger) {
                            removelist(9);
                          }
                        });
                      },
                    ),
                    Text(pallets[10], style: const TextStyle(fontSize: 18)),
                    legger
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(10, _leggercontroller.text);
                                      });
                                    },
                                    controller: _leggercontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: cp,
                      onChanged: (bool? value) {
                        setState(() {
                          cp = value!;
                          if (!cp) {
                            removelist(11);
                          }
                        });
                      },
                    ),
                    Text(pallets[11], style: const TextStyle(fontSize: 18)),
                    cp
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(11, _cpcontroller.text);
                                      });
                                    },
                                    controller: _cpcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: f48sq,
                      onChanged: (bool? value) {
                        setState(() {
                          f48sq = value!;
                          if (!f48sq) {
                            removelist(12);
                          }
                        });
                      },
                    ),
                    Text(pallets[12], style: const TextStyle(fontSize: 18)),
                    f48sq
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(12, _48sqcontroller.text);
                                      });
                                    },
                                    controller: _48sqcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: yankee,
                      onChanged: (bool? value) {
                        setState(() {
                          yankee = value!;
                          if (!yankee) {
                            removelist(13);
                          }
                        });
                      },
                    ),
                    Text(pallets[13], style: const TextStyle(fontSize: 18)),
                    yankee
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(13, _yankeecontroller.text);
                                      });
                                    },
                                    controller: _yankeecontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: kalon,
                      onChanged: (bool? value) {
                        setState(() {
                          kalon = value!;
                          if (!kalon) {
                            removelist(14);
                          }
                        });
                      },
                    ),
                    Text(pallets[14], style: const TextStyle(fontSize: 18)),
                    kalon
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(14, _kaloncontroller.text);
                                      });
                                    },
                                    controller: _kaloncontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: spricer,
                      onChanged: (bool? value) {
                        setState(() {
                          spricer = value!;
                          if (!spricer) {
                            removelist(15);
                          }
                        });
                      },
                    ),
                    Text(pallets[15], style: const TextStyle(fontSize: 18)),
                    spricer
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(15, _spricercontroller.text);
                                      });
                                    },
                                    controller: _spricercontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: plasticpb,
                      onChanged: (bool? value) {
                        setState(() {
                          plasticpb = value!;
                          if (!plasticpb) {
                            removelist(16);
                          }
                        });
                      },
                    ),
                    Text(pallets[16], style: const TextStyle(fontSize: 18)),
                    plasticpb
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(16, _plasticpbcontroller.text);
                                      });
                                    },
                                    controller: _plasticpbcontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: collars,
                      onChanged: (bool? value) {
                        setState(() {
                          collars = value!;
                          if (!collars) {
                            removelist(17);
                          }
                        });
                      },
                    ),
                    Text(pallets[17], style: const TextStyle(fontSize: 18)),
                    collars
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(17, _collarscontroller.text);
                                      });
                                    },
                                    controller: _collarscontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: boxes,
                      onChanged: (bool? value) {
                        setState(() {
                          boxes = value!;
                          if (!boxes) {
                            removelist(18);
                          }
                        });
                      },
                    ),
                    Text(pallets[18], style: const TextStyle(fontSize: 18)),
                    boxes
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(18, _boxescontroller.text);
                                      });
                                    },
                                    controller: _boxescontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: chicken,
                      onChanged: (bool? value) {
                        setState(() {
                          chicken = value!;
                          if (!chicken) {
                            removelist(19);
                          }
                        });
                      },
                    ),
                    Text(pallets[19], style: const TextStyle(fontSize: 18)),
                    chicken
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width - 170,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      setState(() {
                                        addlist(19, _chickencontroller.text);
                                      });
                                    },
                                    controller: _chickencontroller,
                                    decoration: InputDecoration(
                                        labelText: "Quantity",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: const BorderSide(),
                                        )))))
                        //fillColor: Colors.green

                        : const SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                //button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width - 100,
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: const Color(0xff3054bf),
                          textColor: Colors.white,
                          elevation: 5,
                          onPressed: () {
                            List palleto = [];
                            _formKey.currentState!.save();
                            palleto.insertAll(0, [
                              {
                                "name": widget.name,
                                "email": widget.email,
                                "phone": widget.phone,
                                "collection_address": widget.collection_address,
                                "delivery_address": widget.delivery_address,
                                "pallets": palletsquantity
                              }
                            ]);
                            print(palleto);
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

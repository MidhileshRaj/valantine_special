import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_for_you/secondpage.dart';

class ProposalPage extends StatefulWidget {
  const ProposalPage({super.key});

  @override
  State<ProposalPage> createState() => _ProposalPageState();
}

class _ProposalPageState extends State<ProposalPage> {
  bool show = false;
  double size = 60;
  double fsize = 30;
  var i = 0;
  List data = [
    "Ayseri",
    "Yes Para Kuripe....",
    "No other way Kuripe.",
    "please para",
    "Eni paranjilel tym waste avu",
    "Nee enth paranjalu ank Yes venam",
    "Yes Yes Yes...",
    "Korch ulup nda...no parayan",
    "Yes paranjillel scene avue....",
    "Only Accept YES",
  ];
  String textData = "To be honest . \n If you want to say No then pres No. ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 300,
                      height: 300,
                      child: show
                          ? Lottie.asset("assets/animation/proposal.json")
                          : Lottie.asset("assets/animation/proposa2.json")),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          show = true;
                          setState(() {});
                          Future.delayed(const Duration(seconds: 5), () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SecondPage(),
                                ));
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: size,
                          width: size,
                          color: Colors.green,
                          child: Text(
                            "Yes",
                            style: TextStyle(fontSize: fsize),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          size += 10;
                          if (i < data.length) {
                            textData = data[i];
                            i++;
                          } else {
                            textData = data.last;
                          }
                          setState(() {});
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 60,
                          color: Colors.red,
                          child: const Text(
                            "No",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                // top: MediaQuery.sizeOf(context).height/1.9,
                left: MediaQuery.sizeOf(context).width / 4,
                child: show
                    ? const Text(
                        "I know....",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        textData,
                        style: const TextStyle(
                            fontSize: 40,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

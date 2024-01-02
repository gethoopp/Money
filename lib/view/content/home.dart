import 'package:flutter/material.dart';

import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:money/controller/box.dart';

import 'package:money/controller/controller.dart';
import 'package:money/data/data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final use = boxUser.get('name_${nameHolder.text}') as Person;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05, top: size.height * 0.05),
                  child: const Icon(Icons.menu),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.05, left: size.width * 0.05),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Welcome,',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      children: [TextSpan(text: '\n ${use.nameHolder}')],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.016),
              child: CreditCardWidget(
                glassmorphismConfig: Glassmorphism(
                    gradient: const LinearGradient(
                        colors: [Colors.black54, Colors.blue]),
                    blurX: 1,
                    blurY: 5),
                cardType: CardType.visa,
                bankName: 'Bank Rakyat Indonesia',
                cardNumber: use.numberCard,
                cvvCode: use.numberCVV,
                isHolderNameVisible: use.nameHolder.isEmpty ? false : true,
                expiryDate:
                    '${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}',
                enableFloatingCard: true,
                cardHolderName: use.nameHolder,
                showBackView: false,
                obscureCardNumber: true,
                onCreditCardWidgetChange: (value) {},
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    'Easy Operation',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  slivers: <Widget>[
                    SliverList.list(children: [
                      Row(
                        children: [
                          Card(
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(226, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 65,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.repeat,
                                    color: Colors.black26,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(226, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 65,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.moneyBillTransfer,
                                    color: Colors.black26,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(226, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 65,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.arrowDown,
                                    color: Colors.black26,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(226, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 65,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.receipt,
                                    color: Colors.black26,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(226, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 65,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.opencart,
                                    color: Colors.black26,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ])
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    'Previous Transaction',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            Expanded(
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
                  SliverList.list(addSemanticIndexes: true, children: [
                    Card(
                      elevation: 0.5,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(226, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 65,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.house,
                                    color: Colors.black26,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: 0.012,
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Rental Income',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                              text: '\n14 July 2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300))
                                        ]),
                                    textScaleFactor: 1,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        '\$+6,500.000',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    Card(
                      elevation: 0.5,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(226, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 65,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.house,
                                    color: Colors.black26,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: 0.3,
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Grocery Shopping',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                              text: '\n14 July 2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300))
                                        ]),
                                    textScaleFactor: 1,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        '\$-1,500.00',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Card(
                      elevation: 0.5,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(226, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 65,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.house,
                                    color: Colors.black26,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: 0.012,
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Rental Income',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                              text: '\n14 July 2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300))
                                        ]),
                                    textScaleFactor: 1,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        '\$+6,500.00',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Card(
                      elevation: 0.5,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(226, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 65,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.house,
                                    color: Colors.black26,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: 0.012,
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Rental Income',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                              text: '\n14 July 2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300))
                                        ]),
                                    textScaleFactor: 1,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        '\$+6,500.00',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Card(
                      elevation: 0.5,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(226, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 65,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.house,
                                    color: Colors.black26,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: 0.012,
                                  child: Text.rich(
                                    TextSpan(
                                        text: 'Rental Income',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                              text: '\n14 July 2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300))
                                        ]),
                                    textScaleFactor: 1,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        '\$+6,500.00',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

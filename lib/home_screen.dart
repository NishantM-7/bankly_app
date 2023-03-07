import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Good Afternoon',
                style: TextStyle(fontSize: 22),
              ),
              Text(
                'John Dahmer',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.notifications,
                color: Color(0xFF24D3B5),
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                Container(
                  child: const Text(
                    '₹234,300.32',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Row(
                    children: [
                      addAndPayContainer(
                          'Pay',
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.white,
                            size: 16,
                          )),
                      addAndPayContainer(
                          'Add',
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          )),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFF424242),
                  thickness: 1,
                  indent: 60,
                  endIndent: 60,
                ),
                HomeScreenCard(),
              ],
            ),
            HomeScreenScrollableWidget()
          ],
        ),
      ),
    );
  }

  Container addAndPayContainer(String name, Icon icon) {
    return Container(
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFF2F2F2F), borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          icon,
        ],
      ),
    );
  }
}

class HomeScreenScrollableWidget extends StatelessWidget {
  const HomeScreenScrollableWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            transform: Matrix4.translationValues(
                0, MediaQuery.of(context).size.height * 0.3, 0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xFF24D3B5))),
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                      child: Text(
                        'Request',
                        style: TextStyle(color: Color(0xFF24D3B5)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF24D3B5)),
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text(
                        'History',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Your Rewards',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF636F8C),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                  size: 34,
                )),
          ),
          transform: Matrix4.translationValues(
              180, MediaQuery.of(context).size.height * 0.27, 0),
        )
      ],
    );
  }
}

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 65, vertical: 30),
      margin: EdgeInsets.only(left: 55, right: 45, top: 10),
      child: Transform(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                    colors: [Color(0xFF909EC0), Color(0xFF24D3B5)])),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Balance',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          '₹ ******.**',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    height: 80,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      '**** **** 2240',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Nishant Kumar Mishra',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ]),
          ),
          transform: Matrix4.translationValues(-18, 5, 0)
            ..setEntry(3, 2, 0.0008)
            ..rotateX((-65) / 180 * pi)
            ..rotateZ(2 / 180 * pi)),
    );
  }
}

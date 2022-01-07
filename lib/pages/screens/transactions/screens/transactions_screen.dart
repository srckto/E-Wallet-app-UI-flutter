import 'package:e_wallet_mobile_app/pages/screens/transactions/widgets/build_transactions_users.dart';
import 'package:flutter/material.dart';

import 'package:e_wallet_mobile_app/models/user_model.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';

// ignore: must_be_immutable
class TransactionsScreen extends StatefulWidget {
  TransactionsScreen({Key? key}) : super(key: key);

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  bool _toggleButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Transactions",
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/search_icon.png",
                    color: k_blue,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: k_grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: ElevatedButton(
                          child: Text("Incomes", style: Theme.of(context).textTheme.headline2),
                          onPressed: () {
                            setState(() {
                              _toggleButton = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _toggleButton ? k_yellow : k_grey,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: ElevatedButton(
                          child: Text("Expenses", style: Theme.of(context).textTheme.headline2),
                          onPressed: () {
                            setState(() {
                              _toggleButton = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _toggleButton ? k_grey : k_yellow,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: usersTransactions.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 15);
                },
                itemBuilder: (BuildContext context, int index) {
                  return BuildUserTransaction(
                    user: usersTransactions[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// void xxx(){
//   CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Colors.transparent,
//             title: Text(
//               "Transactions",
//               style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
//             ),
//             centerTitle: true,
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Image.asset(
//                   "assets/images/search_icon.png",
//                   color: k_blue,
//                 ),
//               ),
//               SizedBox(width: 10),
//             ],
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Container(
//                 height: 60,
//                 decoration: BoxDecoration(
//                   color: k_grey,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         width: double.infinity,
//                         height: double.infinity,
//                         child: ElevatedButton(
//                           child: Text("Incomes", style: Theme.of(context).textTheme.headline2),
//                           onPressed: () {
//                             setState(() {
//                               _toggleButton = true;
//                             });
//                           },
//                           style: ElevatedButton.styleFrom(
//                             primary: _toggleButton ? k_yellow : k_grey,
//                             elevation: 0.0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         width: double.infinity,
//                         height: double.infinity,
//                         child: ElevatedButton(
//                           child: Text("Expenses", style: Theme.of(context).textTheme.headline2),
//                           onPressed: () {
//                             setState(() {
//                               _toggleButton = false;
//                             });
//                           },
//                           style: ElevatedButton.styleFrom(
//                             primary: _toggleButton ? k_grey : k_yellow,
//                             elevation: 0.0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
//               child: ListView.separated(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: transactionUsers.length,
//                 separatorBuilder: (BuildContext context, int index) {
//                   return SizedBox(height: 15);
//                 },
//                 itemBuilder: (BuildContext context, int index) {
//                   return BuildTransactionsUser(
//                     user: transactionUsers[index],
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
// }
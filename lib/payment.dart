import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final key = GlobalKey<FormState>();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.white,
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/payment image.jpg"),
            TextFormField(
              controller: amountController,
              decoration: const InputDecoration(
                hintText: "Enter amount",
                labelText: "Amount",
                icon: Icon(
                  Icons.payment,
                  color: Colors.black,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please fill this field";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){},
                child: const Text("Pay"))
          ],
        ),
      ),
    );
  }
}

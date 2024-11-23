import 'package:flutter/material.dart';

class OrderCoffeeScreen extends StatefulWidget {
  final String image;
  static const String routename = "ordercoffee";

  const OrderCoffeeScreen({super.key, required this.image});

  @override
  State<OrderCoffeeScreen> createState() => _OrderCoffeeScreenState();
}

class _OrderCoffeeScreenState extends State<OrderCoffeeScreen> {
  bool isPickupSelected = false;
  int coffeeCount = 1;
  String? userNote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Spacer(),
                  const Text(
                    "Order",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPickupSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isPickupSelected
                          ? Colors.grey
                          : const Color(0xFFD2691E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text("Deliver"),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        isPickupSelected = true;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: isPickupSelected
                          ? const Color(0xFFD2691E)
                          : Colors.transparent,
                      side: BorderSide(
                        color:
                            isPickupSelected ? Colors.transparent : Colors.grey,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Pick Up",
                      style: TextStyle(
                        color: isPickupSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Delivery Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sahrkia, Minia-Elqamh",
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, size: 16),
                    label: const Text("Edit Address"),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton.icon(
                    onPressed: () {
                      _showAddNoteModal(context);
                    },
                    icon: const Icon(Icons.note_add, size: 16),
                    label: Text(
                      userNote == null ? "Add Note" : "Add Note +1",
                      style: TextStyle(
                        color: userNote == null ? Colors.black : Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(height: 40),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                    backgroundImage: AssetImage(widget.image),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Caffe Mocha",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "Deep Foam",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (coffeeCount > 1) coffeeCount--;
                          });
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Text("$coffeeCount"),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            coffeeCount++;
                          });
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.discount, color: Colors.orange),
                  SizedBox(width: 10),
                  Text(
                    "1 Discount is Applies",
                    style: TextStyle(color: Colors.orange),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
              const Divider(height: 40),
              const Text(
                "Payment Summary",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Price"),
                  Text("\$ 4.53"),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Delivery Fee"),
                  Text(
                    "\$ 2.0 \$ 1.0",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(Icons.account_balance_wallet, color: Colors.orange),
                  SizedBox(width: 10),
                  Text("Cash/Wallet"),
                  Spacer(),
                  Text("\$ 5.53"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'تم خصم 3 دولار من كارتك النقدي. يرجى متابعة طلبك في صفحة الطلبات.',
                        ),
                        duration: const Duration(seconds: 3),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD2691E),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text("Order"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddNoteModal(BuildContext context) {
    TextEditingController noteController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: noteController,
                decoration: const InputDecoration(
                  labelText: "Add Note",
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    userNote = noteController.text;
                  });
                  Navigator.pop(context);
                },
                child: const Text("Save"),
              ),
            ],
          ),
        );
      },
    );
  }
}

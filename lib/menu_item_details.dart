import 'package:flutter/material.dart';

class MenuItemDetails extends StatefulWidget {
  const MenuItemDetails({super.key});
  @override
  State<MenuItemDetails> createState() => _MenuItemDetailsState();
}

class _MenuItemDetailsState extends State<MenuItemDetails> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 195, 119),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Color.fromARGB(255, 173, 67, 43),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://cdn.create.vista.com/downloads/ddd458d0-b8a8-4f09-9c54-73c40b90aa8f_1024.jpeg',
                height: 400,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30),

            Text(
              'Burger Mix Combo',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 173, 67, 43),
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Icon(Icons.star, color: Color.fromARGB(255, 173, 67, 43)),
                Expanded(
                  flex: 7,
                  child: Text(
                    '4(5)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 195, 119),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          color: Color.fromARGB(255, 173, 67, 43),
                          icon: Icon(Icons.remove),

                          onPressed: () {
                            setState(() {
                              if (counter > 1) counter--;
                            });
                          },
                        ),
                        Text(
                          counter.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 173, 67, 43),
                          icon: Icon(Icons.add),

                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),
              ],
            ),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 173, 67, 43),
              ),
            ),
            Text(
              '2 Burger + fries + drink with 30% Sale',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('ADD TO CART'),
            ),

            const SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(12),
              color: Color.fromARGB(255, 245, 195, 119),
              child: Row(
                children: [
                  Text(
                    'Review',
                    style: TextStyle(color: Color.fromARGB(255, 173, 67, 43),fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('Send Your Feedback Now'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

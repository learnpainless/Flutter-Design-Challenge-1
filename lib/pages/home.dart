import 'package:fdc_1/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _buildAppBar(),
          _myCards(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child:
                        _buildActivityCard('Add income', Icons.arrow_outward)),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                    child:
                        _buildActivityCard('Add expense', Icons.arrow_outward)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: _buildDebtCard('\$1,800', 'Debts')),
                SizedBox(
                  width: 4,
                ),
                Expanded(child: _buildDebtCard('\$2,700', 'Savings')),
              ],
            ),
          ),
          _buildStatCard(),
          _buildExpensesWidget(),
        ],
      ),
    );
  }

  _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Balance'),
              Text(
                '\$12,563',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            mini: true,
            elevation: 0,
            backgroundColor: Colors.grey.shade300,
            shape: CircleBorder(),
          ),
          const SizedBox(
            width: 12,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            mini: true,
            elevation: 0,
            backgroundColor: Colors.grey.shade300,
            shape: CircleBorder(),
          ),
        ],
      ),
    );
  }

  _myCards() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'My cards',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 96,
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kWidgetBorder)),
                  child: Icon(
                    Icons.add,
                    size: 36,
                    color: Colors.black,
                  ),
                  elevation: 0,
                ),
              ),
              _buildCard(Colors.black, Colors.white, 'money.png', '24,800',
                  '**** 9523'),
              _buildCard(Colors.grey.shade50, Colors.black, 'visa.png',
                  '13,200', '**** 6729'),
            ],
          ),
        )
      ],
    );
  }

  _buildCard(Color bgColor, Color textColor, String icon, String amount,
      String cardNumber) {
    return SizedBox(
      width: 200,
      child: Card(
        color: bgColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kWidgetBorder)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/$icon',
                    height: 32,
                    width: 32,
                  ),
                  Spacer(),
                  Text(
                    cardNumber,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Spacer(),
              Text(
                '\$$amount',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildActivityCard(String text, IconData icon) {
    return Card(
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kWidgetBorder)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            CircleAvatar(
              child: Icon(
                icon,
                color: Colors.black,
              ),
              backgroundColor: Colors.grey.shade300,
            )
          ],
        ),
      ),
    );
  }

  _buildDebtCard(String text, String amount) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kWidgetBorder)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              amount,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  _buildStatCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xFFE0C4EA),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kWidgetBorder)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text(
                'Control your finances',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text('Statistics'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildExpensesWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kWidgetBorder)),
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Expenses',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add))
                ],
              ),
              Row(
                children: [
                  _buildExpenseIcon('\$250', Icons.wine_bar),
                  _buildExpenseIcon('\$250', Icons.wine_bar),
                  _buildExpenseIcon('\$250', Icons.wine_bar),
                  _buildExpenseIcon('\$250', Icons.wine_bar),
                  _buildExpenseIcon('\$250', Icons.wine_bar),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildExpenseIcon(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey.shade400,
            onPressed: () {},
            child: Icon(
              icon,
              color: Colors.black,
            ),
            mini: true,
            elevation: 0,
            shape: CircleBorder(),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

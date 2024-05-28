## Features

You can create cool swipe card list like this.



## Getting started

You can use this package like as below:

```dart
class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 180),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: deviceWidth < 398 ? 345 : 400,
                alignment: Alignment.topCenter,
                child: CoolSwiper(
                  initAnimationOffset: 20,
                  children: List.generate(
                    getCardList().length,
                        (index) => CardContent(
                      cardItem: getCardList()[index],
                      deviceWidth: deviceWidth,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<CardModel> getCardList() {
  final List<CardModel> cardList = [
    CardModel("Mellat",80, 6059, "12/26", "assets/images/mellat.png", Colors.red),
    CardModel("Master",100, 2012, "11/19", "assets/images/mastercard.png",
        Colors.yellow.shade700),
    CardModel("PayPal",20, 7923, "02/05", "assets/images/paypal.png", Colors.blue),
    CardModel("Visa",270, 9881, "07/22", "assets/images/visa.png", Colors.green),
  ];
  return cardList;
}

class CardModel {
  final String bankName;
  final double accountBalance;
  final int lastCardNumber;
  final String expireDate;
  final String bankImage;
  final Color cardColor;

  CardModel(this.bankName,this.accountBalance, this.lastCardNumber, this.expireDate,
      this.bankImage, this.cardColor);
}

class TransactionModel {
  final String title;
  final int price;
  final String date;
  final bool isSent;

  TransactionModel(this.title, this.price, this.date, this.isSent);
}
```

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

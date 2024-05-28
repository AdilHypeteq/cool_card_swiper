// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


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

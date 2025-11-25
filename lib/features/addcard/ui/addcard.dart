import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:openfashion/core/widgets/appbutton.dart';
import 'package:openfashion/core/widgets/stack_app.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isShow = false;

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          leading: Icon(Icons.menu, color: Colors.white),
          title: Image.asset('assets/images/Group.png', width: 100),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 16),
            Icon(Icons.shopping_bag_outlined, color: Colors.white),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 170, child: stackapp()),
              CreditCardWidget(
                padding: 6,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isShow,
                onCreditCardWidgetChange: (v) {},
                cardBgColor: Color(0xFF3B41C5),
                obscureCardCvv: false,
                obscureCardNumber: true,
                isHolderNameVisible: true,
              ),
              SizedBox(height: 20),

              /// form
              CreditCardForm(
                formKey: _key,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: onCreditCardModelChange,
                isCardHolderNameUpperCase: true,
                obscureCvv: false,
                inputConfiguration: InputConfiguration(
                  cardNumberTextStyle: TextStyle(
                    fontFamily: "TenorSans",
                    color: Colors.white,
                  ),
                  cardNumberDecoration: InputDecoration(
                    hintText: "Card Number",
                    hintStyle: TextStyle(
                      fontFamily: "TenorSans",
                      color: Colors.white,
                    ),
                    counterStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  cardHolderTextStyle: TextStyle(fontFamily: "TenorSans"),
                  cardHolderDecoration: InputDecoration(
                    hintText: "Card Number",
                    hintStyle: TextStyle(
                      fontFamily: "TenorSans",
                      color: Colors.white,
                    ),
                    counterStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  cvvCodeTextStyle: TextStyle(
                    fontFamily: "TenorSans",
                    color: Colors.white,
                  ),
                  cvvCodeDecoration: InputDecoration(
                    hintText: "CVV",
                    hintStyle: TextStyle(
                      fontFamily: "TenorSans",
                      color: Colors.white,
                    ),
                    counterStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  expiryDateTextStyle: TextStyle(
                    fontFamily: "TenorSans",
                    color: Colors.white,
                  ),
                  expiryDateDecoration: InputDecoration(
                    hintText: "Expiry Date",
                    hintStyle: TextStyle(
                      fontFamily: "TenorSans",
                      color: Colors.white,
                    ),
                    counterStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Appbutton(
                title: 'Add Card',
                onTap: () {
                  if (_key.currentState!.validate()) {
                    final data = {
                      'number': cardNumber,
                      'name': cardHolderName,
                      'date': expiryDate,
                      'cvv': cvvCode,
                    };

                    Navigator.pop(context, data);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel data) {
    setState(() {
      cardNumber = data.cardNumber;
      cardHolderName = data.cardHolderName;
      cvvCode = data.cvvCode;
      expiryDate = data.expiryDate;
      isShow = data.isCvvFocused;
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final VoidCallback onSubmit;
  final VoidCallback onCancel;

  const CustomDialog({
    super.key,
    required this.onSubmit,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Close Button
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(CupertinoIcons.clear, size: 26),
              ),
            ),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.check, color: Colors.green, size: 40),
            ),

            SizedBox(height: 20),

            /// Title
            Text(
              "Payment Successful",
              style: TextStyle(
                fontFamily: "Tenor_Sans",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 10),

            /// Subtitle
            Text(
              "Your payment has been completed successfully.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Tenor_Sans",
                fontSize: 14,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 15),
            Text(
              "Payment ID: 15263541",
              style: TextStyle(fontFamily: "Tenor_Sans", color: Colors.black87),
            ),

            SizedBox(height: 25),

            /// Rating Text
            Text(
              "Rate your purchase",
              style: TextStyle(
                fontFamily: "Tenor_Sans",
                fontSize: 17,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 15),

            /// Rating Stars
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Icon(Icons.star, color: Colors.amber, size: 28),
              ),
            ),

            SizedBox(height: 30),

            /// Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onSubmit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontFamily: "Tenor_Sans",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: onCancel,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontFamily: "Tenor_Sans",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

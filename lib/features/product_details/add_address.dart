import 'package:flutter/material.dart';
import 'package:openfashion/core/widgets/appbutton.dart';
import 'package:openfashion/core/widgets/stack_app.dart';
import 'package:openfashion/features/product_details/ui/widgets/build_input_feild.dart';

// ignore: must_be_immutable
class AddAddress extends StatelessWidget {
  AddAddress({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          SizedBox(height: 170, child: stackapp()),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: BuildInputFeild(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                        controller: firstNameController,
                        label: 'First name',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: BuildInputFeild(
                        validator: (value) => (value == null || value.isEmpty)
                            ? 'Please enter your last name'
                            : null,
                        controller: lastNameController,
                        label: 'Last name',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                /// Address
                BuildInputFeild(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                  controller: addressController,
                  label: 'Address',
                ),
                const SizedBox(height: 25),

                /// City
                BuildInputFeild(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your city';
                    }
                    return null;
                  },
                  controller: cityController,
                  label: 'City',
                ),
                const SizedBox(height: 25),

                /// State + Zip Code
                Row(
                  children: [
                    Expanded(
                      child: BuildInputFeild(
                        validator: (value) => (value == null || value.isEmpty)
                            ? 'Please enter your state'
                            : null,
                        controller: stateController,
                        label: 'State',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: BuildInputFeild(
                        validator: (value) => (value == null || value.isEmpty)
                            ? 'Please enter your ZIP code'
                            : null,
                        controller: zipCodeController,
                        label: 'ZIP code',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                /// Phone number
                BuildInputFeild(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                  controller: phoneController,
                  label: 'Phone number',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Spacer(),
          Appbutton(
            title: 'Add now',
            onTap: () {
              if (formKey.currentState!.validate()) {
                final data = {
                  'firstName': firstNameController.text,
                  'lastName': lastNameController.text,
                  'address': addressController.text,
                  'city': cityController.text,
                  'phone': phoneController.text,
                  'state': stateController.text,
                  'zipCode': zipCodeController.text,
                };
                Navigator.pop(context, data);
              }
            },
          ),
        ],
      ),
    );
  }
}

import 'package:daan_i_app/core/app_export.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';

class CustProfileTabAddressScreen extends StatefulWidget {
  const CustProfileTabAddressScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return CustProfileTabAddressScreenState();
  }
}
//CustProfileTabController controller = Get.put(CustProfileTabController());

class CustProfileTabAddressScreenState extends State<StatefulWidget> {
  String? selectedState;
  final List<String> statesName = [
    "Andaman & Nicobar Islands",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chandigarh",
    "Chhattisgarh",
    "Dadra & Nagar Haveli & Daman & Diu",
    "Delhi",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu & Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Panducherry",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
  ];

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Change Address",
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! 1st Name textfield
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Full Name(Required)*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),

            //! 2nd Phone number  textfield

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Phone number(Required)*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),

            //! House No textfield
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "House No./Landmark, Colony(Required)*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),

            //! Pincode textfield
            Row(children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 12, top: 10, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Pincode(Required)*",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),

              //! City section
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 12, top: 10, bottom: 20, right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "City(Required)*",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
            ]),

            //! Selected state
            Container(
              margin: EdgeInsets.only(left: 14, right: 12, bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 62, 56, 56)),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                isExpanded: true,
                value: selectedState,
                hint: const Text("Select State"),
                items: statesName.map((e) {
                  return DropdownMenuItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: TextStyle(color: Colors.black.withOpacity(.7)),
                      ));
                }).toList(),
                onChanged: (value) {
                  selectedState = value;
                  setState(() {});
                },
              )),
            ),

            //! Update Address button
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomElevatedButton(
                padding: EdgeInsets.symmetric(vertical: 10.w),
                onTap: () {},
                text: "Update Address",
              ),
            )
          ],
        ),
      ),
    );
  }
}

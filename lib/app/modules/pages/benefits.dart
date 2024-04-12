import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pahtan_24_items/app/data/my_helper.dart';
import 'package:pahtan_24_items/app/modules/website/views/website_view.dart';

class Benefits extends StatefulWidget {
  const Benefits({super.key});

  @override
  State<Benefits> createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
  Future<bool> checkInternetConnectivity() async {
    Connectivity connectivity = Connectivity();
    var connectivityResult = await connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ပဌာန်း ၂၄ ပစ္စည်း",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "ရွတ်ဖတ်ရခြင်း အကျိုးကျေးဇူး",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),

              const Text("-----------------------------------"),
              const SizedBox(
                height: 30,
              ),
              Text(
                MyHelper.benefits(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "ဆော့ဝဲဗားရှင်း 1.0",
                style: TextStyle(fontSize: 11),
              ),
              GFButton(
                onPressed: () async {
                  bool isConnected = await checkInternetConnectivity();
                  if (!isConnected) {
                    GFToast.showToast("အင်တာနက် လိုအပ်ပါသည်။", context);
                  } else {
                    GFToast.showToast("Checking update...", context);
                    Get.to(
                      const WebsiteView(),
                    );
                  }
                },
                text: "Check For Update",
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                color: Colors.amberAccent,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const Row(
                children: [
                  Text("အခြားဆော့ဝဲများ"),
                ],
              ),

              // Software One
              GestureDetector(
                onTap: () async {
                  bool isConnected = await checkInternetConnectivity();
                  if (!isConnected) {
                    GFToast.showToast("အင်တာနက် လိုအပ်ပါသည်။", context);
                  } else {
                    Get.to(
                      const WebsiteView(),
                    );
                  }
                },
                child: const GFCard(
                  boxFit: BoxFit.cover,
                  title: GFListTile(
                    avatar: GFAvatar(
                      backgroundImage: AssetImage('assets/11_thote.jpeg'),
                    ),
                    title: Text(
                      'ပရိတ်ကြီး ၁၁ သုတ်',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subTitle: Text('ပရိတ်တရားတော်များ ရွတ်ဖတ် ပူဇော်ရန်'),
                  ),
                  elevation: 5,
                ),
              ),

              const Divider(
                height: 2,
                thickness: 0.5,
                indent: 30,
                endIndent: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GFImageOverlay(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    image: AssetImage('assets/tech4mm_logo.jpeg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Tech4MM Co., Ltd.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text("မှ ကုသိုယ်ပြု လှူဒါန်းပါသည်။"),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      "Address:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "No. 231 (2nd Floor), AungTagon St, 5 Qr, Dawbon Twp, Yangon, Myanmar",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),

              //Contact
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      "Contact:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Phone: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "+959 777 56 22 56",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Website: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "https://tech4mm.com/",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Email: ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "infos@tech4mm.com",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileUI extends StatefulWidget {
  const ProfileUI({super.key});

  @override
  State<ProfileUI> createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            clipBehavior: Clip.none,
            children: [
              // صورة الكافر
              Image.asset(
                "assets/images/fbCover.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 225,
              ),

              // جزء ايقونات الباك و السيرش
              Positioned(
                left: 15,
                top: 40,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(31, 0, 0, 0),
                      ),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 270,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(31, 0, 0, 0),
                      ),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // ايقونة الكاميرا اللي بتغير صورة الكافر
              Positioned(
                left: 325,
                bottom: 15,
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 235, 235, 235),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.5,
                    ),
                  ),
                  child: const Icon(Icons.camera_alt),
                ),
              ),

              // صورة البروفايل
              Positioned(
                left: 10,
                bottom: -48,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // الصورة
                    const CircleAvatar(
                      radius: 88,
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        width: 170.0,
                        height: 170.0,
                        child: CircleAvatar(
                          radius: 90,
                          backgroundImage: AssetImage(
                            "assets/images/profile2.jpg",
                          ),
                        ),
                      ),
                    ),

                    // Container(
                    //   width: 170.0,
                    //   height: 170.0,
                    //   decoration: BoxDecoration(
                    //     borderRadius:
                    //         const BorderRadius.all(Radius.circular(100)),
                    //     border: Border.all(
                    //       color: Colors.white,
                    //       width: 5,
                    //     ),
                    //   ),
                    //   child: const CircleAvatar(
                    //     radius: 90,
                    //     backgroundImage: AssetImage(
                    //       "assets/images/profile2.jpg",
                    //     ),
                    //   ),
                    // ),

                    // حماية صورة البروفايل
                    Positioned(
                      left: 70,
                      bottom: 10,
                      child: Image.asset(
                        "assets/images/shield.png",
                        width: 25,
                        height: 25,
                      ),
                    ),

                    // ايقونة الكاميرا اللي بتغير صورة البروفايل
                    Positioned(
                      right: 10,
                      left: 125,
                      bottom: 6,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 235, 235),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.5,
                          ),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 46),

          // العمود الرئيسي للصفحة
          Column(
            children: [
              // اسم المستخدم
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "Bosy Saeed",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ],
              ),

              // عدد الاصدقاء
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                        Text(
                          "14",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          " friends",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // ازرار

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     // fixedSize: const Size(150.0, 30.0),
                    //     elevation: 0,
                    //     backgroundColor: Colors.blue[700],
                    //     shape: const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(8),
                    //       ),
                    //     ),
                    //   ),
                    //   onPressed: () {},
                    //   child: const Row(
                    //     children: [
                    //       Icon(Icons.add, color: Colors.white),
                    //       SizedBox(
                    //         width: 10,
                    //       ),
                    //       Text(
                    //         "Add to story",
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    // زرار اضف للقصة
                    MaterialButton(
                      minWidth: 145,
                      color: Colors.blue[700],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Add to story",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    // زرار تعديل البروفايل
                    MaterialButton(
                      minWidth: 145,
                      color: const Color.fromARGB(228, 228, 228, 228),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Edit profile",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),

                    // زرار المزيد
                    SizedBox(
                      width: 50,
                      child: MaterialButton(
                          color: const Color.fromARGB(228, 228, 228, 228),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {},
                          child: const Icon(
                            Icons.more_horiz,
                            size: 18,
                          )),
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     elevation: 0,
                    //     backgroundColor: const Color.fromARGB(228, 228, 228, 228),
                    //     shape: const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(8),
                    //       ),
                    //     ),
                    //   ),
                    //   onPressed: () {},
                    //   child: const Text(
                    //     "...",
                    //     style: TextStyle(color: Colors.black, fontSize: 20),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 3),
              // الفاصل الرصاصي التخين بين المستخدم والتابات التلاته
              Container(
                color: Colors.grey[300],
                width: double.infinity,
                height: 6,
              ),

              // ال3 تابات
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    // تاب البوستات

                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        width: 65,
                        height: 35,
                        color: const Color.fromARGB(155, 227, 242, 253),
                        child: Center(
                          child: Text(
                            "Posts",
                            style: TextStyle(
                              color: Colors.blue[400],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // تاب الصور
                    const SizedBox(width: 20),
                    Text(
                      "Photos",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),

                    // تاب الفيديوز
                    const SizedBox(width: 20),
                    Text(
                      "Videos",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),

              // الفاصل الرصاصي بين التابات والتفاصيل
              const SizedBox(height: 10),
              Container(
                color: Colors.grey[100],
                width: double.infinity,
                height: 2,
              ),

              // التفاصيل
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 15),

                // عمود التفاصيل
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // العنوان
                    const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    //(المدرسة) المعلومة الاولى
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/grad_hat_icon.png",
                          width: 26,
                          height: 26,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Went to El-Geel El-Muslim",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // (الكلية) المعلومة التانية
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/grad_hat_icon.png",
                          width: 26,
                          height: 26,
                        ),
                        const SizedBox(width: 10),
                        const SizedBox(
                          width: 330,
                          child: Text(
                            "Studied at Business Information System (BIS), Faculty of Commerce, Tanta Univ...",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),

                    // المعلومة التالتة (تاريخ الانضمام لفيسبوك)
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/time.png",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          const SizedBox(
                            child: Text(
                              "Joined May 2017",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),

                    // المزيد من المعلومات
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.more_horiz),
                          SizedBox(width: 10),
                          SizedBox(
                            child: Text(
                              "See your About info",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // زرار تعديل التفاصيل العامة
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: const Color.fromARGB(155, 227, 242, 253),
                elevation: 0,
                minWidth: 330,
                onPressed: () {},
                child: Text(
                  "Edit public details",
                  style: TextStyle(
                    color: Colors.blue[400],
                  ),
                ),
              ),

              // جزء عرض الأصدقاء و الاقتراحات
              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Friends",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "14 friends",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Suggested",
                      style: TextStyle(color: Colors.blue[400], fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

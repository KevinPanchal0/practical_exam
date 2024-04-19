import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCards extends StatelessWidget {
   final dynamic image1;
   final String title;
   final List<String> itemImages;
  const MyCards({super.key, required this.title, this.image1, required this.itemImages,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2,)
        ),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(height: 10,),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(image1)
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(fontSize: 25.sp),),
                    Text('Smartphone | 2. Data Cable | \n3. Ejection Pin * Galaxy S24 Ultra does.',style: TextStyle(fontSize: 12.sp,color: Colors.grey[700]),),
                  ],
                ),
              ],
            ),
                const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('\$ 1200',style: TextStyle(fontSize: 20.sp),),
                const SizedBox(width: 30,),
                Text('3.2(3000 Reviews)',style: TextStyle(fontSize: 20.sp),),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemImages.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: 150.w,
                      height: 200.w,
                      child: Image.asset(itemImages[index])
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
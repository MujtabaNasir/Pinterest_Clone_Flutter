import 'package:get/get.dart';

import 'firebase_storage.dart';

class ProjectImagesController extends GetxController {

  final allImages =<String>[].obs;

  @override
  void onReady() {
    getAllImages();
    super.onReady();
  }

  Future<void> getAllImages() async {
    List<String> imgName = ["pic1", "pic2", "pic3", "pic4", "pic5"];
    for(var img in imgName)
      {
        final imgUrl = await  Get.find<FirebaseStorageService>().getImage(img);
        allImages.add(imgUrl!);
      }
  }
}

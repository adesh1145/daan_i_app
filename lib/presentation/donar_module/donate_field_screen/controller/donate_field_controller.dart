import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_picker.dart';

class DonateFieldController extends GetxController {
  final donateFormKey = GlobalKey<FormState>();

  final TextEditingController weightController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  int? selectedCategory;
  RxList<CustomImagePicker> imageList = RxList.generate(
    3,
    (index) => CustomImagePicker(),
  );
  int? selectedAddressId;
  int? selectedNgo;
}

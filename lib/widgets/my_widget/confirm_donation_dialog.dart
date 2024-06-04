import '../../core/app_export.dart';
import 'custom_image_view.dart';

class DonationConfirmationDialogs {
  String? bookingConfirmTxt;
  String? subTilttle;
  String? checkBookingTxt;
  String? backHomeTxt;
  VoidCallback? OnTapBookingStatus;
  VoidCallback? onTapBackToHome;
  DonationConfirmationDialogs(
      {this.bookingConfirmTxt,
      this.subTilttle,
      this.checkBookingTxt,
      this.OnTapBookingStatus,
      this.onTapBackToHome,
      this.backHomeTxt}) {
    if (Get.isDialogOpen == false) {
      Get.dialog(StatefulBuilder(builder: (context, setState) {
        return PopScope(
          canPop: false,
          child: Stack(children: [
            ModalBarrier(
              dismissible: false,
            ),
            Dialog(
              elevation: 0,
              alignment: Alignment.center,
              backgroundColor: ColorConstant.white.withOpacity(0),
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 46.h),
                        padding: EdgeInsets.only(bottom: 17.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                            color: Theme.of(context).colorScheme.surface),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 80.h),
                              child: Visibility(
                                visible: bookingConfirmTxt != null,
                                child: Text(bookingConfirmTxt!,
                                    textScaler:
                                        TextScaler.linear(Constants.factor),
                                    style: AppStyle.roboto16w700.copyWith(
                                        color: ColorConstant.success)),
                              ),
                            ),
                            subTilttle == null
                                ? Container()
                                : Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.w, right: 16.w, top: 6.h),
                                    child: Text(
                                      subTilttle!,
                                      style: AppStyle.roboto12w500,
                                      maxLines: 3,
                                      textScaler: customTextScaler,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                            checkBookingTxt == null
                                ? Container()
                                : Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 35.w),
                                    child: CustomElevatedButton(
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      text: checkBookingTxt!,
                                      onTap: OnTapBookingStatus ?? () {},
                                    ),
                                  ),
                            Visibility(
                              visible: backHomeTxt != null,
                              child: InkWell(
                                  onTap: onTapBackToHome ??
                                      () {
                                        Get.back();
                                      },
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 6.h),
                                    child: Text(
                                      backHomeTxt ?? 'Back to Home',
                                      textScaler: customTextScaler,
                                      style: AppStyle.roboto12w500,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        // left: 50.w,
                        // right: 50.w,
                        child: CustomImageView(
                          // width: 98.w,
                          height: 98.h,
                          imagePath: ImageConstant.successDialog,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        );
      }));
    }
  }
}

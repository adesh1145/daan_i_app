import '../../core/app_export.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key, this.isLoading, this.child});
  final bool? isLoading;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child ?? const SizedBox(),
        if (isLoading ?? false)
          ModalBarrier(
            color:
                Theme.of(Get.context!).colorScheme.background.withOpacity(0.5),
            dismissible: false,
          ),
        if (isLoading ?? false)
          const Center(
            child: CircularProgressIndicator(),
          )
      ],
    );
  }
}

import 'package:resturant_app/persentation/view_model/base_model/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel implements OnBoardingViewModelInputs,OnBoardingViewModelOutputs{
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }

}
abstract class OnBoardingViewModelInputs{
void  goNext();
 void goPrevious();
 void onPageChanged(int index);

}
abstract class OnBoardingViewModelOutputs{}
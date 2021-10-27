part of 'view.dart';

Widget getBody(LoginController controller) {
  return Align(
    alignment: const Alignment(0.0, -0.25),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextPrimary(
          text: MyStrings.loginToConsole.tr,
          style: MyStyles.h4.copyWith(color: MyColors.grey06),
          isCenter: true,
        ),
        const SizedBox(
          height: 63,
        ),
        ButtonWidget(
          borderRadius: MyDimens.buttonRadius2,
          text: MyStrings.continueWithGoogle.tr,
          textColor: MyColors.blue05,
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 12, right: 48),
          onPressed: () async {
            await Authentication.signInWithGoogle().then((result) {
              print(result);
              if (result != null) {

              }
            }).catchError((error) {
              print('Registration Error: $error');
            });
          },
          icon: SvgPicture.asset(MyImages.google, height: 24, width: 24,),
        ),
        const SizedBox(
          height: 24,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: MyStrings.beforeTerms.tr,
                style: MyStyles.body2.copyWith(color: MyColors.grey06),
                children: <TextSpan>[
                  TextSpan(
                      text: MyStrings.termsAndConditions.tr,
                      style: MyStyles.body2.copyWith(
                          color: MyColors.blue05, fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Utils.launchURL(CustomValues.termsLink);
                        }),
                  TextSpan(
                    text: MyStrings.afterTerms.tr,
                    style: MyStyles.body2.copyWith(color: MyColors.grey06),
                  )
                ]),
          ),
        ),
      ],
    ),
  );
}

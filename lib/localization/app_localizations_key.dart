import 'package:flutter/cupertino.dart';
import 'package:sprintf/sprintf.dart';

import 'app_localization.dart';

abstract class AppLocalizationsKey {
  static const title = 'title';
  static const description = 'description';
  static const normalText = 'normalText';
  static const buttonText = 'buttonText';
  static const settingsLanguage = 'settingsLanguage';
  static const settingsTheme = 'settingsTheme';
  static const formExample = 'formExample';
  static const frequentlyAskedQuestions = 'frequentlyAskedQuestions';
  static const status = 'status';
  static const settingsSubLanguage = 'settingsSubLanguage';
  static const settingsDefaultLoginMethod = 'settingsDefaultLoginMethod';
  static const settingsTermsConditions = 'settingsTermsConditions';
  static const settingsPrivacyPolicies = 'settingsPrivacyPolicies';
  static const settingsContacts = 'settingsContacts';
  static const settingsLogout = 'settingsLogout';
  static const settingsTitle = 'settingsTitle';
  static const profileTitle = 'profileTitle';
  static const profilePhoneNumber = 'profilePhoneNumber';
  static const profileEmailVerified = 'profileEmailVerified';
  static const register = 'register';
  static const login = 'login';
  static const details = 'details';
  static const dummyText = 'dummyText';
  static const profileEmail = 'profileEmail';
  static const mainAuthWelcomeMessage = 'mainAuthWelcomeMessage';
  static const loginEmailAddress = 'loginEmailAddress';
  static const loginEmailValidator = 'loginEmailValidator';
  static const loginPassValidator = 'loginPassValidator';
  static const loginPassLengthValidator = 'loginPassLengthValidator';
  static const loginPassword = 'loginPassword';
  static const loginForgotPassword = 'loginForgotPassword';
  static const loginButton = 'loginButton';
  static const registerFieldEmail = 'registerFieldEmail';
  static const registerFieldAgreeTerms = 'registerFieldAgreeTerms';
  static const registerInformationTitle = 'registerInformationTitle';
  static const registerVerifyEmailTitle = 'registerVerifyEmailTitle';
  static const bottomBarHome = 'bottomBarHome';
  static const bottomBarProfile = 'bottomBarProfile';
  static const bottomBarDiscover = 'bottomBarDiscover';
  static const bottomBarSettings = 'bottomBarSettings';
  static const termsConditionsFirstPart = 'termsConditionsFirstPart';
  static const termsConditionsSecondPart = 'termsConditionsSecondPart';
  static const registerFinalScreenSuccessTitle =
      'registerFinalScreenSuccessTitle';
  static const registerFinalScreenSuccessDescription =
      'registerFinalScreenSuccessDescription';
  static const profileTakePhoto = 'profileTakePhoto';
  static const profileGallery = 'profileGallery';
  static const contactsEmail = 'contacts-email';
  static const contactsPhone = 'contacts-phone';
  static const contactsTitle = 'contactsTitle';
  static const backToMyHomeButton = 'backToMyHomeButton';
  static const forgotPassTitle = 'forgot-pass-title';
  static const forgotPassDesc = 'forgotPassDesc';
  static const forgotPassValidator = 'forgot-pass-validator';
  static const passwordFormatValidator = 'password-format-validator';
  static const loremIpsumText = 'loremIpsumText';
  static const confirmExitDialogTitle = 'confirmExitDialogTitle';
  static const confirmExitDialogMessage = 'confirm-exit-dialog-message';
  static const confirmExitDialogYes = 'confirmExitDialogYes';
  static const confirmExitDialogNo = 'confirmExitDialogNo';
  static const formatValidation = 'format-validation';
  static const termsText1 = 'terms-text-1';
  static const termsText2 = 'terms-text-2';
  static const forgotPasswordTitle = 'forgotPasswordTitle';
  static const errorOtpTitle = 'error-otp-title';
  static const errorOtpDesc = 'error-otp-desc';
  static const errorOtpButton = 'error-otp-button';
  static const lightMode = 'lightMode';
  static const darkMode = 'darkMode';
  static const close = 'close';
  static const web = 'web';
  static const takePhoto = 'takePhoto';
  static const chooseFromGallery = 'chooseFromGallery';
  static const emailAddress = 'emailAddress';
  static const enterYourEmail = 'enterYourEmail';
  static const enterYourPassword = 'enterYourPassword';
  static const continueText = 'continueText';
  static const createPasscodeForYourApp = 'createPasscodeForYourApp';
  static const error = 'error';
  static const ok = 'ok';
  static const cancel = 'cancel';
  static const invalidConfirmationCode = 'invalidConfirmationCode';
  static const success = 'success';
  static const newCodeSent = 'newCodeSent';
  static const loginTitle = 'loginTitle';
  static const loginError = 'loginError';
  static const loginErrorInvalidConfigurationException =
      'loginErrorInvalidConfigurationException';
  static const loginErrorInvalidStateException =
      'loginErrorInvalidStateException';
  static const loginErrorTooManyAttempts = 'loginErrorTooManyAttempts';
  static const loginErrorUserCancelledSignInException =
      'loginErrorUserCancelledSignInException';
  static const loginErrorUnableToSignInException =
      'loginErrorUnableToSignInException';
  static const loginErrorUserNotConfirmed = 'loginErrorUserNotConfirmed';
  static const loginErrorNoInternetConnection =
      'loginErrorNoInternetConnection';
  static const loginErrorUserNotFound = 'loginErrorUserNotFound';
  static const loginErrorUnknownError = 'loginErrorUnknownError';
  static const acceptTermsError = 'acceptTermsError';
  static const loginFailureTryAgain = 'loginFailureTryAgain';
  static const otherDescriptionLabel = 'otherDescriptionLabel';
  static const heardFromDropDownLabel = 'heardFromDropDownLabel';
  static const registerExceptionExistingProfile =
      'registerExceptionExistingProfile';
  static const registerExceptionWrongcredentials =
      'registerExceptionWrongcredentials';
  static const registerExceptionInvalidPassword =
      'registerExceptionInvalidPassword';
  static const registerExceptionExpiredRefreshToken =
      'registerExceptionExpiredRefreshToken';
  static const registerExceptionUnexpectedError =
      'registerExceptionUnexpectedError';
  static const registerExceptionForeignMobileOrBirthPlace =
      'registerExceptionForeignMobileOrBirthPlace';
  static const exceptionInvalidValueInputted = 'exceptionInvalidValueInputted';
  static const conjunctionAnd = 'conjunctionAnd';
  static const forgotPasswordTooManyAttempts = 'forgotPasswordTooManyAttempts';
  static const termsMarketingTitle = 'termsMarketingTitle';
  static const termsMarketingHeader = 'termsMarketingHeader';
  static const termsMarketingDescription = 'termsMarketingDescription';
  static const scanYourFingerprint = 'scanYourFingerprint';
  static const scanYourFace = 'scanYourFace';
  static const useUsernamePassword = 'useUsernamePassword';
  static const scanToLogin = 'scanToLogin';
  static const dropdownIdontHave = 'dropdownIdontHave';
  static const titleWarningMessage = 'titleWarningMessage';
  static const discoverTitle = 'discoverTitle';
  static const discoverDescription = 'discoverDescription';
  static const faqQuestion1 = 'faqQuestion1';
  static const faqAnswer1 = 'faqAnswer1';
  static const faqQuestion2 = 'faqQuestion2';
  static const faqAnswer2 = 'faqAnswer2';
  static const faqQuestion3 = 'faqQuestion3';
  static const faqAnswer3 = 'faqAnswer3';
  static const mainScreenTitle = 'mainScreenTitle';
  static const mainScreenDescription = 'mainScreenDescription';
  static const mainScreenMoreInformation = 'mainScreenMoreInformation';
  static const fromExampleFirstScreenInfo = 'fromExampleFirstScreenInfo';
  static const formExampleReviewScreen = 'formExampleReviewScreen';
  static const formExampleFirstNameHint = 'formExampleFirstNameHint';
  static const formExampleFirstNamePlaceholder =
      'formExampleFirstNamePlaceholder';
  static const formExampleLastNameHint = 'formExampleLastNameHint';
  static const formExampleLastNamePlaceholder =
      'formExampleLastNamePlaceholder';
  static const formExampleReasonHint = 'formExampleReasonHint';
  static const formExampleReasonPlaceholder = 'formExampleReasonPlaceholder';
  static const validatorMinLengthError = 'validatorMinLengthError';
  static const validatorMaxLengthError = 'validatorMaxLengthError';
  static const formExampleDateHint = 'formExampleDateHint';
  static const formExampleDateMissingHint = 'formExampleDateMissingHint';
  static const formExampleDatePlaceholder = 'formExampleDatePlaceholder';
  static const formExampleDescriptionHint = 'formExampleDescriptionHint';
  static const formExampleDescriptionPlaceholder =
      'formExampleDescriptionPlaceholder';
  static const formExampleFinalScreenTitle = 'formExampleFinalScreenTitle';
  static const formExampleFinalScreenDescription =
      'formExampleFinalScreenDescription';
  static const notauthorizedException = 'notauthorizedException';
  static const userExistsException = 'userExistsException';
  static const loginInformationTitle = 'loginInformationTitle';
}

extension StringExt on String {
  String translate(BuildContext context, {dynamic arguments}) {
    final translatedText = AppLocalizations.of(context).translate(this);
    return arguments == null
        ? translatedText
        : sprintf(
            translatedText,
            arguments,
          );
  }
}

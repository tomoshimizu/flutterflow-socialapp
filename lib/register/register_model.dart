import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  // State field(s) for PasswordTextField widget.
  final passwordTextFieldKey = GlobalKey();
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldController;
  String? passwordTextFieldSelectedOption;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)? passwordTextFieldControllerValidator;
  // State field(s) for ConfirmPasswordTextField widget.
  final confirmPasswordTextFieldKey = GlobalKey();
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldController;
  String? confirmPasswordTextFieldSelectedOption;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    confirmPasswordTextFieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldController?.dispose();

    passwordTextFieldFocusNode?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

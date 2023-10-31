import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldController?.dispose();

    passwordTextFieldFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

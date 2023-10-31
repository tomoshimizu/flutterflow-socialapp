import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_post_message_popup_widget.dart' show EditPostMessagePopupWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPostMessagePopupModel
    extends FlutterFlowModel<EditPostMessagePopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for UpdateTextField widget.
  FocusNode? updateTextFieldFocusNode;
  TextEditingController? updateTextFieldController;
  String? Function(BuildContext, String?)? updateTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    updateTextFieldFocusNode?.dispose();
    updateTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

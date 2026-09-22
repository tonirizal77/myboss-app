part of 'flows.dart';

class InputOtpFlows {
  InputOtpFlows._();

  /// 1. Initialize Verification Step
  ///
  /// Used in Verification pages to start timer and setup focus listeners.
  static void init(
    BuildContext context, {
    required List<FocusNode> focusNodes,
    required List<TextEditingController> controllers,
  }) {
    /// Start Timer
    try {
      context.read<TimerCubit>().startTimer();
    } catch (_) {
      // TimerCubit is not available in the current context.
    }

    /// Setup Focus Nodes
    for (int i = 0; i < controllers.length; i++) {
      focusNodes[i].onKeyEvent = (node, event) {
        final isBackspace =
            event.logicalKey == LogicalKeyboardKey.backspace ||
            event.logicalKey == LogicalKeyboardKey.delete ||
            event.physicalKey == PhysicalKeyboardKey.backspace ||
            event.physicalKey == PhysicalKeyboardKey.delete;

        if (event is KeyDownEvent && isBackspace && i > 0) {
          // Clear current field and move focus back
          controllers[i].clear();
          focusNodes[i - 1].requestFocus();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      };
    }

    /// !Request focus for 1st Focus Node.
    focusNodes[0].requestFocus();
  }

  /// 2. Handle OTP Input Change
  ///
  /// Used in Verification pages to manage character replacement and focus switching.
  static void onOtpChanged(
    BuildContext context,
    String value,
    int index, {
    required List<FocusNode> focusNodes,
    required List<TextEditingController> controllers,
  }) {
    if (value.length > 1) {
      // Replacement logic: keep only the latest character
      final latestChar = value.characters.last;
      controllers[index].text = latestChar;
      controllers[index].selection = TextSelection.fromPosition(
        const TextPosition(offset: 1),
      );
      value = latestChar;
    }

    if (value.isNotEmpty && index < controllers.length - 1) {
      focusNodes[index + 1].requestFocus();
    }
  }
}

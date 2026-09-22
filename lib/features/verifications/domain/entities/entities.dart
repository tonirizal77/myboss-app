import 'package:equatable/equatable.dart';

export 'verify_model/verify_model.dart';

enum ActionOtp { registerOtp, loginOtp, resendOtp, changeOtp }

enum ActionConfirm { register, login, changeProfile }

class ParamOtp extends Equatable {
  final String url;
  final Map<String, dynamic> body;

  ParamOtp({required this.url, required this.body});

  @override
  List<Object> get props => [url, body];

  @override
  String toString() => "url: $url, body: $body";
}

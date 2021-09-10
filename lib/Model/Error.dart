class ErrorMessage{
  String errorMessage;
  int errorCode;

  ErrorMessage({
    this.errorMessage,
    this.errorCode
  });

  Map<String, dynamic> toMap(){
    return {
      'errorMessage': errorMessage,
      'errorCode': errorCode,

    };
  }

  Map<String, dynamic> toJson(){
    return {
      'errorMessage': errorMessage,
      'errorCode': errorCode,
    };
  }

  @override
  String toString() {
    return 'ErrorMessage{errorMessage: $errorMessage, errorCode: $errorCode}';
  }
}

class ChatMessage {
  String? uid;
  DateTime? createAt;
  String? sendername;
  String? senderEmail;
  String? text;

  ChatMessage(
      {this.uid, this.createAt, this.sendername, this.senderEmail, this.text});

  ChatMessage.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    createAt = json['createAt'];
    sendername = json['sendername'];
    senderEmail = json['senderEmail'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['createAt'] = this.createAt;
    data['sendername'] = this.sendername;
    data['senderEmail'] = this.senderEmail;
    data['text'] = this.text;
    return data;
  }
}

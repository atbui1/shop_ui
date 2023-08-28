
enum MessageStatus { not_sent, not_view, viewed }

class Messages {
  String sendBy, contentMessage, time;
  bool isSender;
  final MessageStatus messageStatus;

  Messages(this.sendBy, this.isSender, this.contentMessage, this.time, this.messageStatus);

}

List<Messages> demoMessages = [
  Messages("111", true, "content message 1 content message 333 content message 334 content message 335 content message 336", "time 111", MessageStatus.viewed),
  Messages("222", false, "content message 222", "time 123", MessageStatus.viewed),
  Messages("333", false, "content message 333", "time 333", MessageStatus.viewed),
  Messages("444", true, "content message 444", "time 444", MessageStatus.viewed),
  Messages("555", true, "content message 555", "time 555", MessageStatus.viewed),
  Messages("666", true, "content message 666", "time 666", MessageStatus.not_sent),
];

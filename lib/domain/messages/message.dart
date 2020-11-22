import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/user.dart';
import '../core/failures.dart';
import '../core/value_object.dart';
import 'value_objects.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const Message._();
  const factory Message({
    @required UniqueId id,
    @required User userId,
    @required DateTime timestamp,
    @required MessageText text,
    @required bool isStarred,
  }) = _Message;

  factory Message.empty({@required User user}) => Message(
        id: UniqueId(),
        userId: user,
        timestamp: DateTime.now(),
        text: MessageText(''),
        isStarred: false,
      );

  Option<ValueFailure<dynamic>> get failureOption =>
      text.failureOrUnit.fold((f) => some(f), (_) => none());
}

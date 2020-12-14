// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatDTOAdapter extends TypeAdapter<ChatDTO> {
  @override
  final int typeId = 1;

  @override
  ChatDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatDTO(
      id: fields[0] as String,
      isArchived: fields[1] as bool,
      isMuted: fields[2] as bool,
      canSend: fields[3] as bool,
      type: fields[4] as String,
      properties: (fields[5] as Map)?.cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChatDTO obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isArchived)
      ..writeByte(2)
      ..write(obj.isMuted)
      ..writeByte(3)
      ..write(obj.canSend)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.properties);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDTO _$_$_ChatDTOFromJson(Map<String, dynamic> json) {
  return _$_ChatDTO(
    id: json['id'] as String,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : MessageDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isArchived: json['isArchived'] as bool ?? false,
    isMuted: json['isMuted'] as bool ?? false,
    canSend: json['canSend'] as bool ?? true,
    type: json['type'] as String,
    properties: json['properties'] as Map<String, dynamic>,
    updateType: json['updateType'] as String ?? 'nil',
  );
}

Map<String, dynamic> _$_$_ChatDTOToJson(_$_ChatDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages?.map((e) => e?.toJson())?.toList(),
      'isArchived': instance.isArchived,
      'isMuted': instance.isMuted,
      'canSend': instance.canSend,
      'type': instance.type,
      'properties': instance.properties,
      'updateType': instance.updateType,
    };

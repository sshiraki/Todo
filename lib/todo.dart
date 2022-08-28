import 'package:flutter/material.dart';

// StateNotifier のステート（状態）はイミュータブル（不変）である必要があります。
// ここは Freezed のようなパッケージを利用してイミュータブルにしても OK です。
@immutable
class Todo {
  const Todo({required this.id, required this.description, required this.completed});

  // イミュータブルなクラスのプロパティはすべて `final` にする必要があります。
  final String id;
  final String description;
  final bool completed;

  // Todo はイミュータブルであり、内容を直接変更できないためコピーを作る必要があります。
  // これはオブジェクトの各プロパティの内容をコピーして新たな Todo を返すメソッドです。
  Todo copyWith({String? id, String? description, bool? completed}) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }
}

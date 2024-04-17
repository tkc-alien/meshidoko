import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/use_mock_provider.g.dart";

/// API通信の代わりにモックデータを使用するフラグのプロバイダ
@riverpod
bool useMock(UseMockRef ref) {
  // バックエンド未作成のため今は常にモックデータを使用する
  // flavorとかで切り替えるようにするつもり
  return true;
}

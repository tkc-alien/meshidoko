# メシドコ

メシをドコで食べるかランダムに決定してくれるアプリです。

GoogleMapsAPIを使用し、指定した範囲内のレストランを取得します。

（バックエンドが未完成なので今のところテスト用のデータのみ表示されます）

## 画面イメージ

<img width="300" alt="ホーム画面" src="https://github.com/tkc-alien/meshidoko-app/assets/70576941/a8653b61-5ef1-4fc7-a52f-3357587490a5">
<img width="300" alt="条件変更モーダル" src="https://github.com/tkc-alien/meshidoko-app/assets/70576941/dbc9f893-5540-4af7-8594-3f462b80b887">
<img width="300" alt="レストラン画面" src="https://github.com/tkc-alien/meshidoko-app/assets/70576941/1fdf35e8-3598-4985-aecb-bc19f4a242a1">

---

## 環境

- macOS - 14.4.1
- Flutter - 3.19.5
- Dart-  3.3.3
- fvm - 3.1.3
- VSCode - 1.88.1
- Xcode - 15.3
- AndroidStudio - 2022.2

---

## ビルド手順

### 手順１：GoogleMapsAPIKeyを取得する

モバイルでのGoogleMap表示のために、APIキーが必要になります。

[GoogleMapsPlatformのドキュメント](https://developers.google.com/maps/documentation/javascript/get-api-key?hl=ja)を参考に、ビルドするOSに対応したAPIキーを取得してください。

### 手順２：環境ファイルを配置する

取得したAPIキーを以下のように記入したファイルを`dart-defines/default.json`に配置してください（ビルドしないOSのAPIキーは空のままで問題ありません）。

```json
{
  "googleMapsApiKeyForAndroid": "xxxxxxxx....",
  "googleMapsApiKeyForIOS": "xxxxxxxx...."
}
```

### 手順３：ビルドする

モバイル端末の実機またはiOSシミュレータ・Androidエミュレータを接続して、以下のいずれかの方法でビルドしてください。

#### VSCode上でビルドする

`launch.json`がすでにあるので通常通り実行してください。

#### AndroidStudio上でビルドする

[ Run/Debug Configurations ] > [ Additional run args ] に 以下を登録して実行してください。

```
--dart-define-from-file=dart_defines/default.json
```

#### コマンドラインでビルドする

```zsh
$ flutter run --dart-define-from-file=dart_defines/default.json
```

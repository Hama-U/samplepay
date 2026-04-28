---
trigger: always_on
---

# Flutter Performance-First Development Guide

このファイルは、Flutterプロジェクトにおいて「最速の描画パフォーマンス」を実現するための設計ルールと実装指針を定義したものです。

## 1. 開発の基本原則 (Performance Core)

- **Const Everything:** `const` コンストラクタを最大限利用し、Widgetツリーの再構築コストをゼロに近づける。
- **Small Rebuilds:** 状態変更の影響範囲を最小限にする。`Consumer` や `BlocBuilder` は可能な限りツリーの下位（葉）に近い場所で使う。
- **Layer Separation:** 頻繁に更新されるWidgetは `RepaintBoundary` で囲み、GPUの描画レイヤーを分離する。

## 2. フォルダ設計ルール

- **presentation/features/[feature]/components/:** 画面を構成する部品は、必ずこのフォルダにクラスとして切り出す。関数（`_buildItem()`）形式でのWidget定義は、リビルド最適化を妨げるため禁止する。
- **core/constants/:** Paddingの値、TextStyle、Durationなどのマジックナンバーはここに `const` 定数として定義し、再利用する。

```
lib/
├── core/
│   ├── constants/       # アプリ全体で使う定数（constの徹底）
│   ├── theme/           # 静的なスタイル定義（再計算を避ける）
│   └── utils/           # 重い計算をIsolateに投げるロジックなど
├── data/
│   ├── models/          # Immutableなデータモデル（freezed等を推奨）
│   └── repositories/    # API/DB通信
├── providers/           # 状態管理（Riverpod/Bloc等）。「最小のState」を定義
└── presentation/
    ├── common_widgets/  # アプリ共通のconst Widget群
    └── features/        # 機能単位の画面構成
        └── [feature_name]/
            ├── pages/      # 画面全体（Scaffoldなど）
            └── components/ # 画面固有の部品（RepaintBoundaryを適用すべき単位）
```

## 3. 実装のベストプラクティス

### A. リビルドの最適化

- `ref.watch(provider.select((s) => s.value))` を活用し、特定のプロパティが変化したときのみリビルドを発生させる。
- 巨大な `build` メソッドを避け、`StatelessWidget` として細かく分割する。

### B. 描画負荷の軽減

- 重いアニメーションやスクロールリストを扱う場合は、`RepaintBoundary` を適用して他のUIへの干渉を防ぐ。
- `Opacity` Widgetの多用を避け、`FadeInImage` や `Colors.withOpacity` を検討する。

### C. 計算負荷の分離

- JSONのパース、リストの複雑なフィルタリングなどの重い処理は、`Isolate.run` または `compute` を使用してUIスレッド外で実行する。
  }

```

```

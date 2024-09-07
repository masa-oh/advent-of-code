#!/bin/bash

# 実行するRubyスクリプトのパス確認
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/your_script.rb"
  exit 1
fi

# 指定されたRubyスクリプトのパス
RUBY_SCRIPT="$1"

# Rubyスクリプトが存在するか確認
if [ ! -f "$RUBY_SCRIPT" ]; then
  echo "Error: $RUBY_SCRIPT not found."
  exit 1
fi

# スクリプトのディレクトリパスを取得
DIRECTORY=$(dirname "$RUBY_SCRIPT")

# 入力ファイル名（変更可能）
INPUT_FILE="input.txt"

# 出力ファイル名はRubyスクリプト名から生成
OUTPUT_FILE="output_$(basename "$RUBY_SCRIPT" .rb).txt"

# 指定されたディレクトリに移動
cd "$DIRECTORY" || exit

# Rubyスクリプトを実行し、結果を出力ファイルに保存
ruby "$(basename "$RUBY_SCRIPT")" < "$INPUT_FILE" > "$OUTPUT_FILE"

# 実行完了メッセージ
echo "Execution of $RUBY_SCRIPT completed. Output saved to $OUTPUT_FILE."

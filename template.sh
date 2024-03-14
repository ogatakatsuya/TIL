#!/bin/bash

# ファイル名を指定します
FILENAME="TIL_2024.md"

# ファイルが存在する場合は、削除します
if [ -f "$FILENAME" ]; then
    rm "$FILENAME"
fi

# ヘッダー部分を追加します
echo "# TIL (Today I Learned)" >> "$FILENAME"
echo >> "$FILENAME"

# 1月から12月までの月をループします
for month in {01..12}; do
    # 1日から31日までの日をループします（日付が存在しない場合は無視されます）
    for day in {01..31}; do
        # 日付をフォーマットします
        date_formatted="2024/${month}/${day}"

        # 日付を出力します
        echo "## ${date_formatted}" >> "$FILENAME"
        echo "  - 勉強時間" >> "$FILENAME"
        echo "  - 作業内容" >> "$FILENAME"
        echo "  - メモ" >> "$FILENAME"
        echo >> "$FILENAME"
    done
done

echo "ファイル $FILENAME を作成しました。"

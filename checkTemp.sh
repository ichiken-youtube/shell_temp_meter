#! /bin/sh
# 無限ループで温度を表示
while true; do
  # CPU温度を読み取る
  temp=$(cat /sys/class/thermal/thermal_zone0/temp)
  # 温度を1000で割って正しい値に変換
  temp=$(echo "scale=2; $temp / 1000" | bc)

  # 同じ行にキャリッジリターンを使用して温度を表示
  /bin/echo -en "CPU Temp: $temp°C\r"

  # 1秒待つ
  sleep 1
done

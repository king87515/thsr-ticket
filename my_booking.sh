#!/bin/bash

skip=""
# 1. Nangang  # 7. Taichung
# 2. Taipei   # 8. Changhua
# 3. Banqiao  # 9. Yunlin
# 4. Taoyuan  # 10. Chiayi
# 5. Hsinchu  # 11. Tainan
# 6. Miaoli   # 12. Zuouing
station_from="2"
station_to="5"
# 格式 2023-12-11
date="2023-12-13"
# 1. 00:01     # 7. 8:00     # 13. 11:00    # 19. 14:00    # 25. 17:00    # 31. 20:00   # 37. 23:00
# 2. 00:30     # 8. 8:30     # 14. 11:30    # 20. 14:30    # 26. 17:30    # 32. 20:30   # 38. 23:30
# 3. 6:00      # 9. 9:00     # 15. 12:00    # 21. 15:00    # 27. 18:00    # 33. 21:00
# 4. 6:30      # 10. 9:30    # 16. 12:30    # 22. 15:30    # 28. 18:30    # 34. 21:30
# 5. 7:00      # 11. 10:00   # 17. 13:00    # 23. 16:00    # 29. 19:00    # 35. 22:00
# 6. 7:30      # 12. 10:30   # 18. 13:30    # 24. 16:30    # 30. 19:30    # 36. 22:30
go_time="34"
# 0~10 ticket numbers
num=1
id=$ID # export from env
phone=$PHONE # export from env

echo "skip: $skip"
echo "station_from: $station_from"
echo "station_to: $station_to"
echo "date: $date"
echo "go_time: $go_time"
echo "num: $num"
echo "id: $id"
echo "phone: $phone"

# 第一次執行(DB還沒有紀錄)的話不需要 $skip
/usr/bin/python3 thsr_ticket/main.py << EOF
$skip
$station_from
$station_to
$date
$go_time
$num
1
$id
$phone
EOF
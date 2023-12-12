#!/bin/bash

skip=""
# 1. Nangang
# 2. Taipei
# 3. Banqiao
# 4. Taoyuan
# 5. Hsinchu
# 6. Miaoli
# 7. Taichung
# 8. Changhua
# 9. Yunlin
# 10. Chiayi
# 11. Tainan
# 12. Zuouing
station_from="2"
station_to="5"
# 格式 2023-12-11
date="2023-12-14"
# 1. 00:01
# 2. 00:30
# 3. 6:00
# 4. 6:30
# 5. 7:00
# 6. 7:30
# 7. 8:00
# 8. 8:30
# 9. 9:00
# 10. 9:30
# 11. 10:00
# 12. 10:30
# 13. 11:00
# 14. 11:30
# 15. 12:00
# 16. 12:30
# 17. 13:00
# 18. 13:30
# 19. 14:00
# 20. 14:30
# 21. 15:00
# 22. 15:30
# 23. 16:00
# 24. 16:30
# 25. 17:00
# 26. 17:30
# 27. 18:00
# 28. 18:30
# 29. 19:00
# 30. 19:30
# 31. 20:00
# 32. 20:30
# 33. 21:00
# 34. 21:30
# 35. 22:00
# 36. 22:30
# 37. 23:00
# 38. 23:30
go_time="38"
# 0~10 ticket numbers
num=1
id="F130587945"
phone="0928063208"

# 執行 Python 程序并自动输入变量
# {
  # echo "$skip"
  # echo "$station_from"
  # echo "$station_to"
  # echo "$date"
  # echo "$go_time"
  # echo "$num"
  # read user_input
  # echo "$id"
  # echo "$phone"
# } | /usr/bin/python3 thsr_ticket/main.py

/usr/bin/python3 thsr_ticket/main.py << EOF
$skip
$station_from
$station_to
$date
$go_time
$num
$id
$phone
EOF
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
-- Cách 1
SELECT SubId,
       SubName,
       Credit,
       Status
FROM subject
WHERE Credit =
    (SELECT Credit
     FROM subject
     ORDER BY Credit DESC
     LIMIT 1);

-- Cách 2
SELECT SubId,
       SubName,
       Credit,
       Status
FROM subject
WHERE Credit =
    (SELECT max(Credit)
     FROM subject);

-- Cách 3
SELECT SubId,
       SubName,
       Credit,
       Status
FROM subject
WHERE Credit >= ALL
    (SELECT Credit
     FROM subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT sb.SubId,
       sb.SubName,
       sb.Credit,
       sb.Status
FROM subject sb
INNER JOIN mark mk ON sb.subId = mk.subId
GROUP BY sb.SubId,
         sb.SubName,
         sb.Credit,
         sb.Status
HAVING max(mk.Mark) >= ALL
  (SELECT max(m.Mark)
   FROM mark m
   GROUP BY m.MarkId);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT st.StudentId,
       st.StudentName,
       st.Address,
       st.Phone,
       st.Status,
       avg(mk.Mark) AS AverageScore
FROM student st
INNER JOIN mark mk ON st.StudentId = mk.StudentId
GROUP BY st.StudentId,
         st.StudentName,
         st.Address,
         st.Phone,
         st.Status
ORDER BY AverageScore DESC;
--- s?p xep sinh vien theo studenID
select *from Student order by studentID

-- truy van ra ten va diem cua sinh vien
select s.studentName, sa.score
from Student s Inner join student_assessment sa on s.studentID = sa.studentID
				
----tinh trung binhf diem moon cua moi sinh vien
select sa.studentID,s.studentName, SUM(sa.score * a.[weight]/100) as [AVG]
from assessment a inner join student_assessment sa on a.assID = sa.assID
					inner join Student s on sa.studentID = s.studentID
GROUP BY sa.studentID, a.assID, s.studentName
---
select tb1.studentID,tb1.studentName, AVG([AVG]) AS [GPA] 
from(select sa.studentID,s.studentName, SUM(sa.score * a.[weight]/100) as [AVG]
from assessment a inner join student_assessment sa on a.assID = sa.assID
					inner join Student s on sa.studentID = s.studentID
GROUP BY sa.studentID, a.assID, s.studentName) tb1
group by tb1.studentID, tb1.studentName
order by [GPA] ASC
----tim sinh vien cos diem fe mon dbi cao nhat
SELECT Top 1 s.studentID, s.studentName,su.subjectName, a.assName, sa.Score
FROM Student s	inner join student_assessment sa ON s.studentID = sa.studentID 
                inner JOIN subject su on sa.studentID = s.studentID
				inner JOIN Assessment a ON a.assID = sa.assID
WHERE a.assName = 'FE' AND su.subjectName = 'DBI202'
ORDER BY sa.Score DESC

SELECT f1.docid, f2.docid, SUM(f1.count*f2.count)
FROM 

(SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count 
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION 
SELECT 'q' as docid, 'treasury' as term, 1 as count) f1,

(SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count 
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION 
SELECT 'q' as docid, 'treasury' as term, 1 as count) f2

WHERE f1.term = f2.term
AND f1.docid = 'q'
AND f2.docid <> 'q'
GROUP BY f1.docid, f2.docid
ORDER BY SUM(f1.count*f2.count)
;
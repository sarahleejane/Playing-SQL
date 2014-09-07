SELECT f1.docid, f2.docid, SUM(f1.count*f2.count)
FROM frequency f1, frequency f2
WHERE f1.term = f2.term
AND f1.docid < f2.docid
GROUP BY f1.docid, f2.docid
;
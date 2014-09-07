SELECT DISTINCT(docid)
FROM frequency
WHERE docid IN
(SELECT docid
FROM frequency
WHERE term ='transactions')
AND docid IN
(SELECT docid
FROM frequency
WHERE term ='world')
;
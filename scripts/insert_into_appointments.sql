-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(201608121000)
  SELECT 'Wilcox', 'Marsha'
  UNION
  SELECT 'Hilton', 'Vicky'
;
INSERT INTO appointments(201608171300)
  SELECT 'Talley', 'Ivory'
  UNION
  SELECT 'Hubbard', 'Spencer'
;
INSERT INTO appointments(201608121000)
  SELECT 'Wilcox', 'Marsha'
  UNION
  SELECT 'Hilton', 'Vicky'
;
INSERT INTO appointments(201608121300)
  SELECT 'Hodge', 'Blake'
  UNION
  SELECT 'Hilton', 'Vicky'
;

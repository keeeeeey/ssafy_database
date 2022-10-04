CREATE TABLE contacts (
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    email TEXT NOT NULL UNIQUE
);

ALTER TABLE contacts RENAME TO new_contacts;

ALTER TABLE new_contacts RENAME COLUMN name TO last_name;

-- 이미 데이터가 존재하는 경우 error가 발생. 컬럼을 추가할때 default값을 지정해줘야 함
ALTER TABLE new_contacts ADD COLUMN address TEXT NOT NULL;

-- 만약 외래 키 제약조건에서 사용되는 경우, 기본 키인 경우, UNIQUE 제약조건이 있는 경우 삭제 안됨 
ALTER TABLE new_contacts DROP COLUMN address;

DROP TABLE new_contacts;
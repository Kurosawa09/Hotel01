select * from hotel_member;
drop table hotel_member;
drop table question_list;
drop SEQUENCE question_list_seq;

-- 1.회원가입 테이블
create table hotel_member (
	member_id	    varchar2(20) 	primary key,		--회원 ID
	member_pw	    varchar2(20) 	not null,			--비밀번호
	member_nm	    varchar2(20) 	not null,			--회원 이름
	member_tel      varchar2(20)    unique not null,    --전화 번호
	member_email    varchar2(30)    not null,           --이메일
	member_code	    number	    	default 0           --관리자코드
);

-- 1.1 회원가입 예시
insert into
    hotel_member(
        member_id,
        member_pw,
        member_nm,
        member_tel,
        member_email
        )
		values(
			'122',
            '122',
			'122',
            '122',
            '1'
        );

-- 1.2 로그인
select
    member_Nm
    from	
        hotel_member
    where
        member_Id = '1'
        and
    member_Pw = '1';

    
 --2. 고객의 소리
create table question_list(
	list_num             number         primary key,
    member_id            varchar2(30)   constraint memberId_qe_fk references hotel_member(member_id) on delete cascade,
    member_nm            varchar2(30),
    list_title           varchar2(300)  not null,
    list_content         varchar2(500)  not null,
    list_date            date           default sysdate,
    list_check           varchar2(30)   default 0
);
 
 create SEQUENCE question_list_seq;
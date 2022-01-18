select * from hotel_member;
drop table hotel_member;
drop table question_list;
drop SEQUENCE question_list_seq;
drop table reply;
drop sequence reply_seq;

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

    
 --2. 후기 및 질문 테이블
create table question_list(
	list_num            number         primary key,
    member_id           varchar2(30)   constraint memberId_qe_fk references hotel_member(member_id) on delete cascade,
    member_nm           varchar2(30),
    list_title          varchar2(300)  not null,
    list_content        varchar2(500)  not null,
    list_date           date           default sysdate,
    original_filename	varchar2(3000),
    saved_filename		varchar2(3000)
);
 
 create sequence question_list_seq;
 
--3 댓글 테이블
create table reply(
    reply_num         number          primary key,
    reply_content     varchar2(500)   not null,
    reply_date        date            default sysdate not null,
    list_Num          number          constraint listNum_reply_fk references question_list(list_Num),
    member_Id         varchar2(30)    constraint memberId_reply_fk references hotel_member(member_Id),
    member_Nm		  varchar2(30)
);

create sequence reply_seq nocache;

-- 4 방 테이블
create table hotel_room(
    room_num    number(2)       default 0,
    room_type   varchar2(30)    primary key,
    room_price  number(30)      default 0,
    room_status number(2)       default 0
);
-- 4.1 방 테이블을 만든 후 아래 insert문을 실행하세요.
	insert into
	    hotel_room(
        room_num,
        room_type,
        room_price,
   		room_status
	    )
		values(
        1,
        'single',
        70000,
        0
	    );


-- 5 예약 테이블 
create table booking(
	booking_num         number         primary key,
    member_id           varchar2(30)   constraint memberId_qe_fk2 references hotel_member(member_id) on delete cascade,
    ROOM_TYPE           varchar2(30)   constraint roomType_bo_fk references hotel_room(room_type) on delete cascade,
    booking_START       date not null,
    booking_END         date not null,
    adult               number(2) default 0,
    child               number(2) default 0,
    booking_status      number(2) default 0,
    booking_date        date      default sysdate
);

create sequence booking_seq nocache;


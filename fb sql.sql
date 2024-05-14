
CREATE TABLE user (
 user_id int primary key,
 full_name varchar(255),
 Username VARCHAR(255),
 email varchar(255),
 gender varchar(255),
 bio varchar(255),
 dob int,
 Registration_date date 
 );
 
 create table post(
 post_id int primary key,
 user_id int,
 post_date date,
 location varchar(255),
 Content text ,
 post_type varchar(255),
 foreign key (user_id) references user (user_id)
 );
 create table comment(
 comment_id int primary key,
 post_id int,
 user_id int,
 content text,
 comment_date date,
 foreign key (post_id) references post (post_id),
 foreign key (user_id) references user (user_id)
 );
 create table Likes (
 like_id int primary key,
 post_id int,
 user_id int,
 like_date date,
 foreign key (post_id) references post (post_id),
 foreign key (user_id) references user (user_id)
 );
 create table chat (
 message_id int primary key,
 sender_id int ,
 Recipient_id int,
 content text ,
 chat_time timestamp ,
 Read_status boolean,
 foreign key (sender_id) references user (user_id),
 foreign key (recipient_id) references user (user_id)
 );

 create table notification (
notification_id int primary key,
user_id int,
type varchar(255),
content text,
Notification_time timestamp ,
seen_status boolean,
foreign key (user_id) references user (user_id)
);

 
 
 
 
 
 
 
 
 
 
 
 
 


-----用户表

create table kxd_user(
id int unsigned primary key auto_increment,
phone char(11) not null default '' comment '手机号',
password char(40) not null default '' comment '密码',
chanel varchar(60) not null default '' comment '渠道',
regtime int not null default 0 comment '注册时间'
)engine=Innodb charset utf8 comment '用户表';

-----身份信息表
create table kxd_card(
id int unsigned primary key auto_increment,
uid int unsigned not null default 0 comment '用户id',
name varchar(20) not null default '' comment '姓名',
cardid char(18) not null default '' comment '身份证号',
birthday varchar(60) not null default '' comment '出生年月',
national varchar(60) not null default '' comment '民族',
address varchar(60) not null default '' comment '地址',
valid varchar(60) not null default '' comment '有效期',
czaddress varchar(60) not null default '' comment '常驻',
xxaddress varchar(60) not null default '' comment '详细地址',
frontimg varchar(60) not null default '' comment '正面照',
backimg varchar(60) not null default '' comment '反面照',
addtime int not null default 0 comment '时间'
)engine=Innodb charset utf8 comment '身份信息表';

----工作表
create table kxd_job(
id int unsigned primary key auto_increment,
uid int unsigned not null default 0 comment '用户id',
type tinyint unsigned not null default 0 comment '职业类型',
company varchar(60) not null default '' comment '公司名称',
comaddress varchar(60) not null default '' comment '公司地址',
xxaddress varchar(60) not null default '' comment '详细地址',
tel varchar(30) not null default '' comment '电话',
position tinyint unsigned not null default 0 comment '职位',
income tinyint unsigned not null default 0 comment '收入',
addtime int not null default 0 comment '时间'
)engine=Innodb charset utf8 comment '工作表';


----联系人
create table kxd_contact(
id int unsigned primary key auto_increment,
uid int unsigned not null default 0 comment '用户id',
zxties tinyint unsigned not null default 0 comment '直系关系',
zxtel varchar(11) not null default '' comment '直系电话',
zxname varchar(20) not null default '' comment '直系姓名',
zyties tinyint unsigned not null default 0 comment '重要关系',
zytel varchar(11) not null default '' comment '重要电话',
zyname varchar(20) not null default '' comment '重要姓名',
addtime int not null default 0 comment '时间'
)engine=Innodb charset utf8 comment '联系人表';

----其他信息
create table kxd_other(
id int unsigned primary key auto_increment,
uid int unsigned not null default 0 comment '用户id',
email varchar(30) not null default '' comment '邮箱',
qq varchar(20) not null default '' comment 'QQ',
wechat varchar(20) not null default '' comment '微信',
addtime int not null default '' comment '时间'
)engine=Innodb charset utf8 comment '其他信息表';






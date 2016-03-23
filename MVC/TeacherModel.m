//
//  TeacherModel.m
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "TeacherModel.h"
/****
 "coacher_id":"1",
 "head_pic":"/Public/upload/user_head_pic/1457078969.7167.jpg",
 "coacher_name":"赵日天",
 "user_sex":"0",
 "user_speciality":"跆拳道，空手道，气功",
 "user_work_experience":"教练1的工作经验",
 "area":"江汉区",
 "trans_sum":"118"
 *****/
@implementation TeacherModel
-(instancetype)initWithDic:(NSDictionary *)dic{
    self = [super init];
    if (self) {
//        self.coacher_name = [dic objectForKey:@"coacher_name"];
//        self.head_pic = dic[@"head_pic"];
//        self.coacher_id = dic[@"coacher_id"];
//        self.user_sex = dic[@"user_sex"];
//        self.user_speciality = dic[@"user_speciality"];
//        self.user_work_experience = dic[@"user_work_experience"];
//        self.area = dic[@"area"];
//        self.trans_sum = dic[@"trans_sum"];
        [self setValuesForKeysWithDictionary:dic];
        
    }
    return self;
}
+(instancetype)dataWithDic:(NSDictionary *)dic{
    NSLog(@"88888%@",dic);
    return [[self alloc]initWithDic:dic];
}
@end

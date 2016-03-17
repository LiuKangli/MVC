//
//  TeacherModel.h
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeacherModel : NSObject
//这边的变量名称要与获取的网络数据的名称一样(数量也要一样)
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
@property (nonatomic,copy) NSString *coacher_name;
@property (nonatomic,copy) NSString *user_sex;
@property (nonatomic,copy) NSString *area;
@property (nonatomic,copy) NSString *user_speciality;
@property (nonatomic,copy) NSString *user_work_experience;
@property (nonatomic,copy) NSString *coacher_id;
@property (nonatomic,copy) NSString *head_pic;
@property (nonatomic,copy) NSString *trans_sum;



-(instancetype)initWithDic:(NSDictionary *)dic;

+(instancetype)dataWithDic:(NSDictionary*)dic;
@end

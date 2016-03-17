//
//  TeacherModel.m
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "TeacherModel.h"

@implementation TeacherModel
-(instancetype)initWithDic:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];;
    }
    return self;
}
+(instancetype)dataWithDic:(NSDictionary *)dic{
    return [[self alloc]initWithDic:dic];
}
@end

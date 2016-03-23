//
//  NetWork.m
//  AFNetWorking
//
//  Created by Moon on 16/3/23.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "NetWork.h"

@implementation NetWork{
    NSString *stringUrl;
    id  parameterDic;
}
-(void)seturl:(NSString *)url parameter:(id)dic{
    stringUrl = url;
    parameterDic = dic;
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:stringUrl parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (_name) {
            _name(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"filed");
    }];
}
@end

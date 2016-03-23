//
//  NetWork.h
//  AFNetWorking
//
//  Created by Moon on 16/3/23.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"
@interface NetWork : NSObject
@property (nonatomic,strong) void(^name)(NSDictionary *dic);

-(void)seturl:(NSString *)url parameter:(id)dic;

@end

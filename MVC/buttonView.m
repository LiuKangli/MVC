//
//  buttonView.m
//  MVC
//
//  Created by Moon on 16/3/22.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "buttonView.h"

@implementation buttonView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self) {
        self = [super initWithFrame:frame];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.bounds = self.bounds;
        button.backgroundColor = [UIColor greenColor];
        [button addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchDown];
        [self addSubview:button];
        _string = @"123";
        
    }
    return self;
}
-(void)go{
    [self.deleGate setButton:_string];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

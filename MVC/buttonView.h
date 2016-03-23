//
//  buttonView.h
//  MVC
//
//  Created by Moon on 16/3/22.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol buttonDelegate <NSObject>

-(void)setButton:(NSString *)se;

@end

//自定义button
@interface buttonView : UIView
@property (nonatomic,strong) id<buttonDelegate>deleGate;
@property (nonatomic,copy) NSString *string;
@property (nonatomic,strong) UIButton *button;
@end

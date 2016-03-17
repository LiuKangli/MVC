//
//  List_TableViewController.h
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherModel.h"

@protocol tableViewDelegatee <NSObject>
//点击cell跳转  需要什么参数传什么参数
-(void)tableviewCellTouch:(NSString *)name;

@end

@interface List_TableViewController : UITableView
@property (nonatomic,strong) NSMutableArray *dataArray;
@property (nonatomic,strong) NSMutableArray *cellArray;
@property (nonatomic,strong)id<tableViewDelegatee>deleGate;
//传入数据
-(void)dataWithArray:(NSMutableArray*)array;
@end

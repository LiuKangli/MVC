//
//  TableViewCell.h
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeacherModel.h"
@interface TableViewCell : UITableViewCell

@property (nonatomic,strong) TeacherModel *model;

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *sex;
@property (weak, nonatomic) IBOutlet UILabel *arera;
@property (weak, nonatomic) IBOutlet UILabel *expecily;
@property (weak, nonatomic) IBOutlet UILabel *work;
//每个cell的高度
@property (nonatomic,assign) CGFloat hight;
@end

//
//  TableViewCell.m
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)setModel:(TeacherModel *)model{
    NSLog(@"咻咻%@",model.coacher_name);
    _name.text = model.coacher_name;
    _sex.text = model.user_sex;
    _arera.text = model.area;
    _expecily.text = model.user_speciality;
    _work.text = model.user_work_experience;
    _hight = 122;

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

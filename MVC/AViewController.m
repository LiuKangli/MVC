//
//  AViewController.m
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "AViewController.h"
#import "buttonView.h"
@interface AViewController ()<buttonDelegate>

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    buttonView *bu = [[buttonView alloc]initWithFrame:CGRectMake(210, 200, 200, 100)];
    [bu.button setTitle:_name forState:UIControlStateNormal];
    bu.button.titleLabel.textAlignment = NSTextAlignmentRight;
    bu.deleGate = self;
    [self.view addSubview:bu];

}
-(void)setButton:(NSString *)se{
    NSLog(@"biubiubiu%@",se);
     [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

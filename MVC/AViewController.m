//
//  AViewController.m
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *bu = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    bu.backgroundColor = [UIColor whiteColor];
    [bu setTitle:_name forState:UIControlStateNormal];
    [bu setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [bu addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:bu];
    // Do any additional setup after loading the view.
}
-(void)go{
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

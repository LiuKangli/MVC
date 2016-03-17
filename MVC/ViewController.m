//
//  ViewController.m
//  MVC
//
//  Created by Moon on 16/3/17.
//  Copyright © 2016年 Moon. All rights reserved.
//

#import "ViewController.h"
#import "List_TableViewController.h"
#import "TableViewCell.h"
#import "TeacherModel.h"
#import "AViewController.h"
#import "AFNetworking.h"
#import "AFHTTPRequestOperationManager.h"

#define MainUrl @"接口换一个就OK了"
#define  he @"index.php/api/get/coacher_list"
@interface ViewController ()<tableViewDelegatee>{
    NSMutableArray*arrayM;
    NSMutableArray*cellArray;
    List_TableViewController *list;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getData];
    list = [[List_TableViewController alloc]initWithFrame:CGRectMake(0, 0, 375, 500)];
    list.deleGate = self;
    [self.view addSubview:list];
    arrayM = [[NSMutableArray alloc]init];
    cellArray = [[NSMutableArray alloc]init];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)getData{
    NSString *str = [MainUrl stringByAppendingString:he];
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"武汉市",@"city_name", nil];
    AFHTTPRequestOperationManager *man = [AFHTTPRequestOperationManager manager];
    man.responseSerializer = [AFHTTPResponseSerializer serializer];
    man.responseSerializer.acceptableContentTypes = [man.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    
    [man POST:str parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableDictionary *data = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        if ([[data objectForKey:@"message"]isEqualToString:@"success"]) {
            NSMutableArray *dd = [data objectForKey:@"results"];
            for (NSDictionary *dic in dd) {
                [arrayM addObject:[TeacherModel dataWithDic:dic]];
//                TableViewCell *cel = [[TableViewCell alloc]init];
//                [cellArray addObject:cel];//有刷新 加这个方法  tableview里面传入数据的方法要加入cell的数据
            }
            [list dataWithArray:arrayM];
            [list reloadData];
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
}
//cell点击跳转
-(void)tableviewCellTouch:(NSString *)name{
    AViewController *av = [[AViewController alloc]init];
    av.name = name;
    [self presentViewController:av animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

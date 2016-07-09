//
//  ViewController.m
//  JSPatchDemo
//
//  Created by 陈博文 on 16/7/9.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 1;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld----%ld",indexPath.section + 1,indexPath.row + 1];
    
    switch (indexPath.section) {
        case 0:
        {
            cell.textLabel.text = @"第一个";
        }
            break;
        case 1:
        {
            cell.textLabel.text = @"第二个";
        }
            break;
        case 2:
        {
            cell.textLabel.text = @"第三个(会有问题,需要屏蔽掉)";
        }
            break;
            
        default:
            break;
    }
    return cell;
    
}

@end

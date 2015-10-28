//
//  ViewController.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "HotelRoomTypeController.h"
#import "DropdownMenuView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
    NSArray *titles = @[@"首页", @"好友圈", @"群微博", @"我的微博", @"特别关注"];
    DropdownMenuView *menuView = [[DropdownMenuView alloc] initWithFrame:CGRectMake(0, 0,100, 44) titles:titles];
    menuView.selectedAtIndex = ^(int index)
    {
        NSLog(@"selected title:%@", titles[index]);
    };
    self.navigationItem.titleView = menuView;
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake((IPHONE_SCREEN_WIDTH-180)/2, (IPHONE_SCREEN_HEIGHT-50-64)/2, 180, 50)];
  
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitle:@"push" forState:UIControlStateNormal];
    button.layer.cornerRadius = 5.0f;
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction:(UIButton *)btn{

    HotelRoomTypeController *hotelVC = [[HotelRoomTypeController alloc]initWithNibName:@"HotelRoomTypeController" bundle:nil];
    [self.navigationController pushViewController:hotelVC animated:YES];
}

@end

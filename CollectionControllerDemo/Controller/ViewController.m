//
//  ViewController.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "HotelRoomTypeController.h"
#import "PhotoLibraryController.h"
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

    NSArray *titleArray = @[@"酒店详情",@"照片框架"];
    for (int i = 0; i<2; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(i*100+80, 100, 80, 30);
        btn.backgroundColor = [UIColor orangeColor];
        [btn setTitle:[NSString stringWithFormat:@"%@",[titleArray objectAtIndex:i]] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        btn.tag = i+110;
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}


- (void)btnAction:(UIButton *)btn{
    NSInteger realTag = btn.tag -110;
    if (realTag==0) {
        HotelRoomTypeController *hotelVC = [[HotelRoomTypeController alloc]initWithNibName:@"HotelRoomTypeController" bundle:nil];
        [self.navigationController pushViewController:hotelVC animated:YES];
    }else{
        PhotoLibraryController *photoLibraryController = [[PhotoLibraryController alloc]initWithNibName:@"PhotoLibraryController" bundle:nil];
        [self.navigationController pushViewController:photoLibraryController animated:YES];
    }
   
}

@end

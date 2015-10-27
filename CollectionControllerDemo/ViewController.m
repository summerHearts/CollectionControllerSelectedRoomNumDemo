//
//  ViewController.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/10/27.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "HotelRoomTypeController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 180, 50)];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitle:@"push" forState:UIControlStateNormal];
    button.layer.cornerRadius = 5.0f;
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction:(UIButton *)btn{
//    UICollectionViewFlowLayout *aFlowLayout = [[UICollectionViewFlowLayout alloc] init];
//    [aFlowLayout setItemSize:CGSizeMake(50, 50)];
//    [aFlowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
//  
//    HotelRoomTypeController *hotelRoomTypeController =  [[HotelRoomTypeController alloc]initWithCollectionViewLayout:aFlowLayout];
//    [self presentViewController:hotelRoomTypeController animated:YES completion:nil];

    HotelRoomTypeController *hotelVC = [[HotelRoomTypeController alloc]initWithNibName:@"HotelRoomTypeController" bundle:nil];
    [self.navigationController pushViewController:hotelVC animated:YES];
}

@end

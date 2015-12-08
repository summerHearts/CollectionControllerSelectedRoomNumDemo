//
//  PhotoLibraryController.m
//  CollectionControllerDemo
//
//  Created by 佐毅 on 15/11/24.
//  Copyright © 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "PhotoLibraryController.h"
#import "StarView.h"
@interface PhotoLibraryController ()<StarDelegate>
@property (weak, nonatomic) IBOutlet UILabel  *hotelNameLabel;
@property (weak, nonatomic) IBOutlet UILabel  *payInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel  *checkInLabel;
@property (weak, nonatomic) IBOutlet UILabel  *datePicketLabel;
@property (weak, nonatomic) IBOutlet UIView   *customTextView;
@property (weak, nonatomic) IBOutlet UIButton *picAddBtn;
@property (weak, nonatomic) IBOutlet UIView   *scoreSelectedView;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet StarView *startView1;
@property (weak, nonatomic) IBOutlet StarView *startView2;
@property (weak, nonatomic) IBOutlet StarView *startView3;

@end

@implementation PhotoLibraryController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"酒店评分";
    
    self.hotelNameLabel.text = @"上海乐住信息技术有限公司";
    self.payInfoLabel.text   = @"在线支付    ￥300";
    self.checkInLabel.text = @"单人间  107";
    self.datePicketLabel.text  = @"10-15入住  10-16离店";
    
    
    self.startView1.delegate = self;
    self.startView1.resultTitleLabel.text = @"满意";
    self.startView1.title = @"卫生满意度";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)starView:(StarView *)starView selectIndex:(NSInteger)index{
    
}
@end

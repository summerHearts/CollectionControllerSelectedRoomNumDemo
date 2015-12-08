//
//  HotelInfoCommentCell.m
//  mike2.0
//
//  Created by 佐毅 on 15/9/26.
//  Copyright (c) 2015年 上海乐住信息技术有限公司. All rights reserved.
//

#import "HotelInfoCommentCell.h"

@interface HotelInfoCommentCell()

@property(strong,nonatomic) NSMutableArray *imageViewArray;

@property(strong ,nonatomic) NSMutableArray *urlArray;


@end

@implementation HotelInfoCommentCell

- (void)awakeFromNib{
    [self initViews];
}
-(void)initViews{

    _urlArray=[NSMutableArray array];
    _imageViewArray=[NSMutableArray array];
    for (int i = 0; i < 4; i++) {
        UIButton *imageView = [[UIButton alloc]initWithFrame:CGRectMake(i*70,0,58,58)];
        imageView.tag=110+i;
        imageView.contentMode                 = UIViewContentModeScaleToFill;
        [_commentImagesView addSubview:imageView];
        [_imageViewArray addObject:imageView];
    }
}

-(void)loadCellData:(id)data{
    //评论人
//    NSString *subStrPhone;
//    if (data.phone&&data.phone.length!=0) {
//        NSRange range = NSMakeRange(4, 4);
//        subStrPhone = [data.phone  stringByReplacingCharactersInRange:range withString:@"****"];
        self.commentNameLabel.text = [NSString stringWithFormat:@"瞅啥瞅，没见过帅哥"];
//    }
    //评论日期
    _commentDateLabel.text=@"2015-09-12 08:21:33";
    //评论分数
//    [_commentGradeView loadGrade:data.allgrade];
//    //评论内容
    _commentLabel.text=@"万圣节快到了，🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃,吓死了";
    _commentLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    //过滤图片
//    [_urlArray removeAllObjects];
//    NSInteger maxCount=data.scorepic.count>4?4:data.scorepic.count;
//    if (maxCount>0) {
//        self.imageViewHeight.constant = 58;
//        for (int i = 0; i < maxCount; i++) {
//            NSDictionary * urlDic =[data.scorepic safeObjectAtIndex:i];
//            NSString *url=[urlDic stringObjectForKey:@"url"];
//            //过滤
//            NSString *filterUrl =  [url stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
//            [_urlArray addObject:filterUrl];
//        }
        //评论图片
        for (int i = 0; i < 4; i++) {
            UIButton *imageView = [_imageViewArray objectAtIndex:i];
            [imageView setImage:[UIImage imageNamed:@"title"] forState:UIControlStateNormal];
            imageView.hidden = NO;
        }
//    }
//    else{
//    
//        self.imageViewHeight.constant = 0;
//    }
//
//    //酒店回复
//    if (data.hotelreply&& data.hotelreply.length>0 ) {
//        _replayViewHeight.constant = 20.0f;
//        _replyLabel.text = @"眯客客服：欢迎您的评价，我们会更加努力做到更好。";
//
//    }else{
//        _replayViewHeight.constant=0.0f;
//    }
}

//获取下一个响应者
-(UIViewController *)viewController
{
    UIResponder *next  = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        } else {
            next  = [next nextResponder];
        }
    } while (next != nil);
    return nil;
}


@end

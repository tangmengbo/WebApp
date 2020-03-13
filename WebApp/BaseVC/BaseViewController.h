//
//  BaseViewController.h
//  SajiaoShopping
//
//  Created by 鸣 王 on 15/9/14.
//  Copyright (c) 2015年 唐蒙波. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface BaseViewController : UIViewController

@property (nonatomic, strong)UIView * navView;
@property (nonatomic,strong)UIView  * statusBarView;
@property (nonatomic,strong)UIButton * leftButton;
@property (nonatomic,strong)UIImageView * backImageView;
@property (nonatomic,strong)UIButton * rightButton;
@property (nonatomic,strong)UILabel * titleLale;
@property (nonatomic,strong)UIView * lineView;

@property (nonatomic,strong)UILabel * tipLable;
@property (nonatomic,strong)UIView * loadingView;
@property (nonatomic,strong)UIView * loadingBottomView;
@property(nonatomic,strong)NSString * loadingViewAlsoFullScreen;


-(void)showNewLoadingView:(NSString *)message view:(UIView *)view;
-(void)hideNewLoadingView;




@end

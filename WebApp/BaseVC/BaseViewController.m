//
//  BaseViewController.m
//  SajiaoShopping
//
//  Created by 鸣 王 on 15/9/14.
//  Copyright (c) 2015年 唐蒙波. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation BaseViewController

-(id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.statusBarView= [[UIView alloc] initWithFrame:CGRectMake(0, 0, VIEW_WIDTH, 20)];
    self.statusBarView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.statusBarView];
    
    [self.navigationController setNavigationBarHidden:YES];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navView = [[UIView alloc] initWithFrame:CGRectMake(0, SafeAreaTopHeight, VIEW_WIDTH, 44)];
    self.navView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.navView];
    
    
    self.titleLale = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, VIEW_WIDTH, 44)];
    self.titleLale.textColor = [UIColor blackColor];
    self.titleLale.textAlignment = NSTextAlignmentCenter;
    self.titleLale.font = [UIFont fontWithName:@"Helvetica-Bold" size:18*BILI];
    [self.navView addSubview:self.titleLale];
    
    
    self.leftButton = [[UIButton alloc] initWithFrame:CGRectMake(0,  0, 60, 40)];
    [self.leftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.leftButton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    self.leftButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.navView addSubview:self.leftButton];
    
    self.backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12*BILI, (44-18)/2, 18, 18)];
    self.backImageView.image = [UIImage imageNamed:@"btn_back_n"];
    [self.leftButton addSubview:self.backImageView];
    
    
    self.rightButton = [[UIButton alloc] initWithFrame:CGRectMake(VIEW_WIDTH-40-10, 0, 50, 40)];
    [self.rightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.rightButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.rightButton addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    [self.navView addSubview:self.rightButton];
    
    
    self.lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 43.5, VIEW_WIDTH, 0.5)];
    self.lineView.backgroundColor = [UIColor blackColor];
    self.lineView.alpha = 0.2;
    [self.navView addSubview:self.lineView];
    
    self.loadingBottomView = [[UIView alloc] initWithFrame:CGRectMake(0, SafeAreaTopHeight+self.navView.frame.size.height, VIEW_WIDTH, VIEW_HEIGHT-60)];
    self.loadingBottomView.backgroundColor = [UIColor blackColor];
    self.loadingBottomView.alpha = 0.5;
    
    self.loadingView = [[UIView alloc] initWithFrame:CGRectMake((VIEW_WIDTH-200)/2, (VIEW_HEIGHT-60-80)/2, 200, 70)];
    self.loadingView.backgroundColor = [UIColor blackColor];
    self.loadingView.layer.cornerRadius = 10;
    self.loadingView.alpha = 0.8;
    
    if (@available(iOS 13.0, *)) {
        
        UIActivityIndicatorView * activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
        [activityView startAnimating];
        activityView.frame = CGRectMake(20, 25, 20, 20);
        [self.loadingView addSubview:activityView];
    } else {
        
        UIActivityIndicatorView * activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        [activityView startAnimating];
        activityView.frame = CGRectMake(20, 25, 20, 20);
        [self.loadingView addSubview:activityView];

    }
    self.tipLable = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, 300, 70)];
     self.tipLable.text = @"正在加载...";
     self.tipLable.textColor = [UIColor whiteColor];
     self.tipLable.font = [UIFont systemFontOfSize:15];
    [self.loadingView addSubview: self.tipLable];
    
    
   

}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleDefault;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

-(void)leftClick
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)rightClick
{
    
}

-(void)showNewLoadingView:(NSString *)message view:(UIView *)view
{
    if ([message isKindOfClass:[NSString class]]) {
        
        self.tipLable.text = message;
    }
    else
    {
        self.tipLable.text = @"正在加载...";
    }
    self.loadingBottomView.frame = CGRectMake(0, self.loadingBottomView.frame.origin.y, VIEW_WIDTH, VIEW_HEIGHT-self.loadingBottomView.frame.origin.y);

    if ([@"yes" isEqualToString:self.loadingViewAlsoFullScreen]) {
        
        self.loadingBottomView.frame = CGRectMake(0, 0, VIEW_WIDTH, VIEW_HEIGHT);
    }
    [self.view addSubview:self.loadingBottomView];
    [self.view addSubview:self.loadingView];
}

-(void)hideNewLoadingView
{
    [self.loadingView removeFromSuperview];
    [self.loadingBottomView removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

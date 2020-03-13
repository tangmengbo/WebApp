//
//  AppDelegate.m
//  WebApp
//
//  Created by 唐蒙波 on 2019/10/31.
//  Copyright © 2019 Meng. All rights reserved.
//

#import "AppDelegate.h"
#import "WKWebViewController.h"
#import <SafariServices/SafariServices.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

//    SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:@"https://video.myjerry.cn"]];
    //safariVC.delegate = self;
    // self.navigationController.navigationBarHidden = YES;
    // [self.navigationController pushViewController:safariVC animated:YES];
    // 建议
    // [self presentViewController:safariVC animated:YES completion:nil];
     WKWebViewController * vc = [[WKWebViewController alloc] init];
     UINavigationController * na = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];

    return YES;
}



@end

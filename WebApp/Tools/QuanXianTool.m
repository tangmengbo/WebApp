//
//  QuanXianTool.m
//  WebApp
//
//  Created by 唐蒙波 on 2019/10/31.
//  Copyright © 2019 Meng. All rights reserved.
//

#import "QuanXianTool.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>
#import <Photos/Photos.h>

@implementation QuanXianTool

+(BOOL)alsoHaveMicrophoneLimit
{
    BOOL alsoHave;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
       switch (authStatus) {
           case AVAuthorizationStatusNotDetermined:
           //没有询问是否开启麦克风
               alsoHave = NO;
           break;
           case AVAuthorizationStatusRestricted:
           //未授权，家长限制
               alsoHave = NO;
           break;
           case AVAuthorizationStatusDenied:
           //玩家未授权
               alsoHave = NO;
           break;
           case AVAuthorizationStatusAuthorized:
           //玩家授权
               alsoHave = YES;
           break;
           default:
           break;
       }
    return alsoHave;
}
+(void)getMicrophoneLimit
{
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeAudio completionHandler:^(BOOL granted) {
        NSLog(@"%@",granted ? @"麦克风准许":@"麦克风不准许");
    }];
}

+(BOOL)alsoHaveCamerLimit
{
    BOOL alsoHave;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    switch (authStatus) {
        case AVAuthorizationStatusNotDetermined:
        //没有询问是否开启相机
            alsoHave = NO;
        break;
        case AVAuthorizationStatusRestricted:
        //未授权，家长限制
            alsoHave = NO;
        break;
        case AVAuthorizationStatusDenied:
        //未授权
            alsoHave = NO;
        break;
        case AVAuthorizationStatusAuthorized:
        //玩家授权
            alsoHave = YES;
        break;
        default:
        break;
    }
    return alsoHave;
}
+(void)getCameraLimit
{
    //授权相机
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
              NSLog(@"%@",granted ? @"相机准许":@"相机不准许");
          }];
}

+(BOOL)alsoHavePhotoLibraryLimit
{
    BOOL alsoHave;
    PHAuthorizationStatus photoAuthorStatus = [PHPhotoLibrary authorizationStatus];
    
    switch (photoAuthorStatus) {
        case PHAuthorizationStatusAuthorized:
            //玩家授权
            alsoHave = YES;
        break;
        case PHAuthorizationStatusDenied:
            //未授权
            alsoHave = NO;
        break;
        case PHAuthorizationStatusNotDetermined:
            //没有询问是否开启相机
            alsoHave = NO;
        break;
        case PHAuthorizationStatusRestricted:
            //未授权，家长限制
            alsoHave = NO;
        break;
        default:
        break;
    }
    return alsoHave;
}
+(void)getPhotoLibraryLimit
{
    //授权照片
  [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
      
    }];
}


@end

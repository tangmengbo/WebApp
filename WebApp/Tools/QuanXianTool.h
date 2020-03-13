//
//  QuanXianTool.h
//  WebApp
//
//  Created by 唐蒙波 on 2019/10/31.
//  Copyright © 2019 Meng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuanXianTool : NSObject

+(BOOL)alsoHaveMicrophoneLimit;
+(void)getMicrophoneLimit;

+(BOOL)alsoHaveCamerLimit;
+(void)getCameraLimit;

+(BOOL)alsoHavePhotoLibraryLimit;
+(void)getPhotoLibraryLimit;

@end

NS_ASSUME_NONNULL_END

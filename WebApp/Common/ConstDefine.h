//
//  ConstDefine.h
//  AppProduction
//
//  Created by mac on 16/7/28.
//  Copyright © 2016年 mac. All rights reserved.
//

#ifndef ConstDefine_h
#define ConstDefine_h



//是否是正式环境0:测试，1:正式
#define IS_FORMAL_ENVIRONMENT  1
	
#if IS_FORMAL_ENVIRONMENT
#pragma mark 接口 生产
#define HTTP_REQUESTURL    @"https://kl-api.cyoulive.net/seeyou/api/calling"
#define XY_HTTP_REQUESTURL @"https://kl-api.cyoulive.net/"
#define PublicKeyName @"rsa_public_key_ios"
#define JiaYanStr @"cd614fa85f7bad6b2f19f41d7ac42975"
//融云key
#define RYKey @"tdrvipkst7yy5"



#else
#pragma mark 接口 测试
#define HTTP_REQUESTURL @"http://kl-test-api.tentacles.cn/seeyou/api/calling"
#define XY_HTTP_REQUESTURL @"http://kl-test-api.tentacles.cn/"
#define RYKey "k51hidwqke44b"
#define PublicKeyName @"public_key"
#define JiaYanStr @"HqnWdJG91B8WUsu1q566uD3sXPBHyKKCHbPnFIHmGldRN2ZbDckn1WEck0rxvWaB"

#endif

//appkey 签名用
#define APPKEY @"mImPJVmkkAjM1lYOvdInFw=="

#define RongCloud_SERVICE_ID @"KEFU152161801279719"


#define SafeAreaTopHeight ([UIScreen mainScreen].bounds.size.height >= 812.0 ? 35 : 20)
#define SafeAreaBottomHeight ([UIScreen mainScreen].bounds.size.height >= 812.0 ? 85 : 70)

//当前设置的宽、高
#define VIEW_WIDTH [UIScreen mainScreen].bounds.size.width
#define VIEW_HEIGHT [UIScreen mainScreen].bounds.size.height

#define USERCC 640/750/2

#define JinBiBiLi   100

//微博appkey appid url
#define WBAPPID @"243154924"
#define WBAPPSecret @"b9a0d72eb322664d9378e9492d09114b"

//微信appkey appid
#define WXAPPID @"wxd5ae056bf0f19d50"
#define WXAPPSecret @"de4a50da609bf9731e89287f1b284806"

//QQappkey appid
#define QQAPPID @"1106989008"
#define QQAPPKey @"0qz7qygFzagUgqSj"

//网易云信appkey
#define WYYXAPPKey @"71a632ecbe8c67e59a1d6311a0d31e60"
#define WYYCertificateDev @"yunYikuaiLiaoDev"
#define WYYCertificatePro @"yunYiKuaiLiaoPro"

#define APP_STORE_ID @"1471303267"

#define APPNAME @"kuailiao"

//shareSDK appKey
#define SHARESDKAPPKEY @"1d7b58e5e46da"

//设置颜色值
#define UIColor(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(1.0)]
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define BILI [UIScreen mainScreen].bounds.size.width/375
#define HBILI  [UIScreen mainScreen].bounds.size.height/667

//获取当前图片
#define UIIMAGE(x) [UIImage imageNamed:x]

#define USERINFO @"USERINFO"

#define UserAccountAndPassWorld @"UserAccountAndPassWorld"

#define LoginStatus @"LoginStatus"

#define IntroduceStatus   @"IntroduceStatus"

#define FiveMinutesDefaultsKey @"fiveMinutesDefaultsKey"

//沙盒测试  账号:123456tangbo@136.com  密码:123456Tangbo

////////////////////

//存储渠道号
#define CHANNEL @"CHANNEL"
#define UNIQUEID @"UNIQUEID"

//apid接口名
//主播详细信息
#define user_detail_info @"18006"
//随机获取主播
#define sui_ji_anchor @"18034"
// 获取通话记录
#define tong_hua_record @"18135"

//接口前缀
#define portsUser @"user"
#define portsRooms @"rooms"
#define portsSystem @"system"
#define portsWallet @"wallet"
#define portsTrans @"trans"

#endif /* ConstDefine_h */

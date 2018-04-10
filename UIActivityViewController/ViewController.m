//
//  ViewController.m
//  UIActivityViewController
//
//  Created by cao longjian on 2018/4/10.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "ViewController.h"
#import "CustomActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)shareBtnClick:(id)sender {
    [self shareImage];
}

- (void)shareImage
{
    NSString *textToShare = @"BOOK扫码借书，首日限免";
    UIImage *imageToShare = [UIImage imageNamed:@"avatar"];
    NSURL *urlToShare = [NSURL URLWithString:@"https://github.com/Caolongs"];
    [self shareWithActivityItems: @[urlToShare, textToShare, imageToShare]];
}

- (void)shareWithActivityItems:(NSArray *)activityItems
{
    
    //自定义Activity
    CustomActivity * customActivit = [[CustomActivity alloc] initWithTitie:@"iOS" withActivityImage:[UIImage imageNamed:@"avatar.png"] withUrl:[NSURL URLWithString:@"https://github.com/Caolongs"] withType:@"customActivity" withShareContext:activityItems];
    NSArray *activities = @[customActivit];
    
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:activities];

    
    // 根据需要指定不需要分享的平台
    activityVC.excludedActivityTypes = @[];
    /*
     UIKIT_EXTERN UIActivityType const UIActivityTypePostToFacebook     NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypePostToTwitter      NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypePostToWeibo        NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;    // SinaWeibo
     UIKIT_EXTERN UIActivityType const UIActivityTypeMessage            NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeMail               NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypePrint              NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeCopyToPasteboard   NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeAssignToContact    NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeSaveToCameraRoll   NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeAddToReadingList   NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypePostToFlickr       NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypePostToVimeo        NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypePostToTencentWeibo NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeAirDrop            NS_AVAILABLE_IOS(7_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeOpenInIBooks       NS_AVAILABLE_IOS(9_0) __TVOS_PROHIBITED;
     UIKIT_EXTERN UIActivityType const UIActivityTypeMarkupAsPDF        NS_AVAILABLE_IOS(11_0)
     */
    
    // >=iOS8.0系统用这个方法
    activityVC.completionWithItemsHandler = ^(NSString *activityType,BOOL completed,NSArray *returnedItems,NSError *activityError)
    {
        if (completed) { // 确定分享
        }
        else {
        }
    };
    [self presentViewController:activityVC animated:YES completion:nil];
}



@end

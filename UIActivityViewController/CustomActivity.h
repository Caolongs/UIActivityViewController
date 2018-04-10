//
//  CustomActivity.h
//  UIActivityViewController
//
//  Created by cao longjian on 2018/4/10.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomActivity : UIActivity

- (instancetype)initWithTitie:(NSString *)title withActivityImage:(UIImage *)image withUrl:(NSURL *)url withType:(NSString *)type  withShareContext:(NSArray *)shareContexts;

@end

//
//  MKProgressHud.h
//  what2
//
//  Created by mk on 15/9/23.
//  Copyright © 2015年 MK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKProgressHud : NSObject

+ (void)showStatus:(NSString *)status;
+ (void)showSucess:(NSString *)sucess;
+ (void)showError:(NSString *)error;
//+ (void)showProgress:(CGFloat)progress;

//+ (void)showProgress:(CGFloat)progress withInterface:(BOOL)interface;

+ (void)showStatus:(NSString *)status withInterface:(BOOL)interface;

+ (void)dismiss;
@end

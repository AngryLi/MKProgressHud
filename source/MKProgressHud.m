//
//  MKProgressHud.m
//  what2
//
//  Created by mk on 15/9/23.
//  Copyright © 2015年 MK. All rights reserved.
//

#import "MKProgressHud.h"

@import SVProgressHUD;

@implementation MKProgressHud

+ (void)_setup {
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setMinimumDismissTimeInterval:1];
}
// ############## 显示
// status
+ (void)showStatus:(NSString *)status {
    [self showStatus:status withInterface:YES];
}

+ (void)showStatus:(NSString *)status withInterface:(BOOL)interface {
    [self _setup];
    [SVProgressHUD setDefaultMaskType:interface? SVProgressHUDMaskTypeNone : SVProgressHUDMaskTypeClear];
    [SVProgressHUD showWithStatus:status];
}

// sucess
+ (void)showSucess:(NSString *)sucess {
    [self _setup];
    [SVProgressHUD showSuccessWithStatus:sucess];
}

// error
+ (void)showError:(NSString *)error {
    [self _setup];
    [SVProgressHUD showErrorWithStatus:error];
}

// progress
+ (void)showProgress:(CGFloat)progress {
    [self showProgress:progress status:@"" withInterface:YES];
}
+ (void)showProgress:(CGFloat)progress withInterface:(BOOL)interface {
    [self showProgress:progress status:@"" withInterface:YES];
}

// 基础调用 status  error   progress    sucess
+ (void)showProgress:(CGFloat)progress status:(NSString *)status withInterface:(BOOL)interface {
    [self _setup];
    [SVProgressHUD setDefaultMaskType:interface? SVProgressHUDMaskTypeNone : SVProgressHUDMaskTypeClear];
    [SVProgressHUD showProgress:progress status:status];
}

// ########### 隐藏
+ (void)dismiss {
    [SVProgressHUD dismiss];
}
@end

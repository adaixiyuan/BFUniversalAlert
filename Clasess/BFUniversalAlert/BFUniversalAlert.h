//
//  BFUniversalAlert.h
//  test
//
//  Created by quanyan on 2017/4/13.
//  Copyright © 2017年 quanyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RMUniversalAlert.h"
#import "LCActionSheet.h"

@interface BFUniversalAlert : NSObject

/**
 *  系统样式 alertView
 *
 *  @param viewController         显示控制器
 *  @param title                  标题
 *  @param message                描述
 *  @param cancelButtonTitle      取消
 *  @param destructiveButtonTitle 红色文字
 *  @param otherButtonTitles      其他
 *  @param tapBlock               回调
 */
+ (void)showAlertInViewController:(nonnull UIViewController *)viewController
                        withTitle:(nullable NSString *)title
                          message:(nullable NSString *)message
                cancelButtonTitle:(nullable NSString *)cancelButtonTitle
           destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                otherButtonTitles:(nullable NSArray *)otherButtonTitles
                         tapBlock:(nullable RMUniversalAlertCompletionBlock)tapBlock;

/**
 *  系统样式 actionSheet
 *
 *  @param viewController         显示控制器
 *  @param title                  标题
 *  @param message                描述
 *  @param cancelButtonTitle      取消
 *  @param destructiveButtonTitle 红色文字
 *  @param otherButtonTitles      其他
 *  @param tapBlock               回调
 */
+ (void)showActionSheetInViewController:(nonnull UIViewController *)viewController
                              withTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                 destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtonTitles
                               tapBlock:(nullable RMUniversalAlertCompletionBlock)tapBlock;
/**
 *  无圆角 无边距
 *
 *  @param title                  标题
 *  @param cancelButtonTitle      取消
 *  @param destructiveButtonTitle 红色
 *  @param allButtonTitles        所有按钮
 *  @param clicke                 回调
 */
+ (void)showActionSheetWithTitle:(nullable NSString *)title
               cancelButtonTitle:(nullable NSString *)cancelButtonTitle
          destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                 allButtonTitles:(nullable NSArray *)allButtonTitles
                         clicked:(nullable LCActionSheetClickedHandle)clicke;


@end

//
//  BFUniversalAlert.m
//  test
//
//  Created by quanyan on 2017/4/13.
//  Copyright © 2017年 quanyan. All rights reserved.
//

#import "BFUniversalAlert.h"

@implementation BFUniversalAlert

+ (void)showAlertInViewController:(nonnull UIViewController *)viewController
                        withTitle:(nullable NSString *)title
                          message:(nullable NSString *)message
                cancelButtonTitle:(nullable NSString *)cancelButtonTitle
           destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                otherButtonTitles:(nullable NSArray *)otherButtonTitles
                         tapBlock:(RMUniversalAlertCompletionBlock)tapBlock {
    
    [RMUniversalAlert showAlertInViewController:viewController
                                      withTitle:title
                                        message:message
                              cancelButtonTitle:cancelButtonTitle
                         destructiveButtonTitle:destructiveButtonTitle
                              otherButtonTitles:otherButtonTitles
                                       tapBlock:tapBlock];
}

+ (void)showActionSheetInViewController:(nonnull UIViewController *)viewController
                              withTitle:(nullable NSString *)title
                                message:(nullable NSString *)message
                      cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                 destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                      otherButtonTitles:(nullable NSArray *)otherButtonTitles
                               tapBlock:(nullable RMUniversalAlertCompletionBlock)tapBlock {
    
    [RMUniversalAlert showActionSheetInViewController:viewController
                                            withTitle:title message:message
                                    cancelButtonTitle:cancelButtonTitle
                               destructiveButtonTitle:destructiveButtonTitle
                                    otherButtonTitles:otherButtonTitles
                   popoverPresentationControllerBlock:nil
                                             tapBlock:tapBlock];
}

+ (void)showActionSheetWithTitle:(nullable NSString *)title
               cancelButtonTitle:(nullable NSString *)cancelButtonTitle
          destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                 allButtonTitles:(nullable NSArray *)allButtonTitles
                         clicked:(nullable LCActionSheetClickedHandle)clicke{
    
    LCActionSheet *actionSheet = [LCActionSheet sheetWithTitle:title
                                             cancelButtonTitle:cancelButtonTitle
                                                       clicked:clicke
                                         otherButtonTitleArray:allButtonTitles];
    actionSheet.blurEffectStyle = UIBlurEffectStyleLight;
    
    NSInteger index;
    if (destructiveButtonTitle.length > 0) {
        index = [allButtonTitles indexOfObject:destructiveButtonTitle]+1;
    }
    actionSheet.destructiveButtonIndexSet = [NSSet setWithObjects:@(index), nil];
    actionSheet.destructiveButtonColor    = [UIColor redColor];
    [actionSheet show];
}

@end

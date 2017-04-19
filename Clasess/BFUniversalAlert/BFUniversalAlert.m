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
+ (void)showAlertInViewController:(nonnull UIViewController *)viewController
                        withTitle:(nullable NSString *)title
                          message:(nullable NSString *)message
                    textFieldtext:(nullable NSArray *)textTitles
                cancelButtonTitle:(nullable NSString *)cancelButtonTitle
           destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                otherButtonTitles:(nullable NSArray *)otherButtonTitles
                         tapBlock:(nullable RMUniversalAlertCompletionBlock)tapBlock
{
    UIAlertController *strongController = [UIAlertController alertControllerWithTitle:title
                                                                 message:message
                                                          preferredStyle:UIAlertControllerStyleAlert];
    
    __weak UIAlertController *controller = strongController;
    
    if (cancelButtonTitle) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction *action){
                                                                 if (tapBlock) {
                                                                     tapBlock(controller,0);
                                                                 }
                                                             }];
        [controller addAction:cancelAction];
    }
    
    if (destructiveButtonTitle) {
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveButtonTitle
                                                                    style:UIAlertActionStyleDestructive
                                                                  handler:^(UIAlertAction *action){
                                                                      if (tapBlock) {
                                                                          tapBlock(controller, 1);
                                                                      }
                                                                  }];
        [controller addAction:destructiveAction];
    }
    
    for (NSUInteger i = 0; i < otherButtonTitles.count; i++) {
        NSString *otherButtonTitle = otherButtonTitles[i];
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction *action){
                                                                if (tapBlock) {
                                                                    tapBlock(controller, destructiveButtonTitle?2:1 + i);
                                                                }
                                                            }];
        [controller addAction:otherAction];
    }
    
    for (NSUInteger i = 0; i < textTitles.count; i++){
        [controller addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            textField.placeholder = [textTitles objectAtIndex:i];
        }];
    }
    
    [viewController presentViewController:controller animated:YES completion:nil];
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

//
//  ZKLoginViewController.h
//  weipeng
//
//  Created by Daqsoft-Mac on 15/1/17.
//  Copyright (c) 2015年 WangXiaoLa. All rights reserved.
//

#import "ZKSuperViewController.h"
#import "UIKeyboardViewController.h"

/**
 *  注册
 */
@interface ZKLoginViewController : ZKSuperViewController<UIKeyboardViewControllerDelegate>
{
 UIKeyboardViewController *keyBoardController;
}



@end
//
//  IsPlayerInfo.m
//  ProjectPractice
//
//  Created by Sid on 2014/3/9.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "IsPlayerInfo.h"

@implementation IsPlayerInfo
-(void)didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
    _textField.zOrder = 1;
    CCLOG(@"textfield = %ld",(long)_textField.zOrder);
}

-(void) isBackToMenu :(id)sender
{
    CCLOG(@"xxxx");
    [self.delegate BackToMenu];
}

@end

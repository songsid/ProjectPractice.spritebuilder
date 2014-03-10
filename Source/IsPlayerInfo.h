//
//  IsPlayerInfo.h
//  ProjectPractice
//
//  Created by Sid on 2014/3/9.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//
@protocol PlayerInfoDelegate <NSObject>
-(void) BackToMenu;

@end



#import "CCNode.h"
#import "MainScene.h"

@interface IsPlayerInfo : CCNode
{
    CCTextField * _textField;
}
@property (nonatomic,weak) id <PlayerInfoDelegate> delegate;

@end

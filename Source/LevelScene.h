//
//  LevelScene.h
//  ProjectPractice
//
//  Created by Sid on 2014/3/11.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//
@protocol LevelDelegate <NSObject>

-(void) backToMainSceneMenu;

@end



#import "CCNode.h"
#import "MainScene.h"
@interface LevelScene : CCNode
@property (nonatomic,weak) id <LevelDelegate> delegate;
@end

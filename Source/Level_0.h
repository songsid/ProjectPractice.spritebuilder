//
//  Level_0.h
//  ProjectPractice
//
//  Created by Sid on 2014/2/22.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//
@class MainScene;
#import "CCNode.h"
#import "MainScene.h"
@interface Level_0 : CCNode
{
    CCNode * _physicNode;
    
    CCNode * _player;
    CCNode * _ground;
    
    CCNode * _attack;
    
    BOOL enableJump;
    MainScene * main ;


}

@property (nonatomic,assign) float yTarget;
@property (nonatomic,assign) float ySpeed;
@property (nonatomic,assign) CGPoint playerY;
@property (nonatomic,assign) float y;
@property (nonatomic,assign) float t;

-(void) attack;
+(NSString *) whoIsLevel_0;

@end

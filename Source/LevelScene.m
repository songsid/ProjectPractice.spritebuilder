//
//  LevelScene.m
//  ProjectPractice
//
//  Created by Sid on 2014/3/11.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "LevelScene.h"

@implementation LevelScene
-(void) isMainScene :(id)sender
{

    
    CCScene *myscene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:myscene];
  //  [self.delegate BackToMainSceneMenu];


    CCLOG(@"MainScene");
}
@end

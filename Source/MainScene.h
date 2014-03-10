//
//  MainScene.h
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Level.h"
#import "Level_0.h"
#import "MenuLayer.h"
#import "LoadIntoLayer.h"
#import "IsPlayerInfo.h"

@interface MainScene : CCNode <PlayerInfoDelegate,MenuLayerDelegate,LoadIntoLayerDelegate>
{
    CCScrollView * _scrollView;
    CCScrollView * _scrollViewSpriteSelect;
    NSArray * levels;
    CCNode * _returnButton;
    CCNode * _bananaButton;
    CCNode * _setting;

}

@property (nonatomic, strong) CCNode *currentLevel;


-(void) selectGameOne;
-(void) selectGameTwo;
-(void) loadInto;
-(void) isPlayerInfo;
-(void) isMission;
-(void) BackToMenu;

@end

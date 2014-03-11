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
#import "LevelScene.h"
@interface MainScene : CCNode <PlayerInfoDelegate,MenuLayerDelegate,LoadIntoLayerDelegate,LevelDelegate>
{
    CCScrollView * _scrollView;
    CCScrollView * _scrollViewSpriteSelect;
    NSArray * levels;
    CCNode * _returnButton;
    CCNode * _bananaButton;
    CCNode * _setting;
    BOOL comeFromLevel;
}

@property (nonatomic, strong) CCNode *currentLevel;


-(void) selectGameOne;
-(void) selectGameTwo;
-(void) loadInto;
-(void) isPlayerInfo;
-(void) isMission;
-(void) BackToMenu;
-(void) LevelScene;
-(void) BackToMainSceneMenu;

@end

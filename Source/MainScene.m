//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"


@implementation MainScene
{
    int i;
    NSString * string;
}
-(void) didLoadFromCCB
{
    CCLOG(@"comeFromlevel = %hhd",comeFromLevel);
    if (!comeFromLevel) {
    
    _scrollViewSpriteSelect.visible = NO;
   CCLOG(@"_scrollview.zorder =  %ld",(long)_scrollViewSpriteSelect.zOrder);
    LoadIntoLayer * intoLayer = (LoadIntoLayer *) [CCBReader load:@"LoadIntoLayer"];
    intoLayer.delegate = self;
    _scrollView.contentNode = intoLayer;
    _returnButton.visible = NO;
    _bananaButton.visible = NO;
    _setting.visible = NO;
    self.currentLevel = [CCBReader load:@"LoadIntoLayer"];
    }else{
    
        [self BackToMainSceneMenu];
    }

}

-(void) loadInto
{

    
    MenuLayer *menuLayer = (MenuLayer *) [CCBReader load:@"MenuLayer"];
    menuLayer.delegate = self;
    _scrollView.contentNode = menuLayer;
    _returnButton.visible = NO;
    _bananaButton.visible = NO;
        _setting.visible = YES;
    self.currentLevel = [CCBReader load:@"MenuLayer"];
}


-(void) isGameReset:(id) sender
{
    MenuLayer *menuLayer = (MenuLayer *) [CCBReader load:@"MenuLayer"];
    menuLayer.delegate = self;
    _scrollView.contentNode = menuLayer;
    _returnButton.visible = NO;
    _bananaButton.visible =NO;
    _setting.visible = YES;
    self.currentLevel = [CCBReader load:@"MenuLayer"];
    _scrollViewSpriteSelect.visible = NO;
}



-(void) buttonPressed:(id) sender{
    if ([self.currentLevel isKindOfClass:[Level_0 class]]){
        Level_0 *level_0 = (Level_0 *) self.currentLevel;
        [level_0 attack];
        CCLOG(@"level0");
    }
    if ([self.currentLevel isKindOfClass:[Level class]]) {
        Level *level = (Level *) self.currentLevel;
        [level attack];
        CCLOG(@"level");
    }
    
    
    
 /*       NSLog(@"%@", [Level_0 whoIsLevel_0]);

        
        NSString *documentDiectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString *cardfilePath = [documentDiectory stringByAppendingPathComponent:@"gameRecord.plist"]; /////////////////////////////
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"danchen", @"userName", [NSNumber numberWithInt:90], @"score",  nil];
        
        if (dict) {
            [dict writeToFile:cardfilePath atomically:YES];
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"存檔成功！"
                                                                message:nil
                                                               delegate:nil
                                                      cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertView show];
        } else {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"存檔失敗！"
                                                                message:nil
                                                               delegate:nil
                                                      cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertView show];
        }
        
        NSDictionary *restoredDict = [NSDictionary dictionaryWithContentsOfFile:cardfilePath];
        NSLog(@"%@", [restoredDict description]);
    }
    */
    
    
}
-(void) selectGameOne
{
    Level *level = (Level *) [CCBReader load:@"Level"];
    _scrollView.contentNode = level;
    CCLOG(@"LOADing");
    _returnButton.visible = YES;
    _bananaButton.visible = YES;
        _setting.visible = YES;
    self.currentLevel = level;


}
-(void) selectGameTwo
{
    Level_0 *level = (Level_0 *) [CCBReader load:@"Level_0"];
    _scrollView.contentNode = level;
    CCLOG(@"LOADing");    
    _returnButton.visible = YES;
    _bananaButton.visible = YES;
    _setting.visible = YES;
    self.currentLevel = level;
}


-(void) isSetting :(id)sender
{
    CCLOG(@"setting 施工中");
}

-(void) isPlayerInfo
{
    IsPlayerInfo * playerInfo = (IsPlayerInfo *) [CCBReader load:@"IsPlayerInfo"];
    _scrollViewSpriteSelect.visible = YES;
    _scrollView.contentNode = playerInfo;
    _returnButton.visible = YES;
    _bananaButton.visible = NO;
    _setting.visible = NO;
    self.currentLevel = playerInfo;
    
    
}
-(void) isMission
{
}

-(void) BackToMenu
{
    CCLOG(@"BackToMenu");
    MenuLayer * menu = (MenuLayer *) [CCBReader load:@"MenuLayer"];
    _scrollView.contentNode = menu;
    _returnButton.visible = NO;
    _bananaButton.visible = NO;
    _setting.visible = NO;
    self.currentLevel = menu;
}

-(void) LevelScene
{
    CCScene *myscene = [CCBReader loadAsScene:@"LevelScene"];
    [[CCDirector sharedDirector] replaceScene:myscene];
    CCLOG(@"levelscene");
}
-(void) BackToMainSceneMenu
{
    MenuLayer *menuLayer = (MenuLayer *) [CCBReader load:@"MenuLayer"];
    menuLayer.delegate = self;
    _scrollView.contentNode = menuLayer;
    _returnButton.visible = NO;
    _bananaButton.visible =NO;
    _setting.visible = YES;
    self.currentLevel = [CCBReader load:@"MenuLayer"];
    _scrollViewSpriteSelect.visible = NO;
    
}
@end

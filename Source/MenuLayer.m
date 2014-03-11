//
//  MenuLayer.m
//  ProjectPractice
//
//  Created by Sid on 2014/3/6.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "MenuLayer.h"

@implementation MenuLayer
//@synthesize main = _main;

/*
-(MainScene *) main{
    if (!_main) {
        _main = [[MainScene alloc] init];
    }
    return _main;
}
 */

-(void) didLoadCCB
{
    self.userInteractionEnabled = TRUE;
}

-(void) isSelectGameOne: (id)sender
{
    CCLOG(@"gameONE!");
    [self.delegate selectGameOne];
    CCLOG(@"gameONE!");
}

-(void) isSelectGameTwo: (id)sender
{
    [self.delegate selectGameTwo];
    CCLOG(@"gameTWO!");    
}

-(void) isPlayerInfo:(id) sender
{
    [self.delegate isPlayerInfo];
}
-(void) isMission :(id)sender
{
    [self.delegate isMission];
}

-(void) isLevelScene :(id) sender
{
    [self.delegate LevelScene];
}
@end

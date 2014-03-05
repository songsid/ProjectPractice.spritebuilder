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

@interface MainScene : CCNode
{
    CCScrollView * _scrollView;
    NSArray * levels;

}
-(void)isShot :(id)sender;
@property (nonatomic, strong) CCNode *currentLevel;

@end

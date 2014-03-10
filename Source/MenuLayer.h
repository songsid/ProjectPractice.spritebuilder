//
//  MenuLayer.h
//  ProjectPractice
//
//  Created by Sid on 2014/3/6.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

@protocol MenuLayerDelegate <NSObject>
-(void) selectGameOne;
-(void) selectGameTwo;
-(void) isPlayerInfo;
-(void) isMission;
@end

#import "CCNode.h"
#import "MainScene.h"


@interface MenuLayer : CCNode

//@property (nonatomic, strong) MainScene * main;
@property (nonatomic, weak) id <MenuLayerDelegate> delegate;

@end

//
//  Level.h
//  ProjectPractice
//
//  Created by Sid on 2014/2/19.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface Level : CCNode
{
    CCNode * _physicNode;

    CCNode * _player;
    CCNode * _ground;
    CCNode * _attack;
    

}

@property (nonatomic, strong) CCNode *_player;
-(void) attack;


@end

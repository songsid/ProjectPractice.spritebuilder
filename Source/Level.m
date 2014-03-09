//
//  Level.m
//  ProjectPractice
//
//  Created by Sid on 2014/2/19.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Level.h"
#define ARC4RANDOM_MAX      0x100000000


@implementation Level
@synthesize _player;

-(void)didLoadFromCCB {
    self.userInteractionEnabled = TRUE;
    
   // _ac = @[_ground,_player];

}


-(void) update:(CCTime)delta
{
    

}
-(void) update
{

    
}

-(void) touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    CCLOG(@"touch!!!!");

    if (_player.position.y< _ground.position.y+5) {
        [_player.physicsBody applyImpulse:ccp(0, 1500.f)];
    }
   // CCLOG(@"arc4random %f.%lld" ,(CGFloat)arc4random()/ARC4RANDOM_MAX , ARC4RANDOM_MAX);
    
    
}

-(void) attack
{
    
    _attack = [CCBReader load:@"arrow"];
    _attack.position = ccp(_player.position.x+50, _player.position.y+50);
    [_physicNode addChild:_attack];
    /*    float rotationRadians = CC_DEGREES_TO_RADIANS(1);
     
     CGPoint directionVector = ccp(sinf(rotationRadians), cosf(rotationRadians));
     CGPoint force = ccpMult(directionVector, 50000);
     */ [_attack.physicsBody applyImpulse:ccp(300.0f, 0.f)];

}

@end

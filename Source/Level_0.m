//
//  Level_0.m
//  ProjectPractice
//
//  Created by Sid on 2014/2/22.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Level_0.h"

@implementation Level_0


-(void)didLoadFromCCB {
    self.userInteractionEnabled = TRUE;
    
    // _ac = @[_ground,_player];
    
}

-(void) update:(CCTime)delta
{

  


    if ((((_playerY.y - _player.position.y)<0.2f) && (_playerY.y - _player.position.y)>=0.0f) || ((_playerY.y - _player.position.y)>(-0.1f) && (_playerY.y - _player.position.y)<=0.0f)) {
        //CCLOG(@"Y==Y");
        enableJump = YES;
    }else{
        enableJump = NO;
    
    }
    
    _playerY = ccp(0, _player.position.y);

    
    
    _player.position = ccp(_player.position.x + 100*delta, _player.position.y);
    //CCLOG(@"\nposition = %f, %hhd",_player.position.y,enableJump);
    float xTarget = 80 - _player.position.x;
    CGPoint oldLayerPosition = self.position;
    
    float yNew = oldLayerPosition.y;
    float xNew = xTarget * 0.1 + oldLayerPosition.x * (1.0f - 0.1);
    
    self.position = ccp(xNew, yNew);
    
}

-(void) isShot :(id)sender
{
}

-(void) touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    CCLOG(@"touch!!!!");
    
  //  if (_player.position.y< _ground.position.y+5)
    if (enableJump)
    {
        [_player.physicsBody applyImpulse:ccp(0, 1500.f)];
    }
    // CCLOG(@"arc4random %f.%lld" ,(CGFloat)arc4random()/ARC4RANDOM_MAX , ARC4RANDOM_MAX);
    
    
    
}
-(void) attack
{
 
    _attack = [CCBReader load:@"arrow"];
    _attack.position = ccp(_player.position.x+40, _player.position.y+50);
    [_physicNode addChild:_attack];
/*    float rotationRadians = CC_DEGREES_TO_RADIANS(1);
    
    CGPoint directionVector = ccp(sinf(rotationRadians), cosf(rotationRadians));
    CGPoint force = ccpMult(directionVector, 50000);
   */ [_attack.physicsBody applyImpulse:ccp(2000.0f, 10.0f)];
}


-(void) jumpTest{
    [_player.physicsBody applyImpulse:ccp(0, 1500.f)];
}

+(NSString *) whoIsLevel_0{
    return @"Levle_0....";
}
@end

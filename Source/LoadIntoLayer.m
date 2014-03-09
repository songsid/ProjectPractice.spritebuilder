//
//  LoadIntoLayer.m
//  ProjectPractice
//
//  Created by Sid on 2014/3/9.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "LoadIntoLayer.h"

@implementation LoadIntoLayer

-(void) didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
}

-(void) touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [self.delegate loadInto];
    
}


@end

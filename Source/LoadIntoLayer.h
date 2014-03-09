//
//  LoadIntoLayer.h
//  ProjectPractice
//
//  Created by Sid on 2014/3/9.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

@protocol LoadIntoLayerDelegate <NSObject>
-(void) loadInto;
@end



#import "CCNode.h"

@interface LoadIntoLayer : CCNode
@property (nonatomic,weak) id <LoadIntoLayerDelegate> delegate;

@end

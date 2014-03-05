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
    i = 1;
}
-(void) isGameReset:(id) sender
{
    i +=1;
    i = i%2;
   
    if(i==1){
        _scrollView.contentNode = [CCBReader load:@"Level"];
    }

    if (i==0){
        _scrollView.contentNode = [CCBReader load:@"Level_0"];
    }

    self.currentLevel = _scrollView.contentNode;
    
}

-(void)isShot:(id)sender
{

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

@end

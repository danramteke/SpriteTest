//
//  DRMyScene.m
//  SpriteTest
//
//  Created by Cyrus on 1/16/14.
//  Copyright (c) 2014 Daniel Ramteke. All rights reserved.
//

#import "DRMyScene.h"
#import "DRSpaceshipScene.h"

@interface DRMyScene ()
@property BOOL contentCreated;
@end

@implementation DRMyScene

- (void)didMoveToView: (SKView *) view
{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

-(void)createSceneContents {
    self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
    
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    myLabel.name = @"helloNode";
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 30;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    SKScene *spaceshipScene  = [[DRSpaceshipScene alloc] initWithSize:self.size];
    SKTransition *doors = [SKTransition doorsOpenVerticalWithDuration:0.5];
    [self.view presentScene:spaceshipScene transition:doors];
    

}

-(void)update:(CFTimeInterval)currentTime {

}

@end

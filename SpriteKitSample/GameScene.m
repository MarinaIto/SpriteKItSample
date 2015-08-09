//
//  GameScene.m
//  SpriteKitSample
//
//  Created by Marina Ito on 2015/07/27.
//  Copyright (c) 2015年 Marina Ito. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {

    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, Dillen!";
    myLabel.fontSize = 55;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    
    [self addChild:myLabel];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        SKNode *node = [self nodeAtPoint:location];
                         
        
        if(node != nil && [node.name isEqualToString:@"rect"]) {
            
            //非表示にする　　　
             [node removeFromParent];
                } else {
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Dillen.jpg"];
        //SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor] size:CGSizeMake(50, 50)];
        
        
        sprite.xScale = 0.12;
        sprite.yScale = 0.12;
        sprite.position = location;
        sprite.name = @"rect";
            
        sprite.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:CGSizeMake(85, 85)];
        
        //SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        //[sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
        }
                         
                         }
                         }

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end

//
//  GameController.m
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/28.
//

#import "GameController.h"

@implementation GameController

- (instancetype) init {
    if (self = [super init]) {
        _fiveDiceContainer = [NSMutableArray new];
        _heldDice = [NSMutableDictionary new];
    }
    return self;
}

- (void) holdDie: (int) targetDieNumber {
    Dice *targetDie = self.fiveDiceContainer[targetDieNumber];
    targetDie.isHeld = true;
    // do not work
//    self.heldDice[@targetDieNumber] = targetDie;
}

@end

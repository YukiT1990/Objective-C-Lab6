//
//  GameController.h
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/28.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray *fiveDiceContainer;
@property NSMutableDictionary *heldDice;

- (void) holdDie: (int) targetDieNumber;

@end

NS_ASSUME_NONNULL_END

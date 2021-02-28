//
//  Dice.h
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property int currentValue;

- (int) randomizeValue;
- (NSString *) returnDieFace;

@end

NS_ASSUME_NONNULL_END

//
//  CardController.h
//  SingleCard-C
//
//  Created by Trevor Walker on 7/2/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
NS_ASSUME_NONNULL_BEGIN

@interface CardController : NSObject
+(void) fetchCard:(void (^) (Card *))completion;
@end

NS_ASSUME_NONNULL_END

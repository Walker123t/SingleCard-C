//
//  Card.h
//  SingleCard-C
//
//  Created by Trevor Walker on 7/2/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject
@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy, readonly) NSString *value;
@property (nonatomic, copy, readonly) NSString *code;
@property (nonatomic, copy, readonly) NSString *image;

-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;
-(instancetype)initWithCard:(NSString *) suit
                      value:(NSString *) value
                       code:(NSString *) code
                      image:(NSString *) image;
@end
NS_ASSUME_NONNULL_END

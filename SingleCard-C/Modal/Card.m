//
//  Card.m
//  SingleCard-C
//
//  Created by Trevor Walker on 7/2/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import "Card.h"

@implementation Card
- (instancetype)initWithCard:(NSString *)suit value:(NSString *)value code:(NSString *)code image:(NSString *)image{
    if (self = [super init]){
        _suit = suit;
        _value = value;
        _code = code;
        _image = image;
    }
    return self;
}
- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary{
    NSArray *cardsDict = dictionary[@"cards"];
    NSDictionary *dict = cardsDict.firstObject;
    NSString *suit = dict[@"suit"];
    NSString *value = dict[@"value"];
    NSString *code = dict[@"code"];
    NSString *image = dict[@"image"];
    
    if (![suit isKindOfClass:[NSString class]] || ![value isKindOfClass:[NSString class]] || ![code isKindOfClass:[NSString class]] || ![image isKindOfClass:[NSString class]])
    {
        return nil;
    }
    return [self initWithCard:suit value:value code:code image:image];
}
@end

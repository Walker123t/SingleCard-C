//
//  CardController.m
//  SingleCard-C
//
//  Created by Trevor Walker on 7/2/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import "CardController.h"
#import "Card.h"
static NSString * const baseURLString = @"https://deckofcardsapi.com/api/deck/new/draw/?count=1";
@implementation CardController

+ (void)fetchCard:(void (^)(Card *))completion{
    NSURL *baseURL = [NSURL URLWithString:baseURLString];
    
    [[[NSURLSession sharedSession] dataTaskWithURL:baseURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error)
        {
            NSLog(@"There was an error in %s: %@, %@", __PRETTY_FUNCTION__, error, [error localizedDescription]);
            completion(nil);
            return;
        }
        if (response)
        {
            NSLog(@"%@", response);
        }
        if(data)
        {
            NSDictionary *topLevelDictionary = [NSJSONSerialization JSONObjectWithData:data options:2 error:&error];
            if(!topLevelDictionary){
                completion(nil);
                return;
            }
            Card *card = [[Card alloc] initWithDictionary: topLevelDictionary];
            completion(card);
            NSLog(@"@%", card);
        }
    }
      ] resume];
}
@end

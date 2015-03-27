//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Xiaodong Jiang on 3/27/15.
//  Copyright (c) 2015 Xiaodong Jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic,readonly) NSArray *allItems;

+ (instancetype) sharedStore;
- (BNRItem *) createItem;
- (void) removeItem : (BNRItem *)item;
- (void) moveItemAtIndex : (NSInteger) fromIndex toIndex : (NSInteger) toIndex;

@end

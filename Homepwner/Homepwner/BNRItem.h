//
//  BNRItem.h
//  Homepwner
//
//  Created by Xiaodong Jiang on 3/27/15.
//  Copyright (c) 2015 Xiaodong Jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic, assign) int valueInDollars;
@property (nonatomic, strong, readonly) NSDate* dateCreated;
@property (nonatomic, copy) NSString *itemKey;

+ (instancetype) randomItem;

- (instancetype) initWithItemName : (NSString *)name valueInDollars : (int) value serialNumber : (NSString *)sNumber;
- (instancetype) initWithItemName:(NSString *)name;

@end

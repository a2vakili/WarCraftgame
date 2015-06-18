//
//  Unit.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Unit : NSObject
@property (nonatomic) int healthPoints;
@property (nonatomic) int attackPower;
@property (nonatomic) int damage;

- (instancetype)initWithHP: (int) hp AP: (int) ap;
- (void)damage:(int)damage;
- (void)attack:(Unit *)enemy;
    


@end

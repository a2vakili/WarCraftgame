//
//  Unit.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Unit.h"

@implementation Unit
- (instancetype)initWithHP: (int) hp AP: (int) ap
{
    self = [super init];
    if (self) {
        self.healthPoints= hp;
        self.attackPower= ap;
        self.damage -= 12;
    }
    return self;
}

- (void)damage:(int)damage{
    self.damage= damage;
    self.healthPoints-=12;
}

- (void)attack:(Unit *)enemy{
    
}

@end

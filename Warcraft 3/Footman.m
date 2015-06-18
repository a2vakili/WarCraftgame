//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.healthPoints= 60;
        self.attackPower= 10;
    }
    return self;
}

- (void)attack:(Footman *)enemy{
    
}

- (void)damage:(int)damage{
    self.damage= damage;
    self.healthPoints-=4;
}

@end

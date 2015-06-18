//
//  Barracks.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gold= 1000;
        self.food= 80;
    }
    return self;
}

-(Footman *)trainFootman{
    if ([self canTrainFootman]) {
        
    Footman *footman= [[Footman alloc] init];
    self.gold-= 135;
    self.food -= 2;
    return  footman;
    }
    return nil;
}
-(BOOL)canTrainFootman{
    if (self.gold >= 135 & self.food >=2) {
        return  true;
    }
    else
        return false;
}

-(Peasant *) trainPeasant{
    if ([self canTrainPeasant]) {
        
    Peasant *peasent= [[Peasant alloc]init];
    self.gold-=90;
    self.food -=5;
    return peasent;
    }
    return nil;
    
}

-(BOOL)canTrainPeasant{
    if (self.gold >= 90 & self.food >=5) {
        return  true;
    }
    else
        return false;
}



@end

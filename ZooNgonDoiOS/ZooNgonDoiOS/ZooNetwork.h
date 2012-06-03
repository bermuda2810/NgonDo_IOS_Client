//
//  ZooNetwork.h
//  ZooNgonDoiOS
//
//  Created by ViệtBQ on 5/29/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>


@interface ZooNetwork : NSObject<RKDynamicObjectMappingDelegate,RKRequestDelegate>
-(id) initZooNetwork;
@end

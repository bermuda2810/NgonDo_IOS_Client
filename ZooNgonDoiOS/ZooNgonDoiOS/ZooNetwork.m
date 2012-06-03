//
//  ZooNetwork.m
//  ZooNgonDoiOS
//
//  Created by ViệtBQ on 5/29/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooNetwork.h"
@implementation ZooNetwork

-(id) initZooNetwork{
    RKClient* client = [RKClient clientWithBaseURL:@"http://api.ngon.do"];
}

#pragma RKRequest Delegate
-(void) request:(RKRequest *)request didFailLoadWithError:(NSError *)error{
    
}

-(void) request:(RKRequest *)request didLoadResponse:(RKResponse *)response{
    
}

-(void) request:(RKRequest *)request didReceiveData:(NSInteger)bytesReceived totalBytesReceived:(NSInteger)totalBytesReceived totalBytesExpectedToReceive:(NSInteger)totalBytesExpectedToReceive{
    
}

-(void) request:(RKRequest *)request didReceiveResponse:(RKResponse *)response{
    
}

-(void) requestDidTimeout:(RKRequest *)request{
    
}

-(void) requestDidStartLoad:(RKRequest *)request{
    
}

-(void) requestDidCancelLoad:(RKRequest *)request{
    
}
@end

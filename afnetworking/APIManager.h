//
//  APIManager.h
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/17/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import <AFHTTPSessionManager.h>

@interface APIManager : NSObject

typedef void (^failureBlock)(NSURLSessionTask *operation, id error);
typedef void (^successBlock)(NSURLSessionTask *operation, id responseObject);

-(void)getOperationForAction:(NSString *)action parameters:(NSDictionary *)params completion:(successBlock)success failure:(failureBlock)failure;

@end

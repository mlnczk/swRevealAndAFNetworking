//
//  APIManager.m
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/17/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

-(AFHTTPSessionManager *)sessionManager{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager setResponseSerializer: [AFHTTPResponseSerializer serializer]];
    [manager.responseSerializer setAcceptableContentTypes:[manager.responseSerializer.acceptableContentTypes setByAddingObjectsFromArray:@[@"application/json", @"application/pdf", @"text/html;charset=utf-8", @"application/gzip", @"image/png"]]];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    return manager;
}

-(void)getOperationForAction:(NSString *)action parameters:(NSDictionary *)params completion:(successBlock)success failure:(failureBlock)failure{
    //NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",baseURL, action]];
    AFHTTPSessionManager *manager = [self sessionManager];
    [manager GET:action parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //jezei sukces to zwraca obiekt//
        success(nil, responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(nil, error);
        
    }];
    

}
@end

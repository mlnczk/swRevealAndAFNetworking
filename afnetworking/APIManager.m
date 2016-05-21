//
//  APIManager.m
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/17/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager


-(void)getOperationForAction:(NSString *)action parameters:(NSDictionary *)params completion:(successBlock)success failure:(failureBlock)failure{
    //NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",baseURL, action]];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:action parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //jezei sukces to zwraca obiekt//
        success(nil, responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(nil, error);
        
    }];
    

}
@end

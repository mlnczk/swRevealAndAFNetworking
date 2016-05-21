//
//  Shards.h
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/21/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol Shards

@end
@interface Shards : JSONModel
@property (nonatomic, strong)NSNumber *total;
@property (nonatomic, strong)NSNumber *successful;
@property (nonatomic, strong)NSNumber *failed;

@end

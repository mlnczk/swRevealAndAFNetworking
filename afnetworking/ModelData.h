//
//  ModelData.h
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/21/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "Data.h"
#import "Shards.h"

@interface ModelData : JSONModel
@property (nonatomic, strong)NSArray<Data> *hits;
@property (nonatomic, strong)NSArray<Shards> *_shards;
@property (nonatomic, assign)BOOL *timed_out;
@property (nonatomic, strong)NSNumber *took;

@end

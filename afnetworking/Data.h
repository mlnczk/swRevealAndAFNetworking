//
//  Data.h
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/21/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "Hits.h"

@protocol Data


@end

@interface Data : JSONModel
@property (nonatomic, strong)NSNumber *total;
@property (nonatomic, strong)NSNumber *max_score;
// JAK MODELUJEMY ARRAY TO MUSI BYC PROTOCOL W TEJ KLASIE KTORA MODELUJEMY //
@property (nonatomic, strong)NSArray<Hits> *hits;

@end

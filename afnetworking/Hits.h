//
//  Hits.h
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/21/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "Source.h"


@protocol Hits


@end
@interface Hits : JSONModel
//@property (nonatomic, strong)NSString *_type;
@property (nonatomic, strong)NSString *_index;
@property (nonatomic, strong)NSString *_id;
@property (nonatomic, strong)Source *_source;
//@property (nonatomic, assign)NSInteger *_score;


@end

//
//  ViewController.m
//  afnetworking
//
//  Created by Rafal Kampa on 17.05.2016.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "ViewController.h"
#import "APIManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    APIManager *manager = [[APIManager alloc]init];
    [manager getOperationForAction:@"http://recipecloud-search.td-asp.com/recipes_tr/_search?q=ean:8690629229887&size=100" parameters:nil completion:^(NSURLSessionTask *operation, id responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionTask *operation, id error) {
        NSLog(@"%@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

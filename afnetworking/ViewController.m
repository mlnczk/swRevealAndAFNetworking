//
//  ViewController.m
//  afnetworking
//
//  Created by Rafal Kampa on 17.05.2016.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "ViewController.h"
#import "APIManager.h"
#import "CollectionViewCell.h"
#import "Data.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) Data *data;

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
    
    [self.collectionView registerNib:[UINib nibWithNibName:[[CollectionViewCell class] description] bundle:nil] forCellWithReuseIdentifier:[[CollectionViewCell class]description]];
    [self.collectionView reloadData];
}
-(void)viewWillAppear:(BOOL)animated{
    
    for (int i = 0; i<self.data.hits.count; i++){
        Hits *hits = [[Hits alloc]initWithDictionary:self.data.hits[i] error:nil];
    }
    
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.data.hits.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    Hits *hits = [[Hits alloc]initWithDictionary:self.data.hits[indexPath.row] error:nil];
    
    [cell modellingThings:hits];
    
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 2;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath NS_AVAILABLE_IOS(9_0){
    return YES;
}

@end

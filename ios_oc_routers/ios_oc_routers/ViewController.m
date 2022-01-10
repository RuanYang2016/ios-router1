//
//  ViewController.m
//  ios_oc_routers
//
//  Created by admin on 2022/1/10.
//

#import "ViewController.h"
#import "RouterItemCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) NSMutableArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    
    NSMutableArray *arr=[[NSMutableArray alloc] initWithArray:@[@1,@2,@3,@4]];
    self.dataSource=arr;
    UICollectionViewFlowLayout*lay=[[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectV=[[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:lay];
    collectV.delegate=self;
    collectV.dataSource=self;
    
    self.collectionView=collectV;
    UINib *nib=[UINib nibWithNibName:@"RouterItemCollectionViewCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"RouterItemCollectionViewCell"];
//    [self.view addSubview:self.collectionView];
    // Do any additional setup after loading the view.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return  self.dataSource.count;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return  1;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    RouterItemCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"RouterItemCollectionViewCell" forIndexPath:indexPath];
    return  cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end

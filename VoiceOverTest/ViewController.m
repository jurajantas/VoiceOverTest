//
//  ViewController.m
//  VoiceOverTest
//
//  Created by Juraj Antas on 10/22/14.
//  Copyright (c) 2014 Juraj Antas. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property(nonatomic, strong) NSArray* items;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.items = @[@1,@2,@3,@4, @5,@6,@7,@8,@9,@10,@11,@12,@13,@14];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return [self.items count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NumberCell" forIndexPath:indexPath];
	CollectionViewCell* c = (CollectionViewCell*) cell;
	c.labelNumber.text = [[self.items objectAtIndex:[indexPath row]] stringValue];
	return cell;
}


@end

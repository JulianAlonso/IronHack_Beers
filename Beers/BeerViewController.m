//
//  ViewController.m
//  Beers
//
//  Created by Julian Alonso on 5/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "BeerViewController.h"

@interface BeerViewController ()

@property (weak, nonatomic) IBOutlet UILabel *beerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *beerCountryLabel;
@property (weak, nonatomic) IBOutlet UILabel *beerAlcoholGradeLabel;

@end

@implementation BeerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    self.beerNameLabel.text = self.beer.name;
    self.beerCountryLabel.text = self.beer.country;
    self.beerAlcoholGradeLabel.text = [NSString stringWithFormat:@"%lu", self.beer.alcoholGrade];
    
}

@end

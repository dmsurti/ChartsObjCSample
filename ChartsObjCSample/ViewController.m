//
//  ViewController.m
//  ChartsObjCSample
//
//  Created by Deepak Surti on 12/26/16.
//  Copyright © 2016 Ison Apps. All rights reserved.
//

#import "ViewController.h"
#import "ChartsObjCSample-Swift.h"
@import Charts;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BarChartView* barChartView = (BarChartView*)self.view;
    
    NSMutableArray* dataEntries = [[NSMutableArray alloc] init];
    for(int i = 0; i < 100; i++) {
        BarChartDataEntry* dataEntry = [[BarChartDataEntry alloc] initWithX:5.0 * arc4random_uniform(12) y:100.0];
        [dataEntries addObject:dataEntry];
    }
    
    BarChartDataSet* dataSet = [[BarChartDataSet alloc] initWithValues:dataEntries label:@"Visitor Count"];
    
    BarChartData* barChartData = [[BarChartData alloc] initWithDataSet:dataSet];
    barChartView.data = barChartData;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

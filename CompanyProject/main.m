//
//  main.m
//  CompanyProject
//
//  Created by ucom Apple instrucator on 13/9/29.
//  Copyright (c) 2013年 ucom Apple instrucator. All rights reserved.
//

#define PI 3.141592653

#define IS_LEAP_YEAR(y) y % 4 == 0 && y % 100 != 0 || y%400==0

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"
#import "Employee+Programmer.h"
#import "Worker.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        //test1();
        //test2();
        //test3();
        //test4();
        //test5();
        test6();
    }
    return 0;
}

int test1(){  //p46
    Employee *e1 = [[Employee alloc]init];
    e1.name = @"Hank";
    e1.salary = 25000.0f;
    
    NSLog(@"e1:%@, name %@, salary: %.2f", e1, [e1 getName], e1.salary);
    
    [e1 assignName:@"Peter"];
    
    
    Employee *e2 = [[Employee alloc]init]; //[e1 copy];
    e2.name = e1.name;
    e2.salary = e1.salary;
    
    NSLog(@"e2:%@, name: %@, salary: %.2f", e2, [e2 getName], e2.salary);
    
    [e1 release];
    [e2 release];

    return 0;
}

int test2(){
    Employee *e1 = [[Employee alloc]init];
    e1.name = @"Anne";
    e1.salary = 40000.0f;
    
    [e1 introduceSelf];
    [e1 sayHello:@"Mary" isNeedIntroduceSelf:YES];
    
    [e1 release];
    
    return 0;
}

int test3(){
    Employee *e1 = [[Employee alloc]init];
    e1.name = @"Anne";
//    e1.salary = 40000.0f;
    
    [e1 introduceSelf];
    [e1 sayHello:@"Mary" isNeedIntroduceSelf:YES];
    
    
    Manager *m1 = [[Manager alloc ]init];
    m1.name = @"Johnson";
    m1.salary = 65000.0f;
    m1.jobTitle = @"IT Manager";
    [m1 introduceSelf];
    [m1 sayHello:e1.name isNeedIntroduceSelf:NO];
    
    [m1 speakTo:e1.name messageInfo:@"go for lunch with me."];
    
    [e1 release];
    [m1 release];
    
    return 0;
}

int test4(){ //p67
    Employee *e1 = [[Employee alloc]initWithName:@"Anne"];

    [e1 introduceSelf];
    
    
    Manager *m1 = [[Manager alloc]initWithName:@"Johnson" jobTitle:@"IT Manager"];
    m1.salary = 45000;
    [m1 introduceSelf];
    
    id e2 = [[Employee alloc]init];//p68
//  id  e2 = [[Manager alloc]init];
    if([e2 isKindOfClass:Employee.class]){ //p71
        [e2 assignName:@"Kitty"];
        if([e2 isMemberOfClass:Manager.class]){  //p69
            [e2 setJobTitle:@"IT Manager"];
        }
        
        [e2 introduceSelf];
        
        if([e2 respondsToSelector:@selector(sayHello:isNeedIntroduceSelf:)]){ //p.73
            [e2 sayHello:@"Peter" isNeedIntroduceSelf:YES];
        }
        
    }
    
    [e1 release];
    [m1 release];
    [e2 release];
    return 0;
}

int test5(){
    Employee *e1 = [[Employee alloc]init];
    
    @try{ //p77
        [e1 introduceSelf];
    }@catch(NSException *ex){
        NSLog(@"%@", ex);
    }@finally {
        NSLog(@"finally...");
    }
    
    [e1 release];
}

int test6(){ //p92
    NSLog(@"empCount: %d", [Employee getEmpCount]);
    
    Employee *e1 = [[Employee alloc]initWithName:@"John"];
    [e1 writeCode:@"ObjC"];
    [e1 doJob];  //p96
    [e1 release];
    
    NSLog(@"empCount: %d", [Employee getEmpCount]);
    
    
    Manager *m1 = [[Manager alloc]init];
    [m1 release];
    
    NSLog(@"empCount: %d", [Employee getEmpCount]);
    
    id<Worker> w1 = [[Employee alloc]init]; //p101
    [w1 assignName:@"Mary"];
    [w1 doJob];
    [w1 release];
    
    NSLog(@"%.4f", PI);  //use macro
    NSLog(@"%@", IS_LEAP_YEAR(2016)?@"YES":@"NO");  //use macro
    
    return 0;
}

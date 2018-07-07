//
//  CategoryViewController.m
//  iOSNote
//
//  Created by li’s Air on 2018/7/7.
//  Copyright © 2018年 li’s Air. All rights reserved.
//

#import "CategoryViewController.h"
#include<unordered_map>
#include<string>
#include <stdio.h>
#include<iostream>
//using namespace std;

@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    testUnorderMap();
    
    
    NSLog(@"self : %lu|", ~uintptr_t(self));
}

#pragma -mark

#pragma -mark category

struct Person {
//    std::
    std::string *name;
    int age;
    
    Person(std::string name, int age)
    {
        this->name = &name;
        this->age = age;
    }
};


//知识点2
/*
 https://blog.csdn.net/haolipengzhanshen/article/details/51970348?locationNum=3&fps=1
 unordered_map  first is key, second is value
 find() 方法返回迭代器类型
 
 */
void testUnorderMap() {
//    typedef std::unordered_map<person,int> umap;
//    typedef std::unordered_map<Person, int> Umap;
//    Umap m;
//
    std::unordered_map<std::string, int> map;
    map["a"] = 1;
    map["a"] = 12;
    map["c"] = 3;
    
    for (const auto& n : map) {
        std::cout << "Key:[" << n.first << "] Value:[" << n.second << "]\n";
    }
    
//    map.erase("c"); // 删除 key 为 c 的值
    std::unordered_map<std::string, int>::iterator mapC = map.find("c");
    if (  mapC != map.end() ) {
        std::cout<<"find key c:"<< mapC->second<<"\n";
        map.erase(mapC);
    } else {
        std::cout<<"not find key c value"<<"\n";
    }
    
    if (  map.find("c") != map.end() ) {
        std::cout<<"find key c:"<< map["c"]<<"\n";
        
    } else {
        std::cout<<"not find key c value"<<"\n";
    }
    
    
    if ( map.find("d") != map.end() ) {
        std::cout<<"find key d:"<< map["d"]<<"\n";
    } else {
        std::cout<<"not find key is d value"<<"\n";
    }
    
    std::unordered_map<std::string, Person> personMap;
    Person p1("aa", 11);
    Person p2("bb", 22);
    Person p3("cc", 33);
    Person p4("dd", 44);
}


//知识点1
/* https://blog.csdn.net/lsjseu/article/details/42360709
 intptr_t 和uintptr_t 类型用来存放指针地址。它们提供了一种可移植且安全的方法声明指针，
 而且和系统中使用的指针长度相同，对于把指针转化成整数形式来说很有用。
 
 ~uintptr_t(id) 方法返回一个 18446603735771633215 字符串，不清楚是什么
 */
- (void)testSystemType {
    long num = 12;
    intptr_t *pNum = &num;
//  NSLog(@"self : %lu|", ~uintptr_t(self));
//    uintptr_t *npNum = &num;
}

@end

























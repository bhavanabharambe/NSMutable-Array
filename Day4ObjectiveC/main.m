//
//  main.m
//  Day4ObjectiveC
//
//  Created by Student 09 on 5/25/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSMutable Array
        NSMutableArray *changebleArray=[[NSMutableArray alloc]initWithObjects:@"Sunday",@"Monday",@"Tuesday", nil];
        NSLog(@"%@",changebleArray);
        
        //insert an array at particular index
        [changebleArray indexOfObject:@"Friday"];
        NSLog(@"Changeble Array Becomes:%@",changebleArray);
        
        //insert object in array
        [changebleArray insertObject:@"New Day" atIndex:3];
        NSLog(@"Now The Array Becomes %@",changebleArray);
        
        //removing object
        [changebleArray removeObject:@"NewDay"];
        NSLog(@"Now The Array Becomes:%@",changebleArray);
        
        //remove object at specific index
        [changebleArray removeObjectAtIndex:1];
        NSLog(@"Now The Array Becomes:%@",changebleArray);
        
        //remove last objects
        [changebleArray removeLastObject];
        NSLog(@"Now The Array Becomes:%@",changebleArray);
        
        //remove all objects
        [changebleArray removeAllObjects];
        NSLog(@"Now The Array Becomes:%@",changebleArray);
        
        NSArray *myArray=@[@"Day1",@"Day2",@"Day3",@"Day4",@"Day5"];
        
        //adding objects by using NSArray
        [changebleArray addObjectsFromArray:myArray];
        NSLog(@"Now array becomes;%@",changebleArray);
        
        
        //NSDictionary :Normally called by key-object pair in objective C
        //Declaring using literal syntax
        NSDictionary *myDictionaryOfStudents=@{@1:@"Nilesh",@2:@"Nikita",@3:@"Ankit",@4:@"Priya",@5:@"Eeshan"};
        NSLog(@"%@",myDictionaryOfStudents);
        
        //Declaring first object then key
        NSDictionary *firstDictionary =[NSDictionary dictionaryWithObjectsAndKeys:@"Item1",@1,@"Item2",@2 ,@"Item3",@3,nil];
        NSLog(@"%@",firstDictionary);
        
        NSDictionary *secondDic=[NSDictionary dictionaryWithObject:@"Single Object" forKey:@"s1"];
        NSLog(@"%@",secondDic);
        
        //searching object of particular key
        NSString *myObject=[myDictionaryOfStudents objectForKey:@3];
        NSLog(@"Student at the key 3 is %@",myObject);
        
        //Another way to fetching object from dictionary
        myObject=myDictionaryOfStudents[@5];
        NSLog(@"Student at the key 5 is %@",myObject);
        
        //fetching all keys in array
        NSArray *keysArray=[myDictionaryOfStudents allKeys];
        NSLog(@"Array of all keys:%@",keysArray);
        
        //fetching all values
        NSArray *valuesArray=[myDictionaryOfStudents allValues];
        NSLog(@"Array of all keys:%@",valuesArray);
        
        NSArray *keysArrayOfObject=[myDictionaryOfStudents allKeysForObject:@"Item1"];
        NSLog(@"All keys for object @Item:%@",keysArrayOfObject);
        
        NSArray *rollArray=@[@1,@2,@3,@4,@5];
        NSArray *nameArray=@[@"Name1",@"Name2",@"Name3",@"Name4",@"Name5"];
        
        //How you can init dic with arrays
        NSDictionary *newDic=[NSDictionary dictionaryWithObjects:nameArray forKeys:rollArray];
        NSLog(@"%@",newDic);
        
        //using for in loop
        for(id key in newDic.allKeys)
        {
            NSLog(@"key is %@ and the object is %@",key,newDic[key]);
        }
            
        
        //NSMutable Dictionary
        NSMutableDictionary *changbleDic=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Object1",@"key1",@"Object2",@"key2",@"Object3",@"key3",@"Object4",@"key4", nil];
        NSLog(@"%@",changbleDic);
        
        [changbleDic addEntriesFromDictionary:newDic];
        NSLog(@"Now the dictionary is becomes %@",changbleDic);
        
        NSMutableDictionary *newMutableDic=[[NSMutableDictionary alloc]init];
        //how to set the mutable dictionary
        [newMutableDic setDictionary:firstDictionary];
        NSLog(@"%@",newMutableDic);
        //how to set object in mutable dictionary
        [newMutableDic setObject:@"MyNewObject" forKey:@"MyNewKey"];
        
        NSLog(@"Now  after set the object and key then New mutable disc is %@",newMutableDic);
        //remove paricular key and value in mutable dictionary
        [newMutableDic removeObjectForKey:@"MyNewkey"];
        NSLog(@"Now the remove key for object mutable string is:%@",newMutableDic);
      //remove all objects from nsmutable dictionary
        [newMutableDic removeAllObjects];
        NSLog(@"Now New Mutable dic is : %@",newMutableDic);
      //how can you insert a new key and new object
        newMutableDic [@"e1"]=@"Employee1";
        NSLog(@"%@",newMutableDic);
       
    }
    return 0;
}

//
//  WoWUtilsTest.m
//  GuildBrowser
//
//  Created by Jan on 18.01.13.
//  Copyright (c) 2013 Charlie Fulton. All rights reserved.
//

#import "WoWUtilsTest.h"
#import "WoWUtils.h"

@implementation WoWUtilsTest


- (void)testCharacterClassNameLookup
{
    STAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"ClassType should be Warrior");
    
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
    
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
    
    STAssertEqualObjects(@"Hunter", [WoWUtils classFromCharacterType:3], @"ClassType should be Warrior");
    
    STAssertEqualObjects(@"Rogue", [WoWUtils classFromCharacterType:4], @"ClassType should be Rogue");
    
    STAssertEqualObjects(@"Priest", [WoWUtils classFromCharacterType:5], @"ClassType should be Priest");
    
    STAssertEqualObjects(@"Death Knight", [WoWUtils classFromCharacterType:6], @"ClassType should be Death Knight");
    
    STAssertEqualObjects(@"Shaman", [WoWUtils classFromCharacterType:7], @"ClassType should be Shaman");
    
    STAssertEqualObjects(@"Mage", [WoWUtils classFromCharacterType:8], @"ClassType should be Mage");
    
    STAssertEqualObjects(@"Warlock", [WoWUtils classFromCharacterType:9], @"ClassType should be Warlock");
    
    STAssertEqualObjects(@"Monk", [WoWUtils classFromCharacterType:10], @"ClassType should be Monk");
    
    STAssertEqualObjects(@"Druid", [WoWUtils classFromCharacterType:11], @"ClassType should be Druid");
    
    
}

- (void)testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"Race should be Human");
    
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"Race should be Orc");
    
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]], nil);
    
    STAssertEqualObjects(@"Dwarf", [WoWUtils raceFromRaceType:3], @"Race should be Dwarf");
    
    STAssertEqualObjects(@"Night Elf", [WoWUtils raceFromRaceType:4], @"Race should be Night Elf");

    STAssertEqualObjects(@"Undead", [WoWUtils raceFromRaceType:5], @"Race should be Undead");
    
    STAssertEqualObjects(@"Tauren", [WoWUtils raceFromRaceType:6], @"Race should be Tauren");
    
    STAssertEqualObjects(@"Gnome", [WoWUtils raceFromRaceType:7], @"Race should be Gnome");
    
    STAssertEqualObjects(@"Troll", [WoWUtils raceFromRaceType:8], @"Race should be Troll");
    
    STAssertEqualObjects(@"Goblin", [WoWUtils raceFromRaceType:9], @"Race should be Goblin");
    
    STAssertEqualObjects(@"Blood Elf", [WoWUtils raceFromRaceType:10], @"Race should be Blood Elf");
    
    STAssertEqualObjects(@"Draenei", [WoWUtils raceFromRaceType:11], @"Race should be Draenei");
    
    STAssertEqualObjects(@"Worgen", [WoWUtils raceFromRaceType:22], @"Race should be Worgen");
}


- (void)testQualityLookup
{
    STAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1], @"Quality should be Grey");
    
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], nil);
    
    STAssertEqualObjects(@"White", [WoWUtils qualityFromQualityType:2], @"Quality should be White");
    
    STAssertEqualObjects(@"Green", [WoWUtils qualityFromQualityType:3], @"Quality should be Green");
    
    STAssertEqualObjects(@"Blue", [WoWUtils qualityFromQualityType:4], @"Quality should be Blue");
    
    STAssertEqualObjects(@"Purple", [WoWUtils qualityFromQualityType:5], @"Quality should be Purple");
    
    STAssertEqualObjects(@"Orange", [WoWUtils qualityFromQualityType:6], @"Quality should be Legend");
}




























@end

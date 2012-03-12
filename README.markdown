[ObjectiveC suckLess]
=====================

**This is my first Objective-C project.  It may misunderstand conventions.  Use at your own risk.**

I have been a Ruby programmer for many years.  One of my favorite things about Ruby is its brevity.  I would very much like to develop software for iOS or Mac OS, but I find the verbosity of Objective C to be distasteful.

###Regular Expressions

Usage:

     [Regex match: @"(abc|def)" :to @"I like my abcs and defs!"]
     => true

     [Regex match: @"(abc|def)" :to @"I like my abcs and defs!" :andReplaceWith: "blah"]
     => @"I like my blahs and blahs!"

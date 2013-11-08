perl-oop-learning
=================

> 自己学习perl面向对象编程的一些心得和代码



> perl的面向对象，不喜欢perl的人说它是鸡肋，我认为，你都不喜欢，你评论个毛！

### 1、包的概念

> Perl程序把变量和子程序的名称存贮到符号表中，perl的符号表中名字的集合就称为包(package)。

在一个程序中可以定义多个包，每个包有一个单独的符号表，定义语法为：
    
    package mypack;
   
   此语句定义一个名为mypack的包，从此以后定义的所有变量和子程序的名字都存贮在该包关联的符号表中，直到遇到另一个package语句为止。
   
  每个符号表有其自己的一组变量、子程序名，各组名字是不相关的，因此可以在不同的包中使用相同的变量名，而代表的是不同的变量。如：

```   
$var = 14;  
package mypack; 
$var = 6;
```

第一个语句创建变量$var并存贮在main符号表中，第三个语句创建另一个同名变量$var并存贮在mypack包的符号表中。


``` 

实际上，编译器将从@INC指定的目录下去寻找MyModule.pm模块。
如果模块名称中包含::双冒号，  
该双冒号将作为路径分隔符，相当于Unix下的/或者Windows下
的。如：
Perl useMyDirectory::MyModule;
编译器将从@INC指定的目录下的MyDirectory子目录去寻找MyModule模块,类似

```

另外关于 use AnyEvent 和  use AnyEvent::HTTP 的区别是，几乎没区别，名字就叫这个，上面也解释了，如果模块名称中包含::双冒号，  该双冒号将作为路径分隔符。


### 2、perl 中的类

参见 [perlobj](http://perldoc.perl.org/perlobj.html)

   [perl面向对象](http://www.cbi.pku.edu.cn/chinese/documents/perl/perl13.htm)
    



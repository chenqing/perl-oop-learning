#!/usr/bin/perl
=desc
    练习perl中面向对象的用法，以及一些perl自己的特性等。
    
=cut

package Person ;

require Exporter ; #用来导出你想给别人使用的方法，也就是别人use  yourpackage 后可以使用的那些方法。
@ISA = qw(Exporter) ;
@EXPORT = qw(say run eat);

#首先要实现的一个方法就是构造函数 new

sub new {
    my $class = shift ;#加上这句，就是允许你的这个类是可以被继承的
    my %parm = @_ ;
    my $this = {};
    
    bless $this ,$class ; #创建类时，应该允许它可被继承，应该可以把类名作为第一个参数来调用new函数
    #你也可以在这里进行一些变量的初始化
    $this->{'name'} = $parm{'name'};
    $this->{'age'} = $parm{'age'};
    return $this ;
}

sub say {
=head
    #Perl的方法定义不提供任何特殊语法，但规定方法的第一个参数为对象或其被引用的包
    #静态方法第一个参数为类名，虚方法第一个参数为对象的引用。方法处理第一个参数的方式决定了它是静态的还是虚的。
    #静态方法一般忽略掉第一个参数，因为它们已经知道自己在哪个类了，构造函数即静态方法。
    #虚方法通常首先把第一个参数shift到变量self或this中，然后将该值作普通的引用使用。
=cut
    #say 方法是一个虚方法
    my $this = shift ;
    my ($k,$v) ;
    while( ($k,$v)= each(%$this)){
        printf "$k => $v \n";   
    }
    
}

sub run {
    #虚方法
    my $this = shift ;
    my  @parm = @_;
    printf "$this->{name} want to run  $parm[0] \n";
}

sub eat {
    printf "Yesterday , I eat Haidilao \n";
}


1; #这个1是必须的，当然也可以是大于1的true值，不过1是一个习惯值了





# AutolayoutAndFramelayout
##关于调用次序

ViewController:viewDidLoad
ViewController:viewWillAppear
subview:updateConstraints
ViewController:viewWillLayoutSubviews
ViewController:viewDidLayoutSubviews
subview:layoutSubviews
ViewController:viewWillLayoutSubviews
ViewController:viewDidLayoutSubviews
subview:layoutSubviews
subview:drawRect
ViewController:viewDidAppear
ViewController:viewWillLayoutSubviews
ViewController:viewDidLayoutSubviews
ViewController:viewWillLayoutSubviews
ViewController:viewDidLayoutSubviews

结论：  
1, viewDidAppear时，布局才完成。  
2, 可以在viewDidAppear后用setFrame进行调整；但是不稳定，比方屏幕旋转导致重新进行布局计算。  
3, 用xib布局，及时你不手动添加约束，在编译工程时会默认加上约束。  
4, 键盘出现或消失，会调用viewWillLayoutSubviews和viewDidLayoutSubviews，但不会引起重新布局计算。可以看做是一种通知吧。  
5, 用initwithframe创建的视图是不带约束的；  
6, 可以创建一个xib，禁止autolayout。然后将该视图添加到一个自动布局视图中。达到混用两种布局的效果。  
7, setFrame不会导致重新布局计算，你可以调用setNeedsLayout，强制进行重新布局计算。  

问题：
1, autolyaout 是否支持initwithframe:支持；相当于手动创建视图，添加到一个自动布局视图中。

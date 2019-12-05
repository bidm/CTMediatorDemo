# CTMediatorDemo
iOS 模块化 解耦

此项目基于CTMediator实现项目的模块化，达到解耦的目的
分两种调用方式：本地调用（模块A，模块B），远程URL调用（模块C）
运行demo，然后在Safari输入这个地址，会吊起模块C，并且得到参数id=123456 bidongmao://ModuleCViewController/GetModuleCVC?id=123456

待完善：将各个模块分别制作成私有库，以pod的方式管理各个模块



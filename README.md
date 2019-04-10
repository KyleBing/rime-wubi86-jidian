
![最好用的五笔输入法](https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/2019-03-02%2012-34-37.2019-03-02%2012_44_17.gif)

[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE) [![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)



## 前言

Rime 是一款跨平台的优秀输入法的内核。
该输入法在不同平台的名字也不同

- Windows - 小狼毫
- macOS - 鼠须管
- Linux - ibus-rime

Rime 输入法的优势在于它高度的可自定义化，不单单可以定义输入法码表，还可以定义输入法翻译码表的方式，标点对应等等等等。
高度自定义的特性也使得入门的门槛比较高一些。如果想自定义方案，需要有一定的编程基础，至少有一定的程序语言基础。


__用极点输入法的原因__

用久了五笔的都知道，喜欢五笔的因为是五笔的重码率少，如果码表太多重码就体验很差了。

这里导入的极点版是重码很少的，打起字来很爽的。而且对标点的支持也很好。之前用的 `清歌输入法`，但该输入法有个弊端，对于我这种前端工程师来说，会在工作中用到数字左边那个键 `~`，而清歌输入法把这个键作为临时拼音输入的入口，用起来就各种麻烦。现在换成 RIME 简直爽翻了。 好久没有这么爽的打过字了。

<img src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/Rime%E4%BA%94%E7%AC%94%E8%BE%93%E5%85%A5%E6%B3%95.gif" width=600 title="Rime五笔输入法输入样子">



## 安装 鼠须管

去 [官网下载](https://rime.im/download/)，或者直接点这里下载文章发布时的 [鼠须管 最新版 `0.11`](https://dl.bintray.com/rime/squirrel/Squirrel-0.11.0.zip)
- 官网下载 (https://rime.im/download/)
- 鼠须管 最新版 `0.11` (https://dl.bintray.com/rime/squirrel/Squirrel-0.11.0.zip)

下载后按照步骤安装即可


## 下载 五笔配置文件

也就是当前库，直接下载即可
> 五笔输入法-极点版： https://github.com/KyleBing/rime-wubi86-jidan

其中的文件列表有：

```bash
.
├── README.md                       # 当前说明文档
├── default.custom.yaml             # 用记自定义的一些输入方式或方向
├── pinyin_simp.dict.yaml           # 简体拼音码表 - 五笔中拼音输入需要的
├── pinyin_simp.schema.yaml         # 简体拼音解释器
├── squirrel.custom.yaml            # 输入法候选词界面
├── wubi86_jidian.dict.yaml         # 极点 - 五笔码表
├── wubi86_jidian.schema.yaml       # 极点 - 五笔码表解释器
├── wubi86_jidian_user.schema.yaml  # 极点 - 五笔用户自定义词
├── wubi_pinyin.schema.yaml         # 五笔拼音混输
└── wubi_trad.schema.yaml           # 五笔简入繁出
```


## 皮肤

<img title="skin" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/skin.png" width=300>


## 设置五笔输入法

Rime 输入法的设置方式：
把配置文件放到配置目录，在状态栏的输入法中选择 `鼠须管`，执行一下 `部署` 就好了。

macOS 上的 刀须管 设置目录是 `~/Library/Rime`

把上面下载的文件移到该目录中，点击 `部署` 即可。


## 相关链接

相关资源链接

- 极点五笔方案(github)： https://github.com/KyleBing/rime-wubi86-jidan
- RIME github 地址：   https://github.com/rime
- RIME 输入方案集合：  https://github.com/rime/plum
- RIME 官方五笔码表：  https://github.com/rime/rime-wubi
- RIME 简拼输入方案：  https://github.com/rime/rime-pinyin-simp

相关配置教程链接

- RIME 官网：   https://rime.im/
- RIME 输入方案参数详解：  https://github.com/LEOYoon-Tsaw/Rime_collections/blob/master/Rime_description.md



# 关于自定义一些功能

所有配置说明都在配置文件中说明了

```bash
├── squirrel.custom.yaml            # 输入法候选词界面
├── default.custom.yaml             # 用记自定义的一些输入方式或方向
├── wubi86_jidian.schema.yaml       # 极点 - 五笔码表解释器
├── wubi86_jidian_user.schema.yaml  # 极点 - 五笔用户扩展词库
```

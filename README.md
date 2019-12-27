![最好用的五笔输入法](https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/main.gif)

[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE) [![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)


## 前言

Rime 是一款跨平台的优秀输入法的内核。
该输入法在不同平台的名字也不同

- Windows - 小狼毫
- macOS - 鼠须管
- Linux - ibus-rime

目前本人已知的 Rime 在 windows 和 macOS 平台上的词库配置是相同的，只是配置文件的名字不一样。
Rime 输入法的优势在于它高度的可自定义化，不单单可以定义输入法码表，还可以定义输入法翻译码表的方式，标点对应等等等等。
高度自定义的特性也使得入门的门槛比较高一些。如果想自定义方案，需要有一定的编程基础，至少有一定的程序语言基础。


**用极点输入法的原因**

用久了五笔的都知道，喜欢五笔的因为是五笔的重码率少，如果码表太多重码就体验很差了。

这里导入的极点版是重码很少的，打起字来很爽的。而且对标点的支持也很好。之前用的 `清歌输入法`，但该输入法有个弊端，对于我这种前端工程师来说，会在工作中用到数字左边那个键 `~`，而清歌输入法把这个键作为临时拼音输入的入口，用起来就各种麻烦。现在换成 RIME 简直爽翻了。 好久没有这么爽的打过字了。

<img src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/Rime%E4%BA%94%E7%AC%94%E8%BE%93%E5%85%A5%E6%B3%95.gif" width=600 title="Rime五笔输入法输入样子">


## 使用前的一些用户习惯说明

**`control` + `0` 弹出菜单**

> 如果不弹出，应该是目前的软件环境屏蔽了这个组合键（如：MWeb），换个软件再按就可以了
弹的菜单中第一位的名字就是当前使用的输入法方案，其后跟着的就是该方法中的输入法菜单，有【半角 - 全角】【简 - 繁】等功能菜单，再后面的就是其它可选的输入法方案，对应 `default.custom.yaml` 中 `schema_list` 字段内容


**关于【简入繁出】支持**

<img src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/rime-tradition-output.gif" width=500 title="简入繁出">

是以切换输入方案的形式实现的，之前用菜单实现有个弊端：在切换应用后繁体输出的设置并没有保留，也就是说不是全局的，以输入方案的形式就可以实现全局繁体输入。
`control` + `0` 呼出菜单，选择`极点五笔繁体`，目前在 `Mac` 上测试正常，不知道 `Windows` 上如何，如果不能实现简入繁出的效果，可能需要安装 `OpenCC`[[链接地址](https://github.com/BYVoid/OpenCC)] 库支持，具体不知道怎么操作，因为我配好 `schema` 后就可以用了，没有安装 `OpenCC`


**自造词配置：默认只能输入码表中的字词**

> 如果需要打开自造词，请自行修改 `wubi86_jidian.schema.yaml` 下面对应字段值

```yaml
speller:
#  max_code_length: 4             # 在该行前面添加 '#' 注释掉该行 
translator:
  enable_sentence: true           # 设为true
  enable_user_dict: true          # 设为true
  enable_encoder: true            # 设为true
  encode_commit_history: true     # 设为true
  max_phrase_length: 10           # 自动生成词的最大长度
  user_dict: user                 # 用户词典名
  db_class: tabledb               # 用户词典类型 

```


## 安装 鼠须管(macOS)

去 [官网下载](https://rime.im/download/)
下载后按照步骤安装即可


## 下载 五笔配置文件

也就是当前库，直接下载即可
> 五笔输入法-极点版： https://github.com/KyleBing/rime-wubi86-jidian

其中的文件列表有：

```bash
.
├── README.md                               # 当前说明文档
├── rime.lua                                # 可以输出系统变量的函数
├── default.custom.yaml                     # 用记自定义的一些输入方式或方向
├── pinyin_simp.dict.yaml                   # 简体拼音码表 - 五笔中拼音输入需要的
├── pinyin_simp.schema.yaml                 # 简体拼音解释器
├── squirrel.custom.yaml                    # 鼠须管（for macOS）输入法候选词界面
├── weasel.custom.yaml                      # 小狼毫（for Windows）输入法候选词界面
├── wubi86_jidian.dict.yaml                 # 极点 - 五笔码表
├── wubi86_jidian.schema.yaml               # 极点 - 五笔码表解释器
├── wubi86_jidian_user.dict.yaml            # 极点 - 五笔用户自定义词
├── wubi86_jidian_extra_brand.dict.yaml     # 扩展词库 - 品牌
├── wubi86_jidian_extra_english.dict.yaml   # 扩展词库 - 常用英文
├── wubi86_jidian_extra_location.dict.yaml  # 扩展词库 - 地名
├── wubi86_jidian_extra_media.dict.yaml     # 扩展词库 - 影视名，音乐名
├── wubi86_jidian_extra_people.dict.yaml    # 扩展词库 - 名人
├── wubi86_jidian_extra_pro.dict.yaml       # 扩展词库 - 专业名词
├── wubi86_jidian_extra_game.dict.yaml      # 扩展词库 - 游戏相关
├── wubi86_jidian_pinyin.schema.yaml        # 五笔拼音混输
└── wubi86_jidian_trad.schema.yaml          # 五笔简入繁出
```


## 设置五笔输入法 macOS 鼠须管

把配置文件放到配置目录，在状态栏的输入法中选择 `鼠须管`，执行一下 `部署` 就好了。

1. macOS 上的 鼠须管 设置目录是 `~/Library/Rime` 
2. 把上面下载的文件移到该目录中，点击 `部署` 即可。

放的时候目录结构是这样的：

```bash
~/Library/
└── Rime
    ├── README.md
    ├── default.custom.yaml
    ├── pinyin_simp.dict.yaml
    ├── pinyin_simp.schema.yaml
    ├── squirrel.custom.yaml
    ├── wubi86_jidian.dict.yaml
    ├── wubi86_jidian.schema.yaml
    ├── wubi86_jidian_user.dict.yaml
    ├── wubi86_jidian_extra_brand.dict.yaml
    ├── wubi86_jidian_extra_english.dict.yaml
    ├── wubi86_jidian_extra_location.dict.yaml
    ├── wubi86_jidian_extra_media.dict.yaml
    ├── wubi86_jidian_extra_people.dict.yaml
    ├── wubi86_jidian_extra_pro.dict.yaml
    ├── wubi86_jidian_extra_game.dict.yaml
    ├── wubi86_jidian_pinyin.schema.yaml
    └── wubi86_jidian_trad.schema.yaml  
```

> 注意：对于不熟悉命令行操作的朋友， `~` 代表的是当前用户的主目录，比如我的用户名是 `kyle`, `~` 就代表 `/Users/kyle/` 这个绝对路径。需要将你下载的文件放入 `/Users/你用户名/Library/Rime` 这个目录下，了然否？

<!-- 
### Windows 小狼毫

<img title="skin" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/rime_setup_windows_start.png" width=300>

1. 点击【开始】
2. 打开刚刚安装的小狼毫输入法程序目录，打开【用户文件夹】
3. 把该项目中的文件复制到里面
4. 点击开始菜单中的【部署】即可

 -->


## 皮肤 macOS系统

<img title="skin" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/skin.png" width=500>


## 相关链接

**相关资源链接**
- 极点五笔方案(github)： https://github.com/KyleBing/rime-wubi86-jidan
- RIME github 地址：   https://github.com/rime
- RIME 输入方案集合：  https://github.com/rime/plum
- RIME 官方五笔码表：  https://github.com/rime/rime-wubi
- RIME 简拼输入方案：  https://github.com/rime/rime-pinyin-simp

**相关配置教程链接**
- RIME 官网：   https://rime.im/
- RIME 输入方案参数详解：  https://github.com/LEOYoon-Tsaw/Rime_collections/blob/master/Rime_description.md
- 中英切换自定义：https://gist.github.com/lotem/2981316



# 关于自定义一些功能

所有配置说明都在配置文件中说明了

```bash
├── squirrel.custom.yaml                    # macOS 鼠须管输入法候选词界面
├── weasel.custom.yaml                      # windows 小狼毫输入法候选词界面
├── default.custom.yaml                     # 用于自定义的一些输入方式，符号，中英文切换
├── wubi86_jidian.schema.yaml               # 极点 - 五笔码表解释器
├── wubi86_jidian_user.dict.yaml            # 极点 - 五笔用户扩展词库
├── wubi86_jidian_extra_brand.dict.yaml     # 扩展词库 - 品牌
├── wubi86_jidian_extra_english.dict.yaml   # 扩展词库 - 常用英文
├── wubi86_jidian_extra_location.dict.yaml  # 扩展词库 - 地名
├── wubi86_jidian_extra_media.dict.yaml     # 扩展词库 - 影视名，音乐名
├── wubi86_jidian_extra_people.dict.yaml    # 扩展词库 - 名人
├── wubi86_jidian_extra_pro.dict.yaml       # 扩展词库 - 专业名词
├── wubi86_jidian_extra_game.dict.yaml      # 扩展词库 - 游戏相关
```

输出系统时间和日期用：
- date 输出日期，格式 `2019年06月19日`
- time 输出时间，格式 `10:00`


## 开启五笔模式下的自动造词功能

默认是没有开启的，如果想开启需要手动编辑 `wubi86_jidian.schema.yaml` 文件，里面也有相关的说明

除了把文件中自动造词部分都设为 `true` 之外，还需要把 `speller` 那段的都注释掉，因为那里都是直接上屏的，直接上屏就无法造词了，所以需要注释掉。
造词功能是这样的，在输入一次之后，输入法会记住这个连词，打的时候后面会有图标指示，下次再输入这个词的时候，就会固定这个词，并在用户词典中新增这个词的词条。

你修改后的配置应该是这样的：

```yaml
speller:
#  max_code_length: 4                    # 四码上屏
#  auto_select: true                     # 自动上屏
#  auto_select_unique_candidate: true    # 无重码自动上屏

translator:
  # 开启自动造词相关设置
  enable_sentence: ture                # 是否开启自动造词
  enable_user_dict: ture               # 是否开启用户词典（用户词典记录动态字词频，用户词）
  enable_encoder: ture                 # 自动造词
  encode_commit_history: ture          # 是否对已上屏的词自动造词
```

效果如图：

<img title="1" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/wubi-auto-1.png" width="500">
<img title="2" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/wubi-auto-2.png" width="500">
<img title="3" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/wubi-auto-3.png" width="500">
<img title="4" src="https://github.com/KyleBing/rime-wubi86-jidan/blob/master/imgs/wubi-auto-4.png" width="500">

## 输出系统变量

自 v0.13之后可自定义输出系统变量，如日期等

文件 `rime.lua` 盛放的是调用的方法，你需要在相应的 `XXXX.schema.yaml` 文件的 `engine` 字段添加一些东西，可以参阅本库的 `wubi86_jidian.schema.yaml` 文件。
具体 `rime.lua` 文件说明参阅这里： [https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua](https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua)

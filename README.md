![最好用的五笔输入法](https://user-images.githubusercontent.com/12215982/81521174-02788480-9379-11ea-84be-b56e0b5e72c9.gif)

[![Badge](https://img.shields.io/badge/link-996.icu-%23FF4D5B.svg?style=flat-square)](https://996.icu/#/en_US)
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg?style=flat-square)](https://github.com/996icu/996.ICU/blob/master/LICENSE)

## 一、前言

Rime（中州韵） 是一款跨平台的优秀输入法的内核，不同平台的名字也有不同：

- `Windows` - 小狼毫 (weasel)
- `macOS` - 鼠须管 (squirrel)
- `Linux` - 中州韵 (ibus-rime)

> 移动端推荐`手机百度输入法`，关闭词语联想，开启四码上屏，需要添加新词的时候，回到拼音输入法，输入词语就会新建这个词

已知的 Rime 在各平台上的词库配置是相同的，只是入口的配置文件的名字不一样。
Rime 输入法的优势在于它高度的可自定义化，不单单可以定义输入法码表，还可以定义输入法翻译码表的方式，标点对应等等等等。
高度自定义的特性也使得入门的门槛比较高一些。如果想自定义方案，需要有一定的编程基础，至少有一定的程序语言基础。


**用极点输入法的原因**

用久了五笔的都知道，喜欢五笔的因为是五笔的重码少，如果码表太多重码体验就很差了。
好词库的特点是：减少特殊词的数量，增加通用词的频率。

极点版是重码很少的，打起字来很爽，而且对标点的支持也很好，之前用的 `清歌输入法`。

<img src="https://user-images.githubusercontent.com/12215982/81524061-6f444c80-9382-11ea-9ecc-edb38a2cfc3f.gif" width=600 alt="Rime五笔输入法输入样子">



## 二、使用说明

### 1. 呼出菜单
在输入状态时，<kbd>control</kbd> + <kbd>0</kbd> 或者 <kbd>shift</kbd> + <kbd>control</kbd> + <kbd>0</kbd> 弹出菜单

> 如果第一个组合键不弹出菜单，就用第二个组合键，还不弹出就换个软件，进入输入状态再试
> 有时候是目前的软件环境屏蔽了这个组合键（如：MWeb 中 <kbd>control</kbd> + <kbd>0</kbd> 这个组合键就冲突），换个软件再按就可以了

### 2. 菜单内容
弹出的菜单中，处于第一位的是当前使用的输入法方案，其后跟着是该方案中的输入法菜单，有【半角 - 全角】【简 - 繁】等常见功能菜单，再后面是其它可选的输入法方案，对应 [`default.custom.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/default.custom.yaml) 中 `schema_list` 字段内容

### 3. 默认二三候选
默认的二三候选是 `;` `'` 两个键

### 4. 临时拼音输入
在忘了某字的五笔编码时，<kbd>z</kbd>键可以进入临时拼音输入模式

### 5. 支持 简入繁出
<img src="https://user-images.githubusercontent.com/12215982/81521180-04dade80-9379-11ea-9d41-fd8a58d293ab.gif" width=500 alt="简入繁出">

是以切换输入方案的形式实现的，使用时，调出菜单，选择 `极点五笔繁体` 方案即可
> 以菜单实现有个弊端：在切换应用后繁体输出的设置并没有保留，也就是说不是全局的，以输入方案的形式就可以实现全局繁体输入。
> 如果不能实现简入繁出的效果，可能需要安装 `OpenCC`[[链接地址](https://github.com/BYVoid/OpenCC)] 库支持，具体不知道怎么操作，因为我配好 `schema` 后就可以用了，没有安装 `OpenCC`，`macOS` `Windows10` 都测试正常

### 6. 系统 `时间` 和 `日期`

输入对应词，获取当前日期和时间
- `date` 输出日期，格式 `2019年06月19日` `2019-06-19`
- `time` 输出时间，格式 `10:00` `10:00:00`

### 7. 支持大写数字输入：壹贰叁肆伍陆

本库中包含一个可以输入大写数字的方案，名叫 `大写数字`，呼出菜单选择该方案即可。
在这个模式下：具体可以看源文件 [`numbers.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/numbers.schema.yaml)


| 键 | 对应值        |
|-------------|------------|
| 1234567890  | 壹贰叁肆伍陆柒捌玖零 |
| wqbsjfd.     | 万仟佰拾角分第点    |
| z           | 整之         |
| y           | 元月亿        |

| 键 (按住 shift)  | 对应值         |
|------------|-------------|
| 1234567890 | 一二三四五六七八九〇  |
| wqbsjfd.    | 万千百十角分点     |
| z          | 整之          |
| y          | 元月亿         |


输入案例：

<img alt="大写数字输入案例" src="https://user-images.githubusercontent.com/12215982/81521150-fab8e000-9378-11ea-8b38-1caf43d6fdd2.gif" width="500">


## 三、安装

### 1. 安装 鼠须管(macOS)
去 [官网下载](https://rime.im/download/)，按步骤安装即可


#### a. 下载 五笔配置文件
也就是当前库，直接下载即可 [https://github.com/KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidian)

其中的文件列表有：
```bash
.
├── README.md                               # 当前说明文档
├── rime.lua                                # 配置文件 - 可以输出系统变量的函数
├── default.custom.yaml                     # 配置文件 - 自定义一些输入法的功能：标点，二三候选等
├── squirrel.custom.yaml                    # 配置文件 - 鼠须管（for macOS）输入法候选词界面
├── weasel.custom.yaml                      # 配置文件 - 小狼毫（for Windows）输入法候选词界面
├── numbers.schema.yaml                     # 输入方案 - 大写数字
├── wubi86_jidian.schema.yaml               # 输入方案 - 极点五笔
├── pinyin_simp.schema.yaml                 # 输入方案 - 简体拼音
├── wubi86_jidian_pinyin.schema.yaml        # 输入方案 - 五笔拼音混输
├── wubi86_jidian_trad.schema.yaml          # 输入方案 - 五笔简入繁出
├── pinyin_simp.dict.yaml                   # 词库文件 - 简体拼音码表 - 五笔中拼音输入需要的
├── wubi86_jidian.dict.yaml                 # 词库文件 - 极点五笔主码表
├── wubi86_jidian_addition.dict.yaml        # 词库文件 - WubiBuddy 用户词添加工具主操作文件
├── wubi86_jidian_user.dict.yaml            # 词库文件 - 用户私人词库
└── wubi86_jidian_extra.dict.yaml           # 词库文件 - 扩展词库
```


#### b. 设置五笔输入法 macOS 鼠须管

1. macOS 上的 鼠须管 配置文件存放目录是 `~/Library/Rime` 
2. 把上面下载的文件移到该目录中，点击 <kbd>部署</kbd> 即可。

放的时候目录结构是这样的：
```bash
~/Library/
└── Rime
    ├── README.md
    ├── default.custom.yaml
    ├── numbers.schema.yaml 
    ├── pinyin_simp.dict.yaml
    ├── pinyin_simp.schema.yaml
    ├── squirrel.custom.yaml
    ├── weasel.custom.yaml
    ├── wubi86_jidian.dict.yaml
    ├── wubi86_jidian.schema.yaml
    ├── wubi86_jidian_user.dict.yaml
    ├── wubi86_jidian_addition.dict.yaml
    ├── wubi86_jidian_extra.dict.yaml
    ├── wubi86_jidian_pinyin.schema.yaml
    └── wubi86_jidian_trad.schema.yaml  
```
> **注意**：对于不熟悉命令行操作的朋友， `~` 代表的是当前用户的主目录，比如我的用户名是 `kyle`, `~` 就代表 `/Users/kyle/` 这个绝对路径。
> 需要将你下载的文件放入 `/Users/你用户名/Library/Rime` 这个目录下，了然否？


#### c. 皮肤

玫枫

<img alt="skin maple magenta" src="https://user-images.githubusercontent.com/12215982/81521502-fa6d1480-9379-11ea-9ff2-4a730131ea52.png" width=500 />

安静

<img alt="calm" src="https://user-images.githubusercontent.com/12215982/81521185-060c0b80-9379-11ea-95eb-ad755394936e.png" width=500 />


### 2. 配置 小狼毫（Windows）

<img alt="skin" src="https://user-images.githubusercontent.com/12215982/81521186-073d3880-9379-11ea-953f-0fca61e82c5d.png" width=300 />

Windows 中的配置方法：
1. 点击【开始】
2. 打开刚刚安装的小狼毫输入法程序目录，打开【用户文件夹】
3. 把该项目中的文件复制到里面
4. 点击开始菜单中的【部署】即可


## 四、其它相关链接

__资源链接__
- [x] Rime github 地址：   [https://github.com/rime]( https://github.com/rime)
- [x] Rime 输入方案集合：  [https://github.com/rime/plum]( https://github.com/rime/plum)
- [x] Rime 官方五笔码表：  [https://github.com/rime/rime-wubi](https://github.com/rime/rime-wubi)
- [x] Rime 简拼输入方案：  [https://github.com/rime/rime-pinyin-simp](https://github.com/rime/rime-pinyin-simp)

__配置教程链接__
- [x] Rime 官网：   [https://rime.im/](https://rime.im/)
- [x] 中英切换自定义：[https://gist.github.com/lotem/2981316](https://gist.github.com/lotem/2981316)

__本库 Wiki__
- [x] [schema.yaml 详解](https://github.com/KyleBing/rime-wubi86-jidian/wiki/Schema.yaml-%E8%AF%A6%E8%A7%A3)
- [x] [关于编辑词库时的 tab 问题](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%85%B3%E4%BA%8E%E7%BC%96%E8%BE%91%E8%AF%8D%E5%BA%93%E6%97%B6-tab-%E7%9A%84%E9%97%AE%E9%A2%98)
- [x] [皮肤配置详解](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E7%9A%AE%E8%82%A4%E9%85%8D%E7%BD%AE%E8%AF%A6%E8%A7%A3)


## 五、关于自定义一些功能

所有配置说明都在配置文件中说明了，如果有其它问题可以在 `issue` 中提出，或者在群里（QQ群：878750538）讨论，有需要就 `@青枫`，一定要 `@` 哟，不我看不到

### 1. 回车清码
默认是关闭的
打开 `default.custom.yaml` 文件，找到下面这行，把前面的 `#` 去掉，跟上面对齐即可开启回车清码功能

```yaml
     - {accept: Return, send: Escape, when: composing}   # 回车清码
```

### 2. 编码提示
照顾多数人的输入情况，默认是开启的，可以手动关闭
如果想关闭，打开 `wubi86_jidian.schema.yaml` 编辑 `translator` -> `comment_format` 改成如下即可

```yaml
  comment_format:                       # 提示码自定义
    - xform/.+//                        # 配置：消除所有候选词后的提示码
```

### 3. 关于手动造词功能

手动往词库中添加词组，并重新布署
> 这个操作要注意的是词组与编码之间的符号是`tab`，写错了这个词是不会被识别的

目前 `macOS` 可以通过工具 [码表助手](https://github.com/KyleBing/WubiBuddy/releases) 来实现用户词的添加功能，仅支持 `macOS`  

<img width="703" alt="main" src="https://user-images.githubusercontent.com/12215982/80705752-8cbf1e00-8b19-11ea-8f0f-7134f3cd9585.png">


### 4. 输出系统变量
自 Rime `v0.13` 之后可自定义输出系统变量，如日期等

文件 [`rime.lua`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/rime.lua) 盛放的是调用的方法，你需要在相应的 `XXXX.schema.yaml` 文件的 `engine`/`translators` 字段添加一些东西，可以参阅本库的 [`wubi86_jidian.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/wubi86_jidian.schema.yaml) 文件。
具体 `rime.lua` 文件说明参阅这里： [https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua](https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua)


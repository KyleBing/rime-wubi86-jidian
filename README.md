![rime_all](https://user-images.githubusercontent.com/12215982/128606213-b418558c-ff2e-4368-9fb3-f078ad3d3cde.png)

该库是 Rime 办法的一个 86 版极点五笔的输入方案，支持多平台，并配有词条管理工具 [五笔词条工具](https://github.com/KyleBing/wubi-dict-editor)

## 一、前言

Rime 是一款跨平台的优秀输入法的内核，不同平台的名字也有不同：

- `Windows` - 小狼毫 ( `weasel` )
- `macOS` - 鼠须管 ( `squirrel` )
- `Linux` - 中州韵 ( `ibus-rime` )

Rime 输入法的优势在于它高度的可自定义化，不单单可以定义输入法码表，还可以定义输入法翻译码表的方式，标点对应等等等等。


**用极点输入法的原因**

用久了五笔的都知道，喜欢五笔的因为是五笔的重码少，如果码表太多重码体验就很差了。
好词库的特点是：减少特殊词的数量，增加通用词的频率。

### 皮肤

__macOS__

<img width="435" alt="Screen Shot 2020-12-09 at 12 15 57" src="https://user-images.githubusercontent.com/12215982/101584309-56833e80-3a18-11eb-9b83-a43204ad363c.png">

__Windows__

皮肤可以通过修改 `weasel.custom.yaml` 文件内的 color_scheme 实现修改，对应正文的颜色方案
```yaml
patch:
  style:
    color_scheme: WhiteAqua  # 匹配正文的颜色方案，对应正文的颜色方案名
```

<img width="400" alt="auto-create-words" src="https://user-images.githubusercontent.com/12215982/127078734-41584c0f-96b8-4630-8cd4-3522d9ce384e.jpg">

<img width="400" alt="auto-create-words" src="https://user-images.githubusercontent.com/12215982/127078737-9b6fb1c9-3b32-42e9-970f-baeb68c024b0.jpg">

<img width="400" alt="auto-create-words" src="https://user-images.githubusercontent.com/12215982/127078741-c4eb7b20-2199-4eea-a6da-491ff620a695.jpg">

## 二、文件说明

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
├── wubi86_jidian_addition.dict.yaml        # 词库文件 - 旧版 WubiBuddy 用户词添加工具主操作文件
├── wubi86_jidian_user.dict.yaml            # 词库文件 - 用户私人词库
└── wubi86_jidian_extra.dict.yaml           # 词库文件 - 扩展词库
```

## 三、安装

### 1. 安装 鼠须管(macOS)
去 [官网下载](https://rime.im/download/)，按步骤安装即可

1. 下载 五笔配置文件 [https://github.com/KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidian)
2. macOS 上的 鼠须管 配置文件存放目录是 `~/Library/Rime`，把下载后的`rime-wubi86-jidian`内的所有文件移到 `Rime` 目录中，
3. 点击状态栏上的输入法图标，下拉菜单中选择 <kbd>部署</kbd> (英文是<kbd>Deploy</kbd>），或者可以直接使用快捷键 <kbd>control</kbd> + <kbd>option</kbd> + <kbd>~</kbd>

**注意：** `Rime` 目录下的 `Build` 目录是程序生成的，不要把配置文件放在那里面，无视它即可。

放的时候目录结构是这样的：
```bash
~/Library/
└── Rime
    ├── 该项目中的文件
    ├── 该项目中的文件
    ├── 该项目中的文件
    ├── ...
    ├── ...
```

> **注意**：对于不熟悉命令行操作的朋友， `~` 代表的是当前用户的主目录，比如我的用户名是 `kyle`, `~` 就代表 `/Users/kyle/` 这个绝对路径。
> 需要将你下载的文件放入 `/Users/你用户名/Library/Rime` 这个目录下，了然否？


### 2. 配置 小狼毫（Windows）

Windows 中的配置方法：
1. 点击【开始】
2. 打开刚刚安装的小狼毫输入法程序目录，打开【用户文件夹】
3. 把该项目中的文件复制到里面
4. 点击开始菜单中的【部署】即可



## 四、使用说明

### 1. 选项菜单
在输入状态时，<kbd>control</kbd> + <kbd>0</kbd> 或者 <kbd>shift</kbd> + <kbd>control</kbd> + <kbd>0</kbd> 弹出菜单

### 2. 菜单内容
弹出的菜单中，处于第一位的是当前使用的输入法方案，其后跟着是该方案中的输入法菜单，有【半角 - 全角】【简 - 繁】等常见功能菜单，再后面是其它可选的输入法方案，对应 [`default.custom.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/default.custom.yaml) 中 `schema_list` 字段内容

### 3. 默认二三候选
默认的二三候选是 <kbd>;</kbd> <kbd>'</kbd> 两个键

### 4. 候选翻页
方向 <kbd>上</kbd><kbd>下</kbd>、<kbd>-</kbd> <kbd>=</kbd>、<kbd>[</kbd> <kbd>]</kbd>

### 5. 临时拼音输入
在忘了某字的五笔编码时，<kbd>z</kbd>键可以进入临时拼音输入模式

### 6. 支持 简入繁出
是以切换输入方案的形式实现的，使用时，调出菜单，选择 `极点五笔繁体` 方案即可

### 7. 系统 `时间` 和 `日期`
输入对应词，获取当前日期和时间
- `date` 输出日期，格式 `2019年06月19日` `2019-06-19`
- `time` 输出时间，格式 `10:00` `10:00:00`

### 8. 支持大写数字输入：壹贰叁肆伍陆
本库中包含一个可以输入大写数字的方案，名叫 `大写数字`，呼出菜单选择该方案即可。
在这个模式下：具体可以看源文件 [`numbers.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/numbers.schema.yaml)


| 键           | 对应值             | | 键 (按住 shift) | 对应值            |
|-------------|--------------------|---|-----------|-------------------|
| 1234567890  | 壹贰叁肆伍陆柒捌玖零  | | 1234567890 | 一二三四五六七八九〇  |
| wqbsjfd.    | 万仟佰拾角分第点     | | wqbsjfd.   | 万千百十角分点       |
| z           | 整之               | | z          | 整之               |
| y           | 元月亿             | | y          | 元月亿             |



## 五、自定义功能
所有配置说明都在配置文件中说明了，如果有其它问题可以在 `issue` 中提出，或者在群里（QQ群：878750538）讨论，有需要就 `@十月`，一定要 `@` 哟，不然我看不到的

### 1. 回车清码
默认是关闭的
打开 `default.custom.yaml` 文件，找到下面这行，把前面的 `#` 去掉，跟上面对齐即可开启回车清码功能

```yaml
     - {accept: Return, send: Escape, when: composing}   # 回车清码
```

### 2. 编码提示
默认是关闭的，可以手动开启，打开 `wubi86_jidian.schema.yaml` 编辑 `translator` -> `comment_format` 改成如下即可

```yaml
  comment_format: 
#    - xform/.+//                       # 注释掉该行，即可显示词条编码
```

### 3. 关于手动造词功能
一种方式是，手动往词库中添加词组，并重新布署
> 这个操作要注意的是词组与编码之间的符号是`tab`，写错了这个词是不会被识别的

另一种是使用工具。Rime 默认是没有词条管理工具的，所以就写了一个工具，基本满足日常需求，如果有什么其它需要的功能，可以跟我说。
[五笔词条工具](https://github.com/KyleBing/wubi-dict-editor)

<img width="600" alt="Screen Shot 2021-08-07 at 23 38 13" src="https://user-images.githubusercontent.com/12215982/128605586-47399a2e-c036-4729-aeef-8c67281b45ba.png">

### 4. 输出系统变量
自 Rime `v0.13` 之后可自定义输出系统变量，如日期等

文件 [`rime.lua`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/rime.lua) 盛放的是调用的方法，你需要在相应的 `XXXX.schema.yaml` 文件的 `engine`/`translators` 字段添加一些东西，可以参阅本库的 [`wubi86_jidian.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/wubi86_jidian.schema.yaml) 文件。
具体 `rime.lua` 文件说明参阅这里： [https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua](https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua)

### 5. 开启自动造词

<img width="463" alt="auto-create-words" src="https://user-images.githubusercontent.com/12215982/114480534-4b922200-9c35-11eb-8d08-4c8eacb407a2.png">

__注意__: 这样会关闭自动上屏，顶字上屏的功能。

需要修改 `wubi86_jidian.schema.yaml` 下面几个内容

```bash
speller:
  # max_code_length: 4                 # 四码上屏
  auto_select: false                   # 自动上屏

translator:
  enable_sentence: true                # 句子输入模式
  enable_user_dict: true               # 是否开启用户词典（用户词典记录动态字词频，用户词）
  enable_encoder: true

```


## 六、其它相关链接

__工具链接__
- [x] 五笔码表助手： [https://github.com/KyleBing/wubi-dict-editor](https://github.com/KyleBing/wubi-dict-editor)

__资源链接__
- [x] Rime github 地址：  [https://github.com/rime]( https://github.com/rime)
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



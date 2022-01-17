![rime_all](https://user-images.githubusercontent.com/12215982/144625408-61b43796-e120-4e12-9c70-ade0d91a77b3.png)

该库是 Rime 输入法的一个 86版极点五笔的输入方案，支持多平台（Windows、macOS、Linux）

## 一、前言

Rime 是个输入法集合，涵盖常用的三个平台 Windows、macOS、Linux，三个平台对应的输入法如上图。

该输入法具有高度可定制化的特性，输入法通过读取不同的配置文件，来实现不同输入方式：全拼、双拼、五笔、仓颉，不同的输入习惯：二三候选、回车清码、z键拼音反查等等。

正因为如此高的可自定义性，拉高了它的使用门槛。为了让更多的五笔用户更称心通过 Rime 输入五笔，就有了这个86五笔输入方案，它的输入习惯比较接近于之前的极点五笔，码表也是使用的极点五笔的码表。

由于三个平台使用的码表配置文件是一样的，所以能够在多个平台间保持同一种输入习惯，打起字来会比较舒服。

该码表词条不是很多，很多近期的词语可能会没有，需要自己添加，可以使用配套工具 [五笔词条工具](https://github.com/KyleBing/wubi-dict-editor) 来完成词条的添加。

> 好词库的特点是：减少特殊词的数量，增加通用词的频率。


## 二、不同平台的输入法外观


__macOS__

<img width="330" alt="Screen Shot 2020-12-09 at 12 15 57" src="https://user-images.githubusercontent.com/12215982/149726120-1a066937-551c-4a43-b2e8-b081f6366c9d.png">

__Windows__

皮肤可以通过修改 `weasel.custom.yaml` 文件内的 color_scheme 实现修改，对应正文的颜色方案

```yaml
patch:
  style:
    color_scheme: WhiteAqua  # 匹配正文的颜色方案，对应正文的颜色方案名
```

<img width="500" src="https://user-images.githubusercontent.com/12215982/139873356-1a0c91a9-7343-4dd8-910b-c8f2f7003365.png">

__Linux: Ubuntu__

<img width="250" alt="skin-ubuntu" src="https://user-images.githubusercontent.com/12215982/131607073-0b3dfe0e-bfc8-4be0-91c7-b304702acdda.png">



## 三、文件说明

```bash
.
├── README.md                               # 当前说明文档
├── rime.lua                                # 配置文件 - 可以输出系统变量的函数
├── default.custom.yaml                     # 配置文件 - 自定义一些输入法的功能：标点，二三候选等
├── squirrel.custom.yaml                    # 配置文件 - 鼠须管（for macOS）输入法候选词界面
├── weasel.custom.yaml                      # 配置文件 - 小狼毫（for Windows）输入法候选词界面
├── numbers.schema.yaml                     # 输入方案 - 大写数字
├── pinyin_simp.dict.yaml                   # 词库文件 - 简体拼音码表 - 五笔中拼音输入需要的
├── pinyin_simp.schema.yaml                 # 输入方案 - 简体拼音
├── wubi86_jidian_pinyin.schema.yaml        # 输入方案 - 五笔拼音混输
├── wubi86_jidian.schema.yaml               # 输入方案 - 极点五笔
├── wubi86_jidian.dict.yaml                 # 词库文件 - 极点五笔主码表
├── wubi86_jidian_trad.schema.yaml          # 输入方案 - 五笔简入繁出
├── wubi86_jidian_user.dict.yaml            # 词库文件 - 用户私人词库
└── wubi86_jidian_extra.dict.yaml           # 词库文件 - 扩展词库
```

## 四、安装

### 1. 鼠须管（macOS）
去 [官网下载](https://rime.im/download/)，按步骤安装即可

1. 下载 五笔配置文件 [https://github.com/KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidian)
2. macOS 上的 鼠须管 配置文件存放目录是 `~/Library/Rime`，把下载后的`rime-wubi86-jidian`内的所有文件移到 `Rime` 目录中，
3. 点击状态栏上的输入法图标，下拉菜单中选择 <kbd>部署</kbd> (英文是<kbd>Deploy</kbd>），或者可以直接使用快捷键 <kbd>control</kbd> + <kbd>option</kbd> + <kbd>~</kbd>

> **注意：** `Rime` 目录下的 `Build` 目录是程序生成的，不要把配置文件放在那里面，无视它即可。

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


### 2. 小狼毫（Windows）

Windows 中的配置方法：
1. 点击<kbd>开始</kbd>
2. 打开刚刚安装的小狼毫输入法程序目录，打开<kbd>用户文件夹</kbd>
3. 把该项目中的文件复制到里面
4. 点击开始菜单中的<kbd>部署</kbd>即可


### 3. ibus-rime (Ubuntu)

执行下面指令安装 `ibus-rime` 输入法

```bash
sudo apt-get install ibus-rime
```

ubuntu 的配置文件目录在 `~/.config/ibus/rime/`

## 五、使用说明

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
是以切换输入方案的形式实现的，使用时，调出菜单，选择 `简入繁出` 方案即可
简繁转换的功能能实现：
- 转繁体
- 转香港繁体
- 转台湾繁体
具体可以看这个文件内的说明： [wubi86_jidian_trad.schema.yaml](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/wubi86_jidian_trad.schema.yaml)
> 以不切换文字的形式使用只是暂时转繁，换个程序就会恢复简体了。如果你想一直使用简入繁出就选择 「简入繁出」这个方案

### 7. 系统 `时间`、`日期` 和 `星期`
输入对应词，获取当前日期和时间
- `date` 输出日期，格式 `2019年06月19日` `2019-06-19`
- `time` 输出时间，格式 `10:00` `10:00:00`
- `week` 输出星期，格式 `周四` `星期四`

### 8. 支持大写数字输入：壹贰叁肆伍陆
本库中包含一个可以输入大写数字的方案，名叫 `大写数字`，呼出菜单选择该方案即可。
在这个模式下：具体可以看源文件 [`numbers.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/numbers.schema.yaml)


| 键           | 对应值             | | 键 (按住 shift) | 对应值            |
|-------------|--------------------|---|-----------|-------------------|
| 1234567890  | 壹贰叁肆伍陆柒捌玖零  | | 1234567890 | 一二三四五六七八九〇  |
| wqbsjfd.    | 万仟佰拾角分第点     | | wqbsjfd.   | 万千百十角分点       |
| z           | 整之               | | z          | 整之               |
| y           | 元月亿             | | y          | 元月亿             |

### 9. 特殊字符快捷输入
默认是关闭的，具体可以查看 wiki [如何启用 ` /fh` 这种特殊符号输入](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%A6%82%E4%BD%95%E5%90%AF%E7%94%A8-%60--fh%60-%E8%BF%99%E7%A7%8D%E7%89%B9%E6%AE%8A%E7%AC%A6%E5%8F%B7%E8%BE%93%E5%85%A5)

<img width="300" src="https://user-images.githubusercontent.com/12215982/134291024-7df6073c-ec5a-420c-bcd1-2e63ea33d04b.jpg"/>


## 六、常见自定义功能
所有配置说明都在配置文件中说明了，如果有其它问题可以在 `issue` 中提出，或者在群里（[QQ群：878750538](https://jq.qq.com/?_wv=1027&k=st8cY2sI)） 讨论，有需要就 `@十月`，一定要 `@` 哟，不然我看不到的

### 1. 回车清码
默认是开启的
打开 `default.custom.yaml` 文件，找到下面这行，在前面添加 `#` 即可

```yaml
      # 回车清码
      - { when: composing, accept: Return, send: Escape }
```

### 2. 空码时自动清码
默认配置是不会自动清的，修改文件  `wubi86_jidian.schema.yaml` 中 `speller` 这一栏，将前面的 `#` 号删除即可
```yaml
  auto_clear: max_length                # 空码时自动清空
```

### 3. 编码提示
默认是关闭的，可以手动开启，打开 `wubi86_jidian.schema.yaml` 编辑 `translator` -> `comment_format` 改成如下即可

```yaml
  comment_format: 
#    - xform/.+//                       # 注释掉该行，即可显示词条编码
```

### 4. 关于手动造词功能
一种方式是，手动往词库中添加词组，并重新布署
> 这个操作要注意的是词组与编码之间的符号是`tab`，写错了这个词是不会被识别的

另一种是使用工具。Rime 默认是没有词条管理工具的，所以就写了一个工具，基本满足日常需求，如果有什么其它需要的功能，可以跟我说。
[五笔词条工具](https://github.com/KyleBing/wubi-dict-editor)

<img width="812" alt="Screen Shot 2021-11-22 at 19 22 45" src="https://user-images.githubusercontent.com/12215982/143464548-0458c637-ce41-450e-8faa-e826dd1fa5f3.png">

### 5. 输出系统变量
自 Rime `v0.13` 之后可自定义输出系统变量，如日期等

文件 [`rime.lua`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/rime.lua) 盛放的是调用的方法，你需要在相应的 `XXXX.schema.yaml` 文件的 `engine`/`translators` 字段添加一些东西，可以参阅本库的 [`wubi86_jidian.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/wubi86_jidian.schema.yaml) 文件。
具体 `rime.lua` 文件说明参阅这里： [https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua](https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua)

### 6. 开启自动造词

<img width="463" alt="auto-create-words" src="https://user-images.githubusercontent.com/12215982/114480534-4b922200-9c35-11eb-8d08-4c8eacb407a2.png">

> **注意**: 这样会关闭自动上屏，顶字上屏的功能。

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


## 七、其它相关链接

__工具链接__
- [x] 五笔码表助手： [https://github.com/KyleBing/wubi-dict-editor](https://github.com/KyleBing/wubi-dict-editor)

__资源链接__
- [x] Rime github 地址：  [https://github.com/rime]( https://github.com/rime)
- [x] Rime 输入方案集合：  [https://github.com/rime/plum]( https://github.com/rime/plum)
- [x] Rime 官方五笔方案：  [https://github.com/rime/rime-wubi](https://github.com/rime/rime-wubi)
- [x] Rime 简拼输入方案：  [https://github.com/rime/rime-pinyin-simp](https://github.com/rime/rime-pinyin-simp)

__配置教程链接__
- [x] Rime 官网：   [https://rime.im/](https://rime.im/)
- [x] 中英切换自定义：[https://gist.github.com/lotem/2981316](https://gist.github.com/lotem/2981316)
- [x] 簡繁配置說明關於 OpenCC ：[https://github.com/rime/home/issues/420](https://github.com/rime/home/issues/420)

__本库 Wiki__
- [x] [.schema.yaml 详解](https://github.com/KyleBing/rime-wubi86-jidian/wiki/Schema.yaml-%E8%AF%A6%E8%A7%A3)
- [x] [关于编辑词库时的 tab 问题](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%85%B3%E4%BA%8E%E7%BC%96%E8%BE%91%E8%AF%8D%E5%BA%93%E6%97%B6-tab-%E7%9A%84%E9%97%AE%E9%A2%98)
- [x] [皮肤配置详解](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E7%9A%AE%E8%82%A4%E9%85%8D%E7%BD%AE%E8%AF%A6%E8%A7%A3)
- [x] [如何启用 ` fh` 这种特殊符号输入](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%A6%82%E4%BD%95%E5%90%AF%E7%94%A8-%60--fh%60-%E8%BF%99%E7%A7%8D%E7%89%B9%E6%AE%8A%E7%AC%A6%E5%8F%B7%E8%BE%93%E5%85%A5)



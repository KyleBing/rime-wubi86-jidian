![rime_all](https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/fdc029e5-7844-4819-a8f8-ac9b59367f23)

该库是 [Rime](https://rime.im/) 输入法一个 86版极点五笔的输入配置方案，支持多平台（Windows、macOS、Linux、iOS）

## 一、概述

Rime 是个输入法内核，在它的基础之上，又出现了涵盖 **Windows**、**macOS**、**Linux** **iOS** 四个常用系统平台的输入法，对应的输入法名如上图。

该输入法具有高度可定制化的特性，输入法通过读取不同的配置文件，来实现不同输入方式：**全拼**、**双拼**、**五笔**、**仓颉**，设置不同的输入习惯：**二三候选**、**回车清码**、**z键拼音反查**等等。

正因为如此高的可自定义性，拉高了它的使用门槛。为了让更多的五笔用户更省心地使用 Rime 输入五笔，就有了当前这个 86五笔输入方案，它的输入习惯比较接近于之前的极点五笔，码表也是使用的极点五笔的码表。

> 单字的顺序严格对标原极点输入法词库： [五笔码表文件](https://github.com/KyleBing/wubi-jidan-dict)。 比如一级简码的二位候选： 
> - `y`-`言`
> - `h`-`目`
> - `v`-`女` 

由于四个平台使用的码表配置文件是一样的，所以能够在多个平台间保持同一种输入习惯，打起字来也会比较舒服。

该码表词条不是很多，很多专业性的词语可能会没有，需要自己添加，可以使用配套工具 [**五笔词条工具**](https://github.com/KyleBing/wubi-dict-editor) 来完成词条的添加。


## 二、不同平台的输入法外观

**macOS**  
<img width="330" alt="Screen Shot 2020-12-09 at 12 15 57" src="https://user-images.githubusercontent.com/12215982/149726120-1a066937-551c-4a43-b2e8-b081f6366c9d.png">

**Windows**  
皮肤可以通过修改 `weasel.custom.yaml` 文件内的 color_scheme 实现修改，对应正文的颜色方案

```yaml
patch:
  style:
    color_scheme: WhiteAqua  # 匹配正文的颜色方案，对应正文的颜色方案名
```

<img width="500" src="https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/d3ab63d8-6d93-47f5-a599-5f4d9334dfab"/>

**Ubuntu**  
<img width="250" alt="skin-ubuntu" src="https://user-images.githubusercontent.com/12215982/131607073-0b3dfe0e-bfc8-4be0-91c7-b304702acdda.png">

**iOS**  
**仓输入法**： 最近才发现一个非常好的 iOS 端的 Rime 内核输入法，可以使用当前库的配置文件，输入习惯跟电脑上一模一样，简直不要太爽。直接 AppStore 搜索下载即可。  
但痛点还是一样，无法很方便的添加词汇。


github 开源地址： [https://github.com/imfuxiao/Hamster](https://github.com/imfuxiao/Hamster)

**Android**   
因为平时不用 Android 设备，不太了解，如果有好的可以推荐下

## 三、文件说明

```bash
.
├── LICENSE                                 # license
├── README.md                               # 当前说明文档

├── rime.lua                                # 配置 - 可以输出系统变量的函数
├── default.custom.yaml                     # 配置 - 自定义一些输入法的功能：标点，二三候选等
├── squirrel.custom.yaml                    # 配置 - 鼠须管（for macOS）输入法候选词界面
├── weasel.custom.yaml                      # 配置 - 小狼毫（for Windows）输入法候选词界面
├── numbers.schema.yaml                     # 方案 - 大写数字

├── pinyin_simp.dict.yaml                   # 词库 - 简体拼音码表 - 五笔中拼音输入需要的
├── pinyin_simp.schema.yaml                 # 方案 - 简体拼音

├── wubi86_jidian.ico                       # 输入法任务栏图标 for Windows
├── wubi86_jidian.schema.yaml               # 方案 - 极点五笔
├── wubi86_jidian.dict.yaml                 # 词库 - 极点五笔主码表
├── wubi86_jidian_user.dict.yaml            # 词库 - 用户私人词库
├── wubi86_jidian_extra.dict.yaml           # 词库 - 扩展词库 - 实时更新的线上词库（需要使用 [五笔词条工具](https://github.com/KyleBing/wubi-dict-editor) ）
└── wubi86_jidian_extra_district.dict.yaml  # 词库 - 扩展词库 - 行政区域名称： 省市县区
├── wubi86_jidian_pinyin.schema.yaml        # 方案 - 五笔拼音混输
├── wubi86_jidian_trad.schema.yaml          # 方案 - 五笔简入繁出
├── wubi86_jidian_trad_pinyin.schema.yaml   # 方案 - 五笔拼音混输 简入繁出

```

## 四、安装

### 1. macOS（鼠须管）
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


### 2. Windows（小狼毫）

Windows 中的配置方法：
1. 右击状态栏中的小狼毫输入法图标，选择 <kbd>用户文件夹</kbd>
2. 把该项目中的文件复制到里面
3. 右击状态栏中的小狼毫输入法图标，选择 <kbd>重新部署</kbd> 即可


### 3. Ubuntu (ibus-rime)

执行下面指令安装 `ibus-rime` 输入法

```bash
sudo apt-get install ibus-rime
```

ubuntu 的配置文件目录在
```bash
~/.config/ibus/rime/
```

### 4. 仓输入法 (iOS)

1. AppStore 下载 仓输入法
2. 打开仓输入法设置，选择【输入方案上传】，同一局域网内打开电脑将电脑上的 Rime 配置文件上传到 打开窗口中的 Rime 文件夹下
3. 输入法上选择重新部署即可



## 五、扩展词库

默认已添加的词库有：
```yaml
  - wubi86_jidian_user                # 个人私有词库
  - wubi86_jidian_extra               # 扩展词库
  - wubi86_jidian_extra_district      # 扩展词库 - 行政区域
```

可以通过修改 `wubi86_jidian.dict.yaml` 文件头部的部分来启用、停用某一个词库。

比如想停用 `行政区域` 这个词库，直接在其前面添加  `#` 或者直接删除该行，执行输入法的 `部署` 或 `Deploy` 操作后即可生效。

### 1. 线上共享的扩展词库

以基础码表为基础，所有后加的词都放置在了 `wubi86_jidian_extra` 这个扩展词库中，可以通过工具来实现实时更新线上最新的词库内容。

这个词库是我维护的，你也可以将一些常用的词上传到线上。

我的想法是维护一个咱们五笔用户自己的词库，最终实现非常舒服的码字的目标。

需要注册码的 email 我获取即可： kylebing@163.com，来信请注明来意。

![工具上传词条](https://user-images.githubusercontent.com/12215982/216496512-8f54658a-71cd-4de2-8e16-dbb86baf6df4.png)

> ![2022-12-29 09 09 39](https://user-images.githubusercontent.com/12215982/209891815-057ce25b-cad5-4994-9495-9f2a0768733d.png)


### 2. 行政区域
`行政区域` 这个词库有 3000 多个词条，可能会导致重码变多，可以根据自己需要删减其内容，文件中已经根据省份划分地域名了。

```yaml
# 天津市
天津市	        giym		120000
天津市市辖区	    giya		120100
和平区	        tgaq		120101
河东区	        iaaq		120102
河西区	        isaq		120103
南开区	        fgaq		120104
河北区	        iuaq		120105
```

## 六、使用说明

### 1. 选项菜单
在输入状态时，<kbd>control</kbd> + <kbd>0</kbd> 或者 <kbd>shift</kbd> + <kbd>control</kbd> + <kbd>0</kbd> 弹出菜单

### 2. 菜单内容
弹出的菜单中，处于第一位的是当前使用的输入法方案，其后跟着是该方案中的输入法菜单，有【半角 - 全角】【简 - 繁】等常见功能菜单，再后面是其它可选的输入法方案，对应 [`default.custom.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/default.custom.yaml) 中 `schema_list` 字段内容

### 3. 五笔拼音混输

在 [default.custom.yaml](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/default.custom.yaml) 文件中罗列着可选的方案，已经注明具体方案的作用，如果你想五笔拼音混输，可以将混输方案移至最上面。

<img width="572" alt="Screenshot 2022-11-24 at 09 00 17" src="https://user-images.githubusercontent.com/12215982/203671534-c1d02ca4-66cd-4b8e-94b8-07908a1ac293.png">

### 4. 默认二三候选
默认的二三候选是 <kbd>;</kbd> <kbd>'</kbd> 两个键

### 5. 候选翻页
方向 <kbd>上</kbd><kbd>下</kbd>、<kbd>[</kbd> <kbd>]</kbd>

默认已关闭 <kbd>-</kbd> <kbd>=</kbd> 的上下翻页功能，如果需要请修改 `default.custom.yaml` 内容

### 6. 临时拼音输入
在忘了某字的五笔编码时，<kbd>z</kbd>键可以进入临时拼音输入模式

### 7. 支持 简入繁出
是以切换输入方案的形式实现的，使用时，调出菜单，选择 `简入繁出` 方案即可

简繁转换的功能能实现：
- 转繁体
- 转香港繁体
- 转台湾繁体
具体可以看这个文件内的说明： [wubi86_jidian_trad.schema.yaml](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/wubi86_jidian_trad.schema.yaml)
> 以不切换文字的形式使用只是暂时转繁，换个程序就会恢复简体了。如果你想一直使用简入繁出就选择 「简入繁出」这个方案

### 8. 系统 `时间`、`日期` 和 `星期`
输入对应词，获取当前日期和时间
- `date` 输出日期，格式 `2019年06月19日` `2019-06-19`
- `time` 输出时间，格式 `10:00` `10:00:00`
- `week` 输出星期，格式 `周四` `星期四`

### 9. 支持大写数字输入：壹贰叁肆伍陆
本库中包含一个可以输入大写数字的方案，名叫 `大写数字`，呼出菜单选择该方案即可。

在这个模式下：具体可以看源文件 [`numbers.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/numbers.schema.yaml)


| 键           | 对应值             | | 键 (按住 shift) | 对应值            |
|-------------|--------------------|---|-----------|-------------------|
| 1234567890  | 壹贰叁肆伍陆柒捌玖零  | | 1234567890 | 一二三四五六七八九〇  |
| wqbsjfd.    | 万仟佰拾角分第点     | | wqbsjfd.   | 万千百十角分点       |
| z           | 整之               | | z          | 整之               |
| y           | 元月亿             | | y          | 元月亿             |

### 10. 特殊字符快捷输入
默认是关闭的，具体可以查看 wiki [如何启用 ` /fh` 这种特殊符号输入](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%A6%82%E4%BD%95%E5%90%AF%E7%94%A8-%60--fh%60-%E8%BF%99%E7%A7%8D%E7%89%B9%E6%AE%8A%E7%AC%A6%E5%8F%B7%E8%BE%93%E5%85%A5)

<img width="300" src="https://user-images.githubusercontent.com/12215982/134291024-7df6073c-ec5a-420c-bcd1-2e63ea33d04b.jpg"/>


## 七、个性配置
所有配置说明都在配置文件中说明了，如果有其它问题可以在 `issue` 中提出，或者在群里（[QQ群：878750538](https://jq.qq.com/?_wv=1027&k=st8cY2sI)） 讨论，有需要就 `@十月`，一定要 `@` 哟，不然我看不到的

### 1. 候选个数
默认是5，可以自定义候选面板中的候选词的个数，编辑  `default.custom.yaml` 中以下这段，修改成你想要的个数即可，最多支持10个
```yaml
  menu:
      page_size: 5      # 候选词数量，最多支持 10 个
```

### 2. 回车清码
默认是关闭的

想要开启，打开 `default.custom.yaml` 文件，找到下面这行，去掉前面的 `#` 即可，如下

```yaml
      # 回车清码
      - { when: composing, accept: Return, send: Escape }
```

### 3. 空码时自动清码
默认配置是不会自动清的，想要自动清码，修改文件  `wubi86_jidian.schema.yaml` 中 `speller` 这一栏，将前面的 `#` 号删除即可，如下
```yaml
  auto_clear: max_length                # 空码时自动清空
```

### 4. 编码提示
默认是关闭的，
想要开启，打开 `wubi86_jidian.schema.yaml` 编辑 `translator` -> `comment_format` 改成如下即可

```yaml
  comment_format: 
#    - xform/.+//                       # 注释掉该行，即可显示词条编码
```

### 5. 关于手动造词功能
一种方式是，手动往词库中添加词组，并重新部署
> 这个操作要注意的是词组与编码之间的符号是`tab`，写错了这个词是不会被识别的

另一种是使用工具。Rime 默认是没有词条管理工具的，所以就写了一个工具，基本满足日常需求，如果有什么其它需要的功能，可以跟我说。
> [五笔词条工具](https://github.com/KyleBing/wubi-dict-editor)

<img width="1362" alt="Screenshot 2022-12-16 at 21 28 54" src="https://user-images.githubusercontent.com/12215982/208109387-5062a921-8eef-4063-9936-42762197d6c8.png">

### 6. 输出系统变量
自 Rime `v0.13` 之后可自定义输出系统变量，如日期等

文件 [`rime.lua`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/rime.lua) 盛放的是调用的方法，你需要在相应的 `XXXX.schema.yaml` 文件的 `engine`/`translators` 字段添加一些东西，可以参阅本库的 [`wubi86_jidian.schema.yaml`](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/wubi86_jidian.schema.yaml) 文件。

具体 `rime.lua` 文件说明参阅这里： [https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua](https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua)

### 7. 开启自动造词

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


### 8. 单字派
如果你是单字派，只打单字，可以修改 `wubi86_jidian.schema.yaml` 这个文件，找到以下位置，根据需要去除对应行前面的 `#`，重新部署即可生效
```yaml
  filters:
#   - lua_filter@wubi_single_char_first_filter # 单字优先
#    - lua_filter@wubi_single_char_only # 纯单字
```

### 9. 隐藏候选窗口（Windows）
有些追求极致的用户不喜欢有候选框的显示，平时打字也用不到候选窗口，候选窗口也是可以隐藏的。（Windows）
编辑 `weasel.custom.yaml` 文件，定位到 `style.layout`，编辑 `margin_x` `margin_y` 将值设置成负值即可。

```yaml
      margin_x: -1               # int 内容离边框的，左右边界  当 margin_x 和 margin_y 设置为负值时，将不显示候选窗口，但不影响方案选择
      margin_y: -1               # int 内容离边框的，上下边界  当 margin_x 和 margin_y 设置为负值时，将不显示候选窗口，但不影响方案选择
```

这样打起字来有点当年用黑莓 auto_text 打五笔的感觉了。

<img src="https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/d440c7f0-8cde-49f6-b778-a3fc4aefe9da" width="500">

### 10. 定义输入方案的图标（Windows）
Windows 小狼毫 v0.15.0 版已经支持自定义某个方案的图标了，比如这个五笔方案就已经设置了自定义的图标。任务栏的图标不再是原来的 “中” 字，而是：

<img src="https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/7377bde6-a36d-40ac-b0ad-0674d22a68a3" width="600">

当按 <kbd>shift</kbd> 切换中英文输入的时候，就会显示这个图标。

<img src="https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/88ff51b5-6098-4464-a70f-6feb9e09de4e" width="500">


编辑某个你需要自定义图标的方案文件，比如我这个 `wubi86_jidian.schema.yaml`，编辑 `schema` 下的这两个位置，不过只使用第一个位置即可。

```yaml
  icon: "wubi86_jidian.ico"           # string 方案图标，格式： .ico
  ascii_icon:                         # string
```

需要你自己准备一个 `.ico` 图标文件，然后放到 Rime 配置文件的根目录下，再将文件名填到上面的位置，重新部署即可。


## 八、词条权重
该库的候选词排序方式是依据权重排序，权重是一个数量，数字越大权重越大，权重大的词靠前。为了让子码表也能在候选词中任意调整位置，主码表中的所有词都添加了权重，10为间隔。

没有权重时，子码表无法自由定义在候选词中的位置

<img width="800" alt="没有权重时" src="https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/6e27527a-dfc0-45f5-8bde-6ad15f1c1c89">

有了初始的权重后就可以定义任意位置了

<img width="800" alt="有权重后" src="https://github.com/KyleBing/rime-wubi86-jidian/assets/12215982/b80de286-66b9-4db7-8cfb-87f82b472b7a">

## 九、其它相关链接

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
- [x] 小狼毫 v0.15.0 更新说明 [https://github.com/rime/weasel/blob/master/CHANGELOG.md#0150-2023-06-06](https://github.com/rime/weasel/blob/master/CHANGELOG.md#0150-2023-06-06)

__本库 Wiki__
- [x] [.schema.yaml 详解](https://github.com/KyleBing/rime-wubi86-jidian/wiki/Schema.yaml-%E8%AF%A6%E8%A7%A3)
- [x] [关于编辑词库时的 tab 问题](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%85%B3%E4%BA%8E%E7%BC%96%E8%BE%91%E8%AF%8D%E5%BA%93%E6%97%B6-tab-%E7%9A%84%E9%97%AE%E9%A2%98)
- [x] [皮肤配置详解](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E7%9A%AE%E8%82%A4%E9%85%8D%E7%BD%AE%E8%AF%A6%E8%A7%A3)
- [x] [如何启用 ` fh` 这种特殊符号输入](https://github.com/KyleBing/rime-wubi86-jidian/wiki/%E5%A6%82%E4%BD%95%E5%90%AF%E7%94%A8-%5B-%E7%AC%A6%E5%8F%B7-%5D-%60fh%60-%E8%BF%99%E7%A7%8D%E7%89%B9%E6%AE%8A%E7%AC%A6%E5%8F%B7%E8%BE%93%E5%85%A5)



## 支持
感谢 [JetBrains](https://www.jetbrains.com/?from=rime-wubi86-jidian@KyleBing) 提供的工具支持

![JetBrains](https://resources.jetbrains.com/storage/products/company/brand/logos/jb_beam.svg?_ga=2.54620846.401568951.1648434626-301403838.1648434626)


> **始于** 2019年02月28日

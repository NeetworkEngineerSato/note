# note

## GitHub

```text
https://github.com/NeetworkEngineerSato/note.git
```

```text
git init --initial-branch=main
git config --local user.name "NeetworkEngineerSato"
git config --local user.email 78856616+NeetworkEngineerSato@users.noreply.github.com
git config core.autocrlf false
git commit --allow-empty -m "first commit"
git branch develop
git branch draft
git checkout draft
```

```text
NeetworkEngineerSato
```

```text
78856616+NeetworkEngineerSato@users.noreply.github.com
```

## Git

```text
git checkout --orphan orphan
```

## 書籍自炊

Imagemagick + PowerShell

画像重ね合わせ ファイルサイズ 6-7mb が上限

```text
[Int16] $FUZZ = 10
[string] $OUTPUT_FILE_NAME = 'out.png'

# ベースとなる画像ファイルの生成
magick -size 1x1 xc:none $OUTPUT_FILE_NAME

Get-ChildItem -Filter *.jpg |
ForEach-Object {
    magick $_.name $OUTPUT_FILE_NAME `
        -fuzz $FUZZ% `
        -transparent white `
        -layers merge `
        $OUTPUT_FILE_NAME

    Write-Progress " " -Status $_
}
```

透過処理チェック

```text
1..100 | ForEach-Object { magick 1.jpg -fuzz $_% -transparent white "transparent[${_}].png" ; Write-Progress " " -Status $_ }
```

保存サイズチェック用

```text
1..100 | ForEach-Object { magick 1.jpg -quality $_ "quality[${_}].jpg" ; Write-Progress " " -Status $_ }
```

```text

# ----------------------------------------
# メモリ大量消費
magick *.jpg -fuzz 5% -transparent white -layers merge out.png

magick -size 1x1 xc:none out.png;

# ----------------------------------------
1..100 | ForEach-Object { Write-Progress " " -Status $_% ; Start-Sleep -Milliseconds 100 }

; Write-Progress " " -Status $_%

# メモリ使用 50:2.1G(6mb) 100:4.2G(6mb) 200:8.4G
magick %03d.jpg[1-200] -fuzz 10% -transparent white -layers merge out.png

mogrify -fuzz 5% -transparent white -format png *.jpg

magick .\001.png .\002.png -composite .\003.png -composite out.png

magick *.png -layers merge out.png

1..100 | ForEach-Object { Write-Progress " " -Status $_% -SecondsRemaining (100 - $_) ; Start-Sleep -Milliseconds 100 }
( (Get-Date).Ticks - $a) / 10000000
```

## React

### material

Redux - Toolkit

<https://note.yuuniworks.com/study/redux-toolkit.html>

createEntityAdapter 公式

<https://redux-toolkit.js.org/api/createEntityAdapter>

createEntityAdapter 公式 TS

<https://redux-toolkit.js.org/usage/usage-with-typescript#createentityadapter>

Nested createEntityAdapter example

<https://gist.github.com/markerikson/ad319fd7b04bd4eecdcfe7bf51dce7b1>

Redux how to use createEntityAdapter on a nested property?

<https://stackoverflow.com/questions/64269690/redux-how-to-use-createentityadapter-on-a-nested-property>

Redux Style Guide

<https://redux.js.org/style-guide/>

### lib

form バリデーション

<https://formik.org/>

## TypeScript

型ガードで (string | undifined) を string にする

<https://zenn.dev/lollipop_onl/articles/eoz-ts-non-nullable>

サバイバル TypeScript

<https://typescriptbook.jp/>

### DI

tsyringe

## JavaScript

JavaScript Primer

<https://jsprimer.net/>

JavaScript Promise の本

<https://azu.github.io/promises-book/>

マンガでわかる JavaScript の Promise

<https://www.amazon.co.jp/dp/B09XQ89M9Y>

## Java

DI

<https://ja.wikipedia.org/wiki/Google_Guice>

## winget

winget install -e --id Adobe.Acrobat.Reader.64-bit

```text
winget install -e --id Amazon.Kindle
winget install -e --id Canonical.Ubuntu
winget install -e --id Docker.DockerDesktop
winget install -e --id GIMP.GIMP
winget install -e --id GOMLab.GOMPlayer
winget install -e --id Git.Git
winget install -e --id Google.Chrome
winget install -e --id IrfanSkiljan.IrfanView
winget install -e --id Mozilla.Thunderbird
winget install -e --id Atlassian.Sourcetree
winget install -e --id VideoLAN.VLC
winget install -e --id Twilio.Authy
winget install -e --id ALCPU.CoreTemp
winget install -e --id Google.JapaneseIME
winget install -e --id TheDocumentFoundation.LibreOffice
winget install -e --id Microsoft.PowerShell
winget install -e --id OpenJS.NodeJS.LTS
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id calibre.calibre
winget install -e --id Adobe.Acrobat.Reader.64-bit
```

winget install -e --id Meltytech.Shotcut

## 文章

伝わるデザイン

<https://tsutawarudesign.com/>

## OCW

サイボウズ 2021 年のエンジニア新人研修の講義資料を公開しました

<https://blog.cybozu.io/entry/2021/07/20/100000>

## acrobat 設定

一般
adobe acrobat 起動メッセージ

文書
文書を再び
メニューバー　ツールバー
ツールパネルの現在

一般
タッチモード　常時

## 偶然の科学の累積的優位のやつ

<https://www.princeton.edu/~mjs3/salganik_dodds_watts06_full.pdf>

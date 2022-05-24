# note

## GitHub

```text
https://github.com/NeetworkEngineerSato/note.git
```

```text
NeetworkEngineerSato
```

```text
78856616+NeetworkEngineerSato@users.noreply.github.com
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

createEntityAdapter demo

<https://sandbox-redux-toolkit-create-entity-adapter.vercel.app/>

state 正規化メリット

<https://tech.stmn.co.jp/entry/2021/06/24/163309#:~:text=%E9%A0%86%E5%BA%8F%E3%82%92%E7%A4%BA%E3%81%99-,%E6%AD%A3%E8%A6%8F%E5%8C%96%E3%81%AE%E3%83%A1%E3%83%AA%E3%83%83%E3%83%88,-%E3%83%A1%E3%83%AA%E3%83%83%E3%83%88%E3%81%A8%E3%81%97%E3%81%A6%E3%81%AF>

## TypeScript

### DI

tsyringe

### lib

<https://formik.org/>

## JavaScript

### JavaScript Promise の本

<https://azu.github.io/promises-book/>

## Java

DI

<https://ja.wikipedia.org/wiki/Google_Guice>

## winget

winget install -e --id Adobe.Acrobat.Reader.64-bit

```text
"PackageIdentifier" : "Amazon.Music"
"PackageIdentifier" : "Amazon.Kindle"
"PackageIdentifier" : "Canonical.Ubuntu"
"PackageIdentifier" : "Docker.DockerDesktop"
"PackageIdentifier" : "GIMP.GIMP"
"PackageIdentifier" : "GOMLab.GOMPlayer"
"PackageIdentifier" : "Git.Git"
"PackageIdentifier" : "Google.Chrome"
"PackageIdentifier" : "IrfanSkiljan.IrfanView"
"PackageIdentifier" : "Microsoft.Edge"
"PackageIdentifier" : "Mozilla.Thunderbird"
"PackageIdentifier" : "Meltytech.Shotcut"
"PackageIdentifier" : "Atlassian.Sourcetree"
"PackageIdentifier" : "VideoLAN.VLC"
"PackageIdentifier" : "Twilio.Authy"
"PackageIdentifier" : "ALCPU.CoreTemp"
"PackageIdentifier" : "Google.JapaneseIME"
"PackageIdentifier" : "TheDocumentFoundation.LibreOffice"
"PackageIdentifier" : "Microsoft.VC++2015-2019Redist-x64"
"PackageIdentifier" : "Microsoft.PowerShell"
"PackageIdentifier" : "OpenJS.NodeJS.LTS"
"PackageIdentifier" : "Microsoft.VisualStudioCode"
"PackageIdentifier" : "calibre.calibre"
"PackageIdentifier" : "Adobe.Acrobat.Reader.64-bit"
```

## OCW

サイボウズ 2021 年のエンジニア新人研修の講義資料を公開しました

<https://blog.cybozu.io/entry/2021/07/20/100000>

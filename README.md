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

redux-toolkit.html

<https://note.yuuniworks.com/study/redux-toolkit.html>

createEntityAdapter

<https://redux-toolkit.js.org/api/createEntityAdapter>

## TypeScript

### DI

tsyringe

### lib

<https://formik.org/>

## JavaScript

### JavaScript Promise の本

<https://azu.github.io/promises-book/>

### Java

DI

<https://ja.wikipedia.org/wiki/Google_Guice>

## winget

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

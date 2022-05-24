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

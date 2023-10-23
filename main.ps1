param($v, $a, $out="")
Write-Host "Video: $v"
Write-Host "Audio: $a"
Write-Host "out put: $out"
# echo $args
# echo $out
# echo $video
$name = [System.IO.Path]::GetFileNameWithoutExtension($v)
# echo $name
ffmpeg -i $a -acodec copy "audio.aac" -y
if($out){
    ffmpeg -i $v -i "audio.aac" -c:v copy -c:a copy "$out" 
    echo "output $out"

}else{
    ffmpeg -i $v -i "audio.aac" -c:v copy -c:a copy "$name all.mp4" -y
    echo "output $name all.mp4"
}
Remove-Item "audio.aac"

if($args -eq '-d'){
    Remove-Item "$v"
    Remove-Item "$a"
}


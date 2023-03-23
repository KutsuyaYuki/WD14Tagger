# tagger script by @bdsqlsz

# Train data path
$input_img = "./input" # input images path
$batch_size = 4
$thresh = 0.35

conda activate wd14tagger
python tag_images_by_wd14_tagger.py `
  $input_img `
  --batch_size=$batch_size `
  --thresh=$thresh `
  --caption_extension .txt
  
Write-Output "Tagger finished"
Read-Host | Out-Null ;


rm ov9281-overlay.dts.preprocessed ov9281-overlay.dtbo

cpp -nostdinc -I include -undef -x assembler-with-cpp ov9281-overlay.dts -o ov9281-overlay.dts.preprocessed
dtc -I dts -O dtb ov9281-overlay.dts.preprocessed -o ov9281-overlay.dtbo
dtc -I dtb -O dts ./ov9281-overlay.dtbo -o ov9281-overlay-decompiled.dts

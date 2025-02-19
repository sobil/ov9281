
rm ov9281-overlay.preprocessed.dts ov9281-overlay.dtbo

cpp -nostdinc -I include -undef -x assembler-with-cpp ov9281-overlay.dts -o ov9281-overlay.preprocessed.dts
dtc -I dts -O dtb ov9281-overlay.preprocessed.dts -o ov9281-overlay.dtbo
dtc -I dtb -O dts ./ov9281-overlay.dtbo -o ov9281-overlay-decompiled.dts

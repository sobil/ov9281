
rm ov9281-overlay.preprocessed.dts ov9281-overlay.dtbo
cpp -nostdinc -I include -undef -x assembler-with-cpp ov9281-overlay.dts -o ov9281-overlay.preprocessed.dts


echo "Compiling ov9281-overlay.dts"
dtc -I dts -O dtb ov9281-overlay.preprocessed.dts -o ov9281-overlay.dtbo
echo "Compiled ov9281-overlay.dtbo"
echo "Decompiling ov9281-overlay.dtbo"
dtc -I dtb -O dts ./ov9281-overlay.dtbo -o ov9281-overlay-decompiled.dts

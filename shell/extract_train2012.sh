set -e
if [ ! -e 'train' ]; then
  mkdir train
fi
cd train
tar -xvf ../ILSVRC2012_img_train.tar
find . -name "*.tar" | while read NAME ; do mkdir -p "${NAME%.tar}"; tar -xvf "${NAME}" -C "${NAME%.tar}"; rm -f "${NAME}"; done
cd ..
echo "Done!"


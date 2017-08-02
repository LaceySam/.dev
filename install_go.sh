GO_INSTALL_PATH=$1
if [ -z $1 ]; then
        GO_INSTALL_PATH="/usr/local"
        echo "No 1 arg supplied, assuming you want the install path: ${GO_INSTALL_PATH}"
fi

if [ -d "${GO_INSTALL_PATH}/go" ]
then
        echo "Go already installed."
        exit 0
else
        echo "Go not installed, installing."
fi

GO_VERSION=$2
if [ -z $2 ]; then
        GO_VERSION=1.8.3
        echo "No 2 arg supplied, assuming you want version: ${GO_VERSION}"
fi

ARCH="$(uname -p)"

if [ "$ARCH" = "x86_64" ]; then
        GOARCH="amd64"
else
        GOARCH="386"
fi

GO_FILE="go${GO_VERSION}.linux-${GOARCH}.tar.gz"
GO_URL="https://storage.googleapis.com/golang/${GO_FILE}"

echo "Downloading Go from: $GO_URL"
wget --directory-prefix /tmp/ ${GO_URL}
echo "Download complete"


echo "Extracting Go into ${GO_INSTALL_PATH}"
sudo tar -C ${GO_INSTALL_PATH} -xf /tmp/${GO_FILE}
echo "Go installed!"

#!/bin/bash

# ~~~ >> partially smashed together by ayunami2000 and heavily pulverized and turned into sedimentary code by sdft
if [ -z $(command -v javac) ]; then
    echo "You're missing java"
    exit 1
fi
if [[ ! $(javac -version) == *1.8.* ]]
    echo "You are $(javac -version), not java 8"
    exit 1
fi
if [ -z $(command -v wget) ]; then
    echo "You're missing wget"
    exit 1
fi
if [ -z $(command -v git) ]; then
    echo "You're missing git"
    exit 1
fi

JAVA11="$(command -v javac)"
JAVA11="${JAVA11%?}"
BASEDIR=$($1 || pwd)

rm buildconf.json
mkdir tmp
if [ ! -f tmp/mcp940.zip ]; then
    wget -O tmp/mcp940.zip http://www.modcoderpack.com/files/mcp940.zip
fi
if [ ! -f tmp/1.12.jar ]; then
    wget -O tmp/1.12.jar https://launcher.mojang.com/v1/objects/909823f9c467f9934687f136bc95a667a0d19d7f/client.jar
fi
if [ ! -f tmp/1.12.json ]; then
    wget -O tmp/1.12.json https://piston-meta.mojang.com/v1/packages/fa3085f26ec90ef361352c3076e98aba6781b4b5/1.12.json
fi
buildconf=$(cat << EOF
{
	"repositoryFolder": "BASEDIR",
	"modCoderPack": "tmp/mcp940.zip",
	"minecraftJar": "tmp/1.12.jar",
	"assetsIndex": "tmp/1.12.json",
	"outputDirectory": "tmp/output",
	"temporaryDirectory": "tmp/##EAGLER.TEMP##",
	"ffmpeg": "ffmpeg",
	"productionIndex": "BASEDIR/buildtools/production-index-ext.html",
	"productionFavicon": "BASEDIR/buildtools/production-favicon.png",
	"addScripts": [
		"eaglercraft_opts.js"
	],
	"removeScripts": [],
	"injectInOffline": [],
	"mavenURL": "https://repo1.maven.org/maven2/",
	"mavenLocal": "tmp/teavm",
	"generateOfflineDownload": true,
	"offlineDownloadTemplate": "BASEDIR/sources/setup/workspace_template/javascript/OfflineDownloadTemplate.txt",
	"keepTemporaryFiles": false,
	"writeSourceMap": true,
	"minifying": true
}
EOF
)
echo $buildconf > buildconf_template.json
sed "s#BASEDIR#$BASEDIR#" buildconf_template.json > buildconf.json
"$JAVA8" -Xmx512M -cp "eaglercraft/buildtools/BuildTools.jar" net.lax1dude.eaglercraft.v1_8.buildtools.gui.headless.CompileLatestClientHeadless -y buildconf.json
retVal=$?
rm -rf tmp/##FALCON.TEMP##
rm -rf tmp/teavm
mkdir web
if [ $retVal -eq 0 ]; then
    cp -r tmp/output/* web/
fi
#rm -rf tmp/output #commented out because i want to be safe and not have to recompile again

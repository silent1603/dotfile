@echo off
if exist fonts\ (
    del fonts
)
mkdir fonts
pushd fonts
:: download nerd font icon
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/NerdFontsSymbolsOnly.zip -o icon.zip
tar -xf icon.zip
del icon.zip
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip -o FireCode.zip
tar -xf FireCode.zip
del FireCode.zip
curl -L  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.zip  -o RobotoMono.zip
tar -xf RobotoMono.zip
del RobotoMono.zip

for %%f in (".\*.ttf") do (
    echo "copy %%f to  %systemroot%\fonts"

)
:: downwload font 
popd
call emacs/install.bat
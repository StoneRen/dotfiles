### 函数：判断程序是否存在
function is_installed() {
  which $1 &> /dev/null
  return $?
}


function install_nvim(){
    ## from: https://github.com/StoneRen/dotfiles--/blob/main/install.sh
    DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
    NVIM_CONFIG_DIR=~/.config/nvim
    NVIM_SHARE_DIR=~/.local/share/nvim
    NVIM_STATE_DIR=~/.local/state/nvim

    echo "当前文件所在位置：$DOTFILES_DIR\n"

    ### 判断配置文件是否存在
    if [[ -d $NVIM_CONFIG_DIR ]]; then
    echo -e "配置文件存在，先备份配置文件..."
    mv $NVIM_CONFIG_DIR $NVIM_CONFIG_DIR.bak.$(date +%Y%m%d%H%M%S)
    mkdir -p $NVIM_CONFIG_DIR
    fi
    ln -s $DOTFILES_DIR/nvim/* $NVIM_CONFIG_DIR/


    ### 备份文件
    ### 文件1/3
    if [[ -d $NVIM_SHARE_DIR ]]; then
    echo -e "共享文件存在，先备份共享文件..."
    mv $NVIM_SHARE_DIR $NVIM_SHARE_DIR.bak.$(date +%Y%m%d%H%M%S)
    fi

    

    ### 文件2/3
    if [[ -d $NVIM_STATE_DIR ]]; then
    echo -e "共享文件存在，先备份共享文件..."
    mv $NVIM_STATE_DIR $NVIM_STATE_DIR.bak.$(date +%Y%m%d%H%M%S)
    fi

    ### 文件3/3
   if [[ -d $NVIM_STATE_DIR ]]; then
    echo -e "共享文件存在，先备份共享文件..."
    mv $NVIM_STATE_DIR $NVIM_STATE_DIR.bak.$(date +%Y%m%d%H%M%S)
    fi 

    ### lua-language-server
    if is_installed lua-language-server; then
    echo -e "lua-language-server已经安装，跳过安装"
    else
    echo -e "lua-language-server还没有安装，先安装lua-language-server..."
    brew install lua-language-server
    fi

    ### fzf
    if is_installed fzf; then
    echo -e "fzf已经安装，跳过安装"
    else
    echo -e "fzf还没有安装，先安装fzf..."
    brew install fzf
    fi

    echo "\nnvim相关配置安装完成"
}
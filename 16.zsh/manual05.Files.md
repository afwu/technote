# 5. Files

## 登录时

命令首选读取文件：

    /etc/zsh/zshenv

然后读取:

    $ZDOTDIR/.zshenv

如果 $ZDOTDIR 没有设置，则使用的是 $HOME。

如果是登录shell，执行顺序：

    /etc/zsh/zprofile
    $ZDOTDIR/.zprofile
    $ZDOTDIR/.zlogin

如果是交互shell，执行顺序：

    /etc/zsh/zshrc
    $ZDOTDIR/.zshrc


## 登出时

登出时文件读取顺序：

    $ZDOTDIR/.zlogout
    /etc/zsh/zlogout




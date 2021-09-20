.class public interface abstract Lcom/termux/terminal/TerminalSessionClient;
.super Ljava/lang/Object;
.source "TerminalSessionClient.java"


# virtual methods
.method public abstract logError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract logWarn(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBell(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
.end method

.method public abstract onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onTextChanged(Lcom/termux/terminal/TerminalSession;)V
.end method

.method public abstract onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
.end method

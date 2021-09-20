.class final Lcom/termux/terminal/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "termux"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native close(I)V
.end method

.method public static native createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I
.end method

.method public static native setPtyWindowSize(III)V
.end method

.method public static native waitFor(I)I
.end method

.class public Lcom/termux/app/terminal/io/KeyboardShortcut;
.super Ljava/lang/Object;
.source "KeyboardShortcut.java"


# instance fields
.field public final codePoint:I

.field public final shortcutAction:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/termux/app/terminal/io/KeyboardShortcut;->codePoint:I

    .line 10
    iput p2, p0, Lcom/termux/app/terminal/io/KeyboardShortcut;->shortcutAction:I

    return-void
.end method

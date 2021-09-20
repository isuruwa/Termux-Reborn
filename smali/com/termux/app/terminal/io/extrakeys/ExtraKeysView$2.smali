.class Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$2;
.super Ljava/util/HashMap;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;",
        "Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 147
    sget-object p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$1;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    invoke-direct {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$1;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->FN:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    invoke-direct {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$1;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

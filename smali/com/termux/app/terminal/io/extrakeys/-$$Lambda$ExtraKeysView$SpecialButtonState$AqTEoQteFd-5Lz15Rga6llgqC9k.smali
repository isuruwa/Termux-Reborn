.class public final synthetic Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$SpecialButtonState$AqTEoQteFd-5Lz15Rga6llgqC9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$SpecialButtonState$AqTEoQteFd-5Lz15Rga6llgqC9k;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$SpecialButtonState$AqTEoQteFd-5Lz15Rga6llgqC9k;->f$0:Z

    check-cast p1, Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->lambda$setIsActive$0(ZLandroid/widget/Button;)V

    return-void
.end method

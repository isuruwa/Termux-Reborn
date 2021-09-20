.class public final synthetic Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;->f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;->f$2:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;->f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;->f$2:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$null$2$ExtraKeysView(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    return-void
.end method

.class Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialButtonState"
.end annotation


# instance fields
.field buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field isActive:Z

.field isOn:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isOn:Z

    .line 137
    iput-boolean v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isActive:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->buttons:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$1;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;-><init>()V

    return-void
.end method

.method static synthetic lambda$setIsActive$0(ZLandroid/widget/Button;)V
    .locals 0

    if-eqz p0, :cond_0

    const p0, -0x7f2116

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 142
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method setIsActive(Z)V
    .locals 2

    .line 141
    iput-boolean p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isActive:Z

    .line 142
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->buttons:Ljava/util/List;

    new-instance v1, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$SpecialButtonState$AqTEoQteFd-5Lz15Rga6llgqC9k;

    invoke-direct {v1, p1}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$SpecialButtonState$AqTEoQteFd-5Lz15Rga6llgqC9k;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

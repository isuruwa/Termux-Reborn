.class public final enum Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;
.super Ljava/lang/Enum;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

.field public static final enum ALT:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

.field public static final enum CTRL:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

.field public static final enum FN:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 132
    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    const-string v1, "CTRL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    new-instance v1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    const-string v3, "ALT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    new-instance v3, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    const-string v5, "FN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->FN:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 131
    sput-object v5, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->$VALUES:[Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;
    .locals 1

    .line 131
    const-class v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    return-object p0
.end method

.method public static values()[Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;
    .locals 1

    .line 131
    sget-object v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->$VALUES:[Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    invoke-virtual {v0}, [Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    return-object v0
.end method
